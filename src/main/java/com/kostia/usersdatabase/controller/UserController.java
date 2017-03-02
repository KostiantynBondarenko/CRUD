package com.kostia.usersdatabase.controller;

import com.kostia.usersdatabase.service.UserService;
import com.kostia.usersdatabase.dao.UserDaoImpl;
import com.kostia.usersdatabase.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class UserController {
    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    UserDaoImpl userDao;

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.listUsers());

        return "users";
    }

    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        if (user.getId() == 0) {
            this.userService.addUser(user);
        } else {
            this.userService.updateUser(user);
        }
        return "redirect:/users/1";
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        this.userService.removeUser(id);

        return "redirect:/users/1";
    }

    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserByID(id));
        model.addAttribute("listUsers", this.userService.listUsers());

        return "users";
    }

    @RequestMapping("userdata/{id}")
    public String userData(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", this.userService.getUserByID(id));

        return "userdata";
    }

    @RequestMapping(value = "/search")
    public ModelAndView Search(@RequestParam(value = "searchTerm", required = false) Integer pSearchTerm, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("search");

        mav.addObject("searchResult", userService.getUserByID(pSearchTerm));

        return mav;
    }

    @RequestMapping(value = "/users/{pageid}")
    public ModelAndView edit(@PathVariable int pageid) {
        int total = 10;
        if (pageid == 1) {
        } else {
            pageid = (pageid - 1) * total + 1;
        }
        List<User> list = userDao.getEmployeesByPage(pageid, total);

        return new ModelAndView("/users", "list", list);
    }
}

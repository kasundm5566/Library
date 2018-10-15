package com.kdm.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dinesh on 13/10/18.
 */

@Controller
public class IndexController {
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView indexPage() {
        ModelAndView modelAndView = new ModelAndView("/views/index");
        return modelAndView;
    }

    @RequestMapping(value = "/add-book", method = RequestMethod.GET)
    public ModelAndView addBookPage() {
        ModelAndView modelAndView = new ModelAndView("/views/add-book");
        return modelAndView;
    }

    @RequestMapping(value = "/add-borrower", method = RequestMethod.GET)
    public ModelAndView addBorrowerPage() {
        ModelAndView modelAndView = new ModelAndView("/views/add-borrower");
        return modelAndView;
    }
}

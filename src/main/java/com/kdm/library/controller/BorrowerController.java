package com.kdm.library.controller;

import com.kdm.library.domain.Borrower;
import com.kdm.library.repository.BorrowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by kasun on 10/15/18.
 */
@Controller
@RequestMapping(value = "/borrower")
public class BorrowerController {

    @Autowired
    private BorrowerRepository borrowerRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView addBorrowerPage() {
        ModelAndView modelAndView = new ModelAndView("/views/borrowers");
        List<Borrower> borrowers = borrowerRepository.findAll();
        modelAndView.addObject("borrowers", borrowers);
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public int addBorrower(HttpServletRequest request) {
        Borrower borrower = new Borrower();
        borrower.setFirstName(request.getParameter("borrowerFirstName"));
        borrower.setLastName(request.getParameter("borrowerLastName"));
        borrowerRepository.save(borrower);
        return 1;
    }
}

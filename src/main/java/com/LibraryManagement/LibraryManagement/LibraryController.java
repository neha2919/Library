package com.LibraryManagement.LibraryManagement;

import com.LibraryManagement.LibraryManagement.Entity.Books;
import com.LibraryManagement.LibraryManagement.Entity.User;
import com.LibraryManagement.LibraryManagement.Repository.BookRepository;
import com.LibraryManagement.LibraryManagement.Repository.LibraryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.print.Book;
import java.io.File;

@Controller
public class LibraryController {

    @Autowired
    LibraryRepo libraryRepo;

    @Autowired
    BookRepository booksRepository;

    User user;
    Books book;

    User currentlyLoggedIn = null;

    @RequestMapping("/")
    public String index(){
        return "home";
    }
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/login")
    public String login(){

        currentlyLoggedIn=null;

        return "login";
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    @RequestMapping("/edit")
    public String edit(Model model){

        model.addAttribute("fname",currentlyLoggedIn.getFname());
        model.addAttribute("lname",currentlyLoggedIn.getLname());
        model.addAttribute("age",currentlyLoggedIn.getAge());
        model.addAttribute("email",currentlyLoggedIn.getEmail());

        model.addAttribute("username",currentlyLoggedIn.getUsername());

        return "edit";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("firstname") String fname, @RequestParam("lastname") String lname,
                         @RequestParam("age") String age, @RequestParam("email") String email,
                         @RequestParam("Opassword") String password1, @RequestParam("Npassword") String password2,
                         Model model){

        if(fname.isBlank()){
            fname=currentlyLoggedIn.getFname();
        }
        if(lname.isBlank()){
            lname=currentlyLoggedIn.getLname();
        }
        if(email.isBlank()){
            email=currentlyLoggedIn.getEmail();
        }
        if(age.isBlank()){
            age=currentlyLoggedIn.getAge();
        }
        if(password1.isBlank()){
            password1=currentlyLoggedIn.getPassword();
        }
        if(password2.isBlank()){
            password2=currentlyLoggedIn.getPassword();
        }
        user = new User(fname,lname,age,email,currentlyLoggedIn.getUsername(),password2);
        user.setId(currentlyLoggedIn.getId());

        libraryRepo.save(user);

        currentlyLoggedIn = user;

        model.addAttribute("firstname",currentlyLoggedIn.getFname());
        model.addAttribute("lastname",currentlyLoggedIn.getLname());
        model.addAttribute("username",currentlyLoggedIn.getUsername());

        return "user";
    }
    @RequestMapping("/about")
    public String about(){
        return "about";
    }
    @RequestMapping("/user")
    public String user(@RequestParam("username") String username, @RequestParam("password") String password, Model model){

        for (User user1 : libraryRepo.findAll()) {
            if (user1.getUsername().equalsIgnoreCase(username) && user1.getPassword().equals(password)) {

                currentlyLoggedIn = user1;

                model.addAttribute("firstname",user1.getFname());
                model.addAttribute("lastname",user1.getLname());
                model.addAttribute("username",user1.getUsername());

                return "user";
            }
        }

        return "login";
    }

    @RequestMapping("/create")
    public String create(@RequestParam("firstname") String fname, @RequestParam("lastname") String lname,
                         @RequestParam("age") String age, @RequestParam("email") String email,
                         @RequestParam("username") String username, @RequestParam("password") String password,
                         Model model){

        int flag=0;

        if (!fname.isBlank() && !lname.isBlank() && !age.isBlank() && !email.isBlank() && !username.isBlank()
        && !password.isBlank()){

            for(User user1:libraryRepo.findAll()) {
                if (user1.getUsername().equalsIgnoreCase(username) && (username!="" || username!=" ")) {

                    model.addAttribute("invalid",1);
                    return "register";
                }
            }
            user = new User(fname, lname, age, email, username, password);
            libraryRepo.save(user);
            return "login";
        }

        else if (fname.isBlank() || lname.isBlank() || age.isBlank() || email.isBlank() || username.isBlank()
                || password.isBlank()) {

            model.addAttribute("invalid",2);

        }

        return "register";
    }
    @RequestMapping("/adminLogin")
    public String adminLogin(@RequestParam("username") String adminID, @RequestParam("password") String adminPass,
                             Model model){

        if (adminID.equalsIgnoreCase("neha29") && adminPass.equals("library")){

            String temp="";

            for (String str:libraryRepo.allUsernames()){
                temp+=str+",";
            }

            model.addAttribute("temp",temp);

            return "adminLogin";
        }

        return "admin";

    }

    @RequestMapping("/saveBook")
    public String saveBook(@RequestParam("bookname") String bookName, @RequestParam("filename") File fileName,
                           Model model){

        if(!bookName.isEmpty() && fileName!=null){

            System.out.println("Name: "+bookName +" File: "+fileName);
            book = new Books();
            book.setBookName(bookName);
            book.setBook(fileName);

            booksRepository.save(book);

            return "adminLogin";
        }

        return "adminLogin";
    }
}

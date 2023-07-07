package com.LibraryManagement.LibraryManagement.Entity;

import jakarta.persistence.*;

import java.io.File;

@Entity
public class Books {
   @Id
   @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long bookID;
    @Lob
    private File book;
    private String bookName;

    public Books(){

    }

    public void setBook(File book) {
        this.book = book;
    }

    public File getBook() {
        return book;
    }

    public long getBookID() {
        return bookID;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookName() {
        return bookName;
    }
}

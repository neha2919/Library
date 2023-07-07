package com.LibraryManagement.LibraryManagement.Repository;

import com.LibraryManagement.LibraryManagement.Entity.Books;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Books,Integer> {
}

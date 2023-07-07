package com.LibraryManagement.LibraryManagement.Repository;

import com.LibraryManagement.LibraryManagement.Entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LibraryRepo extends JpaRepository<User, Integer>,LibraryCustomRepository {
}

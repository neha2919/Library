package com.LibraryManagement.LibraryManagement.Repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.util.List;

public class LibraryCustomRepositoryImpl implements LibraryCustomRepository{

    @PersistenceContext
    EntityManager entityManager;

    List<String> usernames;
    @Override
    public List<String> allUsernames() {

        usernames = entityManager.createQuery("Select  fname from User").getResultList();

        return usernames;
    }

}

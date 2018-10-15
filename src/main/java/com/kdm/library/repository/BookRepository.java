package com.kdm.library.repository;

import com.kdm.library.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

/**
 * Created by kasun on 10/15/18.
 */
@Component
public interface BookRepository extends JpaRepository<Book, Integer> {
}

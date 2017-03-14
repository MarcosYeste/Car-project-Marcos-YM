package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.model.Coche;
import com.sun.xml.internal.bind.v2.model.core.ID;

@Repository
public interface CarRepository extends JpaRepository<Coche, ID> {

}

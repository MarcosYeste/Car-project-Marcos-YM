package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Coche;
import com.spring.repository.CarRepository;

@Service
public class CarService {
	@Autowired
	CarRepository carRepository;
	@Transactional
	public List <Coche> getCars(){
		return carRepository.findAll();
	}
	@Transactional
	public Coche saveCar(Coche coche){
		return carRepository.save(coche);
	}

}

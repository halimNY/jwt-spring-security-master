package com.pets.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pets.dao.entity.DogEntity;

//who will give implementation of it  ??? spring data
public interface DogDaoRepository extends CrudRepository<DogEntity,Integer> {
	
	public List<DogEntity> findByColor(String color);

}

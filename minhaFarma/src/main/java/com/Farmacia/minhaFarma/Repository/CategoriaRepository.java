package com.Farmacia.minhaFarma.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Farmacia.minhaFarma.Model.CategoriaModel;

@Repository
public interface CategoriaRepository extends JpaRepository <CategoriaModel, Long> {

	CategoriaModel findAllByCategoriaIgnoreCase(String tarja);
	
	

}

package com.Farmacia.minhaFarma.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Farmacia.minhaFarma.Model.ProdutoModel;

@Repository
public interface ProdutoRepository extends JpaRepository<ProdutoModel, Long>{

	ProdutoModel findAllByProdutoIgnoreCase(String nome);

}

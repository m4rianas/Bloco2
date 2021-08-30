package com.lojaGames.minhaLojaDeGames.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lojaGames.minhaLojaDeGames.Model.ProdutoModel;

@Repository
public interface ProdutoRepository extends JpaRepository <ProdutoModel, Long> {

	Object findAllByMarcaContainingIgnoreCase(String marca);

}

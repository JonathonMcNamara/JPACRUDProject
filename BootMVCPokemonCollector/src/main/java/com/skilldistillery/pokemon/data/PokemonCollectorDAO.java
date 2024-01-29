package com.skilldistillery.pokemon.data;

import java.sql.SQLException;

import com.skilldistillery.pokemon.entities.PokemonCard;

public interface PokemonCollectorDAO {
	PokemonCard findById(int id);
	
	public PokemonCard createCard(PokemonCard card) throws SQLException;
	
	public String deleteCard(int cardId) throws SQLException;
	
	public PokemonCard updateCard(int cardId, PokemonCard card) throws SQLException;
	
}

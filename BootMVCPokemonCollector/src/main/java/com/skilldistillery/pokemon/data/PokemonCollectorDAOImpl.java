package com.skilldistillery.pokemon.data;

import java.sql.SQLException;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.controllers.PokemonCollectorController;
import com.skilldistillery.pokemon.entities.PokemonCard;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class PokemonCollectorDAOImpl implements PokemonCollectorDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public PokemonCard findById(int id) {
		return em.find(PokemonCard.class, id);
	}

	@Override
	public PokemonCard createCard(PokemonCard card) throws SQLException {
		em.persist(card);
		return card;
	}
	
	public String deleteCard(int cardId) {
		PokemonCard foundCard = em.find(PokemonCard.class, cardId);
		if(foundCard == null) {
			System.out.println("PokemonCard unable to be found");
		}
		em.remove(foundCard);
		em.flush();
		return "Card Deleted";
		
	}
	
	public PokemonCard updateCard(int cardId, PokemonCard card) throws SQLException {
		PokemonCard updateCard = em.find(PokemonCard.class, cardId);
		if(updateCard != null) {
			updateCard.setName(card.getName());
			updateCard.setCardnumber(card.getCardnumber());
			updateCard.setCardset(card.getCardset());
			updateCard.setCardtype(card.getCardtype());
			updateCard.setGrade(card.getGrade());
			updateCard.setPrice(card.getPrice());
			
			em.merge(updateCard);
		}
		return updateCard;
	}

}

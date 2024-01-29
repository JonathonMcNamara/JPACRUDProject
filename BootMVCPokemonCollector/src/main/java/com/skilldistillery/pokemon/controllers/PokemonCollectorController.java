package com.skilldistillery.pokemon.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pokemon.data.PokemonCollectorDAO;
import com.skilldistillery.pokemon.entities.PokemonCard;

@Controller
public class PokemonCollectorController {

	@Autowired
	private PokemonCollectorDAO pcDAO;

	@RequestMapping({ "", "/", "home.do" })
	public String index(Model model) {
		return "index";
	}

	@RequestMapping({ "EnterAPokemonCard" })
	public String enterPokemonCard() {
		return "CardForm";
	}

	@GetMapping(path = "getCard.do", params = "cardId")
	public String getCardById(@RequestParam("cardId") int cardId, Model model) {
		PokemonCard card = pcDAO.findById(cardId);
		String viewName = "CardDetails";
		model.addAttribute("card", card);
		return viewName;
	}

	@PostMapping({ "addCard.do" })
	public String addCard(@ModelAttribute("card") PokemonCard card, Model model) throws SQLException {
		PokemonCard newCard = pcDAO.createCard(card);
		String viewName = "CardDetails";
		model.addAttribute("card", newCard);
		return viewName;
	}

	@RequestMapping(path = { "deleteCard.do" }, params = "cardId")
	public String deleteCard(Model model, @RequestParam("cardId") int cardId) throws SQLException {
		PokemonCard card = pcDAO.findById(cardId);
		model.addAttribute("card", card);
		String cardToDelete = pcDAO.deleteCard(cardId);
		String viewName = "CardDeleted";
		return viewName;
	}

	@PostMapping({ "updateCard.do" })
	public String updateCard(@ModelAttribute("cardId") int cardId, Model model) {
		PokemonCard updateCard = pcDAO.findById(cardId);
		model.addAttribute("card", updateCard);
		String viewName = "CardForm";
		return viewName;
	}

	@PostMapping({ "saveCard.do" })
	public String updateCard(@RequestParam("cardId") int cardId, PokemonCard card, Model model) throws SQLException {
		PokemonCard updatedcard = pcDAO.updateCard(cardId, card);
		model.addAttribute("card", updatedcard);
		model.addAttribute("cardId", cardId);
		return "CardDetails";
	}

}

package com.skilldistillery.pokemon.entities;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "pokemon_collection")
public class PokemonCard {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String cardset;

//		LOOK INTO DOING AN ENUM FOR THIS AT THE END
	private String cardtype;

	private String cardnumber;

	private String grade;

	private Double price;

	public PokemonCard() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardset() {
		return cardset;
	}

	public void setCardset(String cardset) {
		this.cardset = cardset;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "PokemonCard [id=" + id + ", name=" + name + ", cardset=" + cardset + ", cardtype=" + cardtype
				+ ", cardnumber=" + cardnumber + ", grade=" + grade + ", price=" + price + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(cardnumber, cardset, cardtype, grade, id, name, price);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PokemonCard other = (PokemonCard) obj;
		return Objects.equals(cardnumber, other.cardnumber) && Objects.equals(cardset, other.cardset)
				&& Objects.equals(cardtype, other.cardtype) && Objects.equals(grade, other.grade) && id == other.id
				&& Objects.equals(name, other.name) && Objects.equals(price, other.price);
	}
	
	

}

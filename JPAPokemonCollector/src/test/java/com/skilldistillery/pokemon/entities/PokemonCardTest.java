package com.skilldistillery.pokemon.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;


class PokemonCardTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private PokemonCard collection;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPokemonCollector");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		collection = em.find(PokemonCard.class, 3);
	}

	@AfterEach
	void tearDown() throws Exception {
		collection = null;
		em.close();
	}

	@Test
	void test_name_entity_mapping() {
		assertNotNull(collection);
		assertEquals("Roaring Moon ex", collection.getName());
	}

	@Test
	void test_cardset_entity_mapping() {
		assertNotNull(collection);
		assertEquals("Paradox Rift", collection.getCardset());

	}

	@Test
	void test_cardnumber_entity_mapping() {
		assertNotNull(collection);
		assertEquals("251/182", collection.getCardnumber());
		

	}

	@Test
	void test_cardtype_entity_mapping() {
		assertNotNull(collection);
		assertEquals("SIR", collection.getCardtype());

	}

	@Test
	void test_grading_entity_mapping() {
		assertNotNull(collection);
		assertEquals("Ungraded", collection.getGrade());

	}

	@Test
	void test_price_entity_mapping() {
		assertNotNull(collection);
		assertEquals(75.00, collection.getPrice());

	}

}

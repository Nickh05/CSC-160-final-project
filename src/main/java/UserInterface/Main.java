package UserInterface;

import DataAccess.ConnectDB;
import DataAccess.PokemonDataAccess;
import DataObjects.Pokemon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Main{
    public static void main(String[] args) throws SQLException {

        PokemonDataAccess pokemonDataAccess = new PokemonDataAccess();

//        List<Pokemon> pokemons = new ArrayList<>();
//        pokemons = pokemonDataAccess.getAllPokemon();
//
//        for (Pokemon pokemon: pokemons) {
//            System.out.println(pokemon.getPokemonName());
//            System.out.println(pokemon.getPokemonDescription());
//        }
//        System.out.println(pokemonDataAccess.getPokemonStats(1).specialAttack);
    }
}
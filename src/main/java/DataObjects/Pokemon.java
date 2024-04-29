package DataObjects;

public class Pokemon {
    public int pokemonId;
    public String pokemonName;
    public String pokemonDescription;

    public Pokemon(int pokemonId, String pokemonName, String pokemonDescription) {
        this.pokemonId = pokemonId;
        this.pokemonName = pokemonName;
        this.pokemonDescription = pokemonDescription;
    }

    public int getPokemonId() {
        return pokemonId;
    }

    public void setPokemonId(int pokemonId) {
        this.pokemonId = pokemonId;
    }

    public String getPokemonName() {
        return pokemonName;
    }

    public void setPokemonName(String pokemonName) {
        this.pokemonName = pokemonName;
    }

    public String getPokemonDescription() {
        return pokemonDescription;
    }

    public void setPokemonDescription(String pokemonDescription) {
        this.pokemonDescription = pokemonDescription;
    }
}

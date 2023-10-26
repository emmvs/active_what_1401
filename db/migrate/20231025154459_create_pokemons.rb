class AddAttributesToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :attack, :string
    add_column :pokemons, :level, :integer, default: 0
  end
end

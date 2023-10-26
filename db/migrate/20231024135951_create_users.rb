class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string    :name
      t.string    :location
      t.timestamps # adds both the created_at and updated_at
    end
  end
end

class CreateFactoids < ActiveRecord::Migration[5.0]
  def change
    create_table :factoids do |t|
      t.references :user, index: { name: 'index_factoids_on_user_id'}
      t.references :game, index: { name: 'index_factoids_on_game_id'}
      t.string :image_url
      t.text :fact_text

      t.timestamps
    end
  end
end

class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.references :user, index: { name: 'index_guesses_on_user_id' }
      t.references :game, index: { name: 'index_guesses_on_game_id' }
      t.integer    :nd_score
      t.integer    :opp_score
      t.string     :bonus

      t.timestamps
    end
  end
end

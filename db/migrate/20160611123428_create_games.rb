class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.datetime  :game_time
      t.string    :opponent
      t.integer   :nd_score
      t.integer   :opp_score
      t.string    :bonus_question

      t.timestamps
    end
  end
end

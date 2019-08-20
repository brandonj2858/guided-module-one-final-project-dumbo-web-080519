class CreateGames < ActiveRecord::Migration[5.0]

  def change
    create_table :games do |t|
      t.integer :week_id
      t.string :name
      t.string :description
      t.string :date
    end
  end

end

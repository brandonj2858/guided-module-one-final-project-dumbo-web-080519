class CreateWeeks < ActiveRecord::Migration[5.0]

  def change
    create_table :weeks do |t|
      t.string :name
    end
  end

end

class DeleteDescription < ActiveRecord::Migration[5.0]

  def change
    remove_column :games, :description
  end

end

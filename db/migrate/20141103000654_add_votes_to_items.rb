class AddVotesToItems < ActiveRecord::Migration
  def change
    add_column :items, :votes, :integer
  end
end

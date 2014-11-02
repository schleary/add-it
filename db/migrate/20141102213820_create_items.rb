class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :author

      t.timestamps
    end
  end
end

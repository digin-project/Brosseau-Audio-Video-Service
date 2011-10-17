class CreateNewProducts < ActiveRecord::Migration
  def self.up
    create_table :new_products do |t|
      t.string :titre
      t.text :texte
      t.string :Image

      t.timestamps
    end
  end

  def self.down
    drop_table :new_products
  end
end

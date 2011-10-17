class CreateAdvices < ActiveRecord::Migration
  def self.up
    create_table :advices do |t|
      t.string :titre
      t.text :texte
      t.string :Image

      t.timestamps
    end
  end

  def self.down
    drop_table :advices
  end
end

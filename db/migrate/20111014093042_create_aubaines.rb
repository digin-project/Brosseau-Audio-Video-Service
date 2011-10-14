class CreateAubaines < ActiveRecord::Migration
  def self.up
    create_table :aubaines do |t|
      t.string :titre
      t.text :texte
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :aubaines
  end
end

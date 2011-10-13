class CreateActus < ActiveRecord::Migration
  def self.up
    create_table :actus do |t|
      t.string :texte

      t.timestamps
    end
  end

  def self.down
    drop_table :actus
  end
end

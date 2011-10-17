class CreateActusEns < ActiveRecord::Migration
  def self.up
    create_table :actus_ens do |t|
      t.string :texte

      t.timestamps
    end
  end

  def self.down
    drop_table :actus_ens
  end
end

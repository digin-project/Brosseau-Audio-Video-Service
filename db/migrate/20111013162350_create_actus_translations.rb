class CreateActusTranslations < ActiveRecord::Migration
  def self.up 
    create_table(:actus_translations) do |t|
      t.references :actus
      t.string :locale

      t.string :texte

      t.timestamps
    end
    add_index :actus_translations, [:actus_id, :locale], :unique => true
  end

  def self.down
    drop_table :actus_translations
  end
end


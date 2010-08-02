class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.text :text
      t.text :text_translated
      t.integer :language_from_id
      t.integer :language_to_id
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :translations
  end
end

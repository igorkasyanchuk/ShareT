class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :name
      t.string :short_name
    end
    Language.create(:name => 'English', :short_name => 'en')
    Language.create(:name => 'Spanish', :short_name => 'sp')
    Language.create(:name => 'Russian', :short_name => 'ru')
    Language.create(:name => 'Ukrainian', :short_name => 'uk')
  end

  def self.down
    drop_table :languages
  end
end

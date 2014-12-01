class AddXmlToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :xml, :text
  end
end

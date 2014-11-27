class AddCharactersToUser < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end

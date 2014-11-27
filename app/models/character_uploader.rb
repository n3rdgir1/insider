require 'nokogiri'

require_relative 'character'

class CharacterUploader
  def self.create(character_sheet, user)
    begin
      new(Nokogiri::XML(character_sheet), user).message
    rescue
      "Please upload a valid .xml or .dnd4e file"
    end
  end

  attr_accessor :character, :user

  def initialize(doc, user)
    @user = user
    create_character doc.xpath("//CharacterSheet/Details").first
  end

  def message
    "Successfully uploaded #{character.name}"
  end

  def create_character(details)
    name = details.xpath('//name').text.strip

    @character = Character.create(name: name, user_id: user.id)
  end
end

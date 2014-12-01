require 'nokogiri'

require_relative 'character'

class CharacterUploader
  def self.create(character_sheet, user)
    begin
      new(character_sheet, user).message
    rescue
      "Please upload a valid .xml or .dnd4e file"
    end
  end

  attr_accessor :character, :user

  def initialize(character_sheet, user)
    @user = user
    doc = Nokogiri::XML(character_sheet)
    details = character_details doc.xpath("//CharacterSheet/Details").first
    create_character doc.to_s, details
  end

  def message
    "Successfully uploaded #{character.name}"
  end

  def character_details(xml)
    name = xml.xpath('//name').text.strip

    { name: name }
  end

  def create_character(xml, details)
    @character = Character.create( details.merge( user_id: user.id ) )
    character.update_attribute(:xml, xml)
  end
end

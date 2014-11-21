require 'nokogiri'

require_relative 'character'

class CharacterUploader
  def self.create(character_sheet)
    new Nokogiri::XML(character_sheet)
  end

  def initialize(doc)
    create_character doc.xpath("//CharacterSheet/Details").first
  end

  def create_character(details)
    name = details.xpath('//name').text.strip

    Character.create(name: name)
  end
end

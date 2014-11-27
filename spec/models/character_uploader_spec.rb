require_relative '../../app/models/character_uploader'
require 'tempfile'
require 'ostruct'

describe CharacterUploader do
  let(:user) { double :user, id: id, save: nil }
  let(:id) { double :id }

  describe 'creating a character with a valid file' do
    let(:character_sheet) { File.open(File.join(File.dirname(__FILE__), '../', '../', 'fixtures', 'shara.dnd4e')) }
    let(:character) { double :character_sheet, name: 'Shara' }

    subject { described_class.create(character_sheet, user) }

    before do
      Character.stub(:create).and_return(character)
    end

    it 'returns a success message' do
      subject.should == "Successfully uploaded #{character.name}"
    end

    it 'creates a chacter with a name for that user' do
      Character.should_receive(:create).with(name: "Shara", user_id: id)

      subject
    end
  end

  describe 'creating a character with an invalid file' do
    let(:character_sheet) { File.open(Tempfile.new('foo'))}

    subject { described_class.create(character_sheet, user) }

    it 'returns an error message' do
      subject.should == 'Please upload a valid .xml or .dnd4e file'
    end
  end
end

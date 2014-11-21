require_relative '../../app/models/character_uploader'
require 'tempfile'

describe CharacterUploader do
  describe 'creating a character with a valid file' do
    let(:character_sheet) { File.open(File.join(File.dirname(__FILE__), '../', '../', 'fixtures', 'shara.dnd4e')) }
    let(:character) { { name: 'Shara' } }

    before do
      Character.stub(:create).and_return(character)
    end

    it 'returns a success message' do
      described_class.create(character_sheet).should == 'Successfully uploaded character'
    end

    it 'creates a chacter with a name' do
      Character.should_receive(:create).with(name: "Shara")

      described_class.create(character_sheet)
    end
  end

  describe 'creating a character with an invalid file' do
    let(:character_sheet) { File.open(Tempfile.new('foo'))}

    it 'returns an error message' do
      described_class.create(character_sheet).should == 'Please upload a valid .xml or .dnd4e file'
    end
  end
end

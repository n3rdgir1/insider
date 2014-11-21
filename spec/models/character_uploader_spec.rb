require_relative '../../app/models/character_uploader'

describe CharacterUploader do
  describe 'creating a character' do
    let(:character_sheet) { File.open(File.join(File.dirname(__FILE__), '../', '../' 'fixtures', 'shara.dnd4e')) }

    it 'creates a chacter with a name' do
      Character.should_receive(:create).with(name: "Shara")

      described_class.create(character_sheet)
    end
  end
end

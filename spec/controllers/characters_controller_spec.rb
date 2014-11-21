require_relative '../../app/controllers/characters_controller'

describe CharactersController do
  let(:params) { { character: character } }
  let(:character) { {} }

  before do
    subject.stub(params: params, character_params: character )
  end

  it 'exposes the  character' do
    subject.should respond_to(:character)
  end

  describe 'create' do
    let(:character) { { character_sheet: character_sheet } }
    let(:character_sheet) { double 'character sheet' }

    before do
      CharacterUploader.stub(:create)
      subject.stub(:render)
    end

    it 'creates the character in the character uploader' do
      CharacterUploader.should_receive(:create).with(character_sheet)

      subject.create
    end

    it 'renders the index' do
      subject.should_receive(:render).with(:index)

      subject.create
    end
  end
end

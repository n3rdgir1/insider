require_relative '../../app/controllers/characters_controller'

describe CharactersController do
  let(:params) { {} }

  before do
    subject.stub(params: params)
  end

  it 'exposes the  character' do
    subject.should respond_to(:character)
  end

  describe 'create' do
    let(:params) { { character: { character_sheet: character_sheet } } }
    let(:character_sheet) { double 'character sheet' }

    it 'creates the character in the character uploader' do
      CharacterUploader.should_receive(:create).with(character_sheet)

      subject.create
    end

    it 'renders the index'
  end
end

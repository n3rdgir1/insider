require_relative '../../app/controllers/characters_controller'

describe CharactersController do
  let(:params) { { character: character } }
  let(:character) { {} }
  let(:request) { double flash: {} }

  before do
    subject.stub(params: params, character_params: character, request: request )
  end

  it 'exposes the  character' do
    subject.should respond_to(:character)
  end

  describe 'create' do
    let(:character) { { character_sheet: character_sheet } }
    let(:character_sheet) { double 'character sheet' }
    let(:message) { double }

    before do
      CharacterUploader.stub(:create) { message }
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

    it 'renders the flash' do
      subject.create

      request.flash[:notice].should == message
    end
  end
end

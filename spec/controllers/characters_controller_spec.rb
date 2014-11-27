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

  it 'exposes the  characters' do
    subject.should respond_to(:characters)
  end

  describe 'create' do
    let(:character) { { character_sheet: character_sheet } }
    let(:character_sheet) { double 'character sheet' }
    let(:message) { double }
    let(:current_user) { double }

    before do
      CharacterUploader.stub(:create) { message }
      subject.stub(render: nil, current_user: current_user)
    end

    it 'creates the character in the character uploader' do
      CharacterUploader.should_receive(:create).with(character_sheet, current_user)

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

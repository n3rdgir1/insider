require_relative '../../app/controllers/characters_controller'

describe CharactersController do
  let(:params) { {} }

  before do
    subject.stub(params: params)
  end

  it 'exposes the  character' do
    subject.should respond_to(:character)
  end
end

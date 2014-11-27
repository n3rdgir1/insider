require_relative 'application_controller'
require_relative '../models/character'
require_relative '../models/character_uploader'
require 'decent_exposure'

class CharactersController < ApplicationController
  expose(:character)
  expose(:characters) { current_user.characters }

  def create
    flash[:notice] = CharacterUploader.create(character_params[:character_sheet], current_user)
    render :index
  end

  private
    def character_params
      params.require(:character).permit(:character_sheet)
    end
end

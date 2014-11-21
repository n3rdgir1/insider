require_relative 'application_controller'
require_relative '../models/character'
require_relative '../models/character_uploader'
require 'decent_exposure'

class CharactersController < ApplicationController
  expose(:character)

  def create
    CharacterUploader.create(params[:character][:character_sheet])
  end
end

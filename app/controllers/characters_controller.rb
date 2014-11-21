require_relative 'application_controller'
require_relative '../models/character'
require 'decent_exposure'

class CharactersController < ApplicationController
  expose(:character)
end

class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]

  # GET /welcomes
  # GET /welcomes.json
  def index
  end

  # GET /welcomes/1
  # GET /welcomes/1.json
  def show
  end

  # GET /welcomes/new
  def new
  end

  # GET /welcomes/1/edit
  def edit
  end

  # POST /welcomes
  # POST /welcomes.json
  def create
  end

  # PATCH/PUT /welcomes/1
  # PATCH/PUT /welcomes/1.json
  def update
  end

  # DELETE /welcomes/1
  # DELETE /welcomes/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcome_params
    end
end

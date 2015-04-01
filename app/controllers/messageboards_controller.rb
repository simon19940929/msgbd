class MessageboardsController < ApplicationController
  before_action :set_messageboard, only: [:show, :edit, :update, :destroy]

  # GET /messageboards
  # GET /messageboards.json
  def index
    @messageboards = Messageboard.all
  end

  # GET /messageboards/1
  # GET /messageboards/1.json
  def show
  end

  # GET /messageboards/new
  def new
    @messageboard = Messageboard.new
  end

  # GET /messageboards/1/edit
  def edit
  end

  # POST /messageboards
  # POST /messageboards.json
  def create
    @messageboard = Messageboard.new(messageboard_params)

    respond_to do |format|
      if @messageboard.save
        format.html { redirect_to @messageboard, notice: 'Messageboard was successfully created.' }
        format.json { render :show, status: :created, location: @messageboard }
      else
        format.html { render :new }
        format.json { render json: @messageboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messageboards/1
  # PATCH/PUT /messageboards/1.json
  def update
    respond_to do |format|
      if @messageboard.update(messageboard_params)
        format.html { redirect_to @messageboard, notice: 'Messageboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @messageboard }
      else
        format.html { render :edit }
        format.json { render json: @messageboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messageboards/1
  # DELETE /messageboards/1.json
  def destroy
    @messageboard.destroy
    respond_to do |format|
      format.html { redirect_to messageboards_url, notice: 'Messageboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messageboard
      @messageboard = Messageboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messageboard_params
      params.require(:messageboard).permit(:title, :description)
    end
end

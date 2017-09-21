class ChallengeboardsController < ApplicationController
  before_action :set_challengeboard, only: [:show, :edit, :update, :destroy]

  # GET /challengeboards
  # GET /challengeboards.json
  def index
    @challengeboards = Challengeboard.all
  end

  # GET /challengeboards/1
  # GET /challengeboards/1.json
  def show
  end

  # GET /challengeboards/new
  def new
    @challengeboard = Challengeboard.new
  end

  # GET /challengeboards/1/edit
  def edit
  end

  # POST /challengeboards
  # POST /challengeboards.json
  def create
    @challengeboard = Challengeboard.new(challengeboard_params)

    respond_to do |format|
      if @challengeboard.save
        format.html { redirect_to @challengeboard, notice: 'Challengeboard was successfully created.' }
        format.json { render :show, status: :created, location: @challengeboard }
      else
        format.html { render :new }
        format.json { render json: @challengeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challengeboards/1
  # PATCH/PUT /challengeboards/1.json
  def update
    respond_to do |format|
      if @challengeboard.update(challengeboard_params)
        format.html { redirect_to @challengeboard, notice: 'Challengeboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @challengeboard }
      else
        format.html { render :edit }
        format.json { render json: @challengeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challengeboards/1
  # DELETE /challengeboards/1.json
  def destroy
    @challengeboard.destroy
    respond_to do |format|
      format.html { redirect_to challengeboards_url, notice: 'Challengeboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challengeboard
      @challengeboard = Challengeboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challengeboard_params
      params.require(:challengeboard).permit(:name)
    end
end

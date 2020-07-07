class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  def index
    # @scores = Score.all
    @aztec = Score.where(challengeboard_id: 3).order(:time).limit(5)
    @outlaw = Score.where(challengeboard_id: 1).order(:time).limit(5)
    @tokyo = Score.where(challengeboard_id: 2).order(:time).limit(5)
    @voyager = Score.where(challengeboard_id: 4).order(:time).limit(5)

  end

  def mansion
    @aztec = Score.where(challengeboard_id: 3).order(:time).limit(5)
    @outlaw = Score.where(challengeboard_id: 1).order(:time).limit(5)
    @tokyo = Score.where(challengeboard_id: 2).order(:time).limit(5)
    @voyager = Score.where(challengeboard_id: 4).order(:time).limit(5)
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
    # @photo = @score.photos.new
    render "/photos/_form.html.erb"
  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(score_params)
    @score.update(name: score_params[:name], time: score_params[:time], photo: score_params[:photo])
    @score.errors.full_messages
    redirect_to scores_path
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:name, :time, :challengeboard_id, :photo)
    end
end

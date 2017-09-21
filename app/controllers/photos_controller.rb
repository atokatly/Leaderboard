class PhotosController < ApplicationController
  def index
    @score = Score.new

    render "/scores/_form"
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def delete

  end

  def photo_params
    params.require(:photo).permit(:photo, :score_id)
  end
end

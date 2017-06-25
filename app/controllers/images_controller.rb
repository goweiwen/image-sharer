class ImagesController < ApplicationController
  def index
    @image = Image.new
  end

  def create
    puts image_params
    @image = Image.new(image_params)
    @image.user_id = current_user["id"]

    if @image.save
      redirect_to root_url
    else
      puts @image.errors.full_messages
      render :index
    end
  end

  private

  def image_params
    params.require(:image).permit(:src)
  end
end

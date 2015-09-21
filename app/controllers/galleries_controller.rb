class GalleriesController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
  # TO CREATE A NEW GALLERY
  # MAKE A NEW METHOD WITH THE GALLERY TITLE EX.
  #
  # def kenzieki_8_18_15
  #
  # end
  #
  # THEN INSERT HTTP BASIC AUTHENTICATION WITH USERNAME AND PASSWORD EX.
  # 
  # def kenzieki_8_18_15
  #   authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
  #     username == 'user' && password == 'pass'
  #   end
  # end
  #
  # MAKE SURE CLIENT ZIP FILE IS IN public FOLDER

  def greek_festival_8_29_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username == 'greekfestival' && password == 'D6Y2slBEVk'
    end
  end

  def montage_9_2_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username == 'montage' && password == 'LOjJ7A2IiV'
    end
  end

  def eightnlofts_9_10_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username == '8nlofts' && password == 'BrNNtrmfff'
    end
  end

  def carla_seravalli_senior_9_12_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username == 'carlaseravalli' && password == 'QM6pSXk4db'
    end
  end

  def brennan_roberson_senior_9_14_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username == 'brennanroberson' && password == '8M657a9tPq'
    end
  end

  def chelsea_stewart_senior_9_19_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username = 'chelseastewart' && password = 'bFYrp8Bek6'
    end
  end

  def floss_9_21_15
    authenticate_or_request_with_http_basic('Client Galleries') do |username, password|
      username = 'floss' && password = 'L0nTjFs1zJ'
    end
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to @gallery
    else
      render 'new'
    end
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(gallery_params)
      redirect_to @gallery
    else
      render 'edit'
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def destroy
    Gallery.find(params[:id]).destroy
    redirect_to root_url
  end

  def index
    @galleries = Gallery.all
  end

  private
    def gallery_params
      params.require(:gallery).permit(:name, :unlock_key, :images)
    end

    def authenticate
      authenticate_or_request_with_http_basic('Admin') do |username, password|
        username == 'admin' && password == 'Convert22.'
      end
    end
end

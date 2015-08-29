class GalleriesController < ApplicationController
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]

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

  def edit
    @gallery = Gallery.find(params[:id])
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
    @gallery = Gallery.all
  end

  private 

    def gallery_params
      params.require(:gallery).permit(:name, :unlock_key, :images)
    end

    def admin_user
      unless current_user.admin?
        redirect_to root_url
      end
    end

end

class VideosController < ApplicationController
  def index
    @videos = Video.paginate(page: params[:page])
  end

  def show
    @video = Video.find_by_id(params[:id])
    @users = @video.users.paginate(page: params[:page])
  end
end
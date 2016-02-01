class VideosController < ApplicationController
  def index
    @resources = Video.paginate(page: params[:page])
    @controller = "videos"

    render template: "/resources/index", locals: { resources: @resources, controller: "videos" }
  end

  def show
  end
end
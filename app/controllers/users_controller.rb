class UsersController < ApplicationController
  def index
    @resources = User.paginate(page: params[:page])
    @controller = "users"

    render template: "/resources/index", locals: { resources: @resources, controller: "users" }
  end

  def show
  end
end
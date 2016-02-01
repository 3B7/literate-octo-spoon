class DashboardController < ApplicationController
  def index
    @histogram = Video.all.collect{|v| [v.title, v.users.uniq.size]}
    @video_titles = @histogram.collect{|a,b| a}
    @num_of_users = @histogram.collect{|a,b| b}
  end
end
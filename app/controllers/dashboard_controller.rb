class DashboardController < ApplicationController
  def index
    @video_titles = Video.all.map(&:title)
    @num_of_users = Video.all.collect{|v| $redis.get("fullscreen:video:#{v.id}") }.map(&:to_i)
  end
end
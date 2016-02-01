class User < ActiveRecord::Base
  has_many :users_video
  has_many :videos, :through => :users_video

  #pagination
  self.per_page = 50
end

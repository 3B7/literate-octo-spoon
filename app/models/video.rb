class Video < ActiveRecord::Base
  has_many :users_video
  has_many :users, :through => :users_video
  
  #pagination
  self.per_page = 50

  after_save :redis_sync

  def user_count
    users.uniq.size
  end

  private

    def redis_sync
      $redis.set("fullscreen:video:#{self.id}", self.user_count)
    end
end

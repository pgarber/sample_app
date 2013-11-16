class Micropost < ActiveRecord::Base
  belongs_to :user	
  default_scop -> { order('created_at DESC') }
  validates :user_id, presence: true
end

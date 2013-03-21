class Relationship < ActiveRecord::Base
  attr_accessible :followed_id

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates :follower_id, presence: true
  validates :followed_id, presence: true
  #define belongs_to relationship
  #rails infers the names of the foreign keys from
  #the corresponding symbols(follower_id from :follower,
  # and followed_id from :followed). Since there is neither
  # a followed or a follower model, we supply the class name
  #user
end

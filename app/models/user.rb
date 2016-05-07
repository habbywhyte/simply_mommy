class User < ActiveRecord::Base
# here you can add associations so you can do things like:
#  user.posts, user.comments, etc..
  has_secure_password
  validates :email, presence: true, uniqueness: true
end

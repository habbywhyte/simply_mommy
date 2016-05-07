class Comment < ActiveRecord::Base
  # if you want to associate comments and posts to belong to a user, you would configure that here as well.
  belongs_to :post
end

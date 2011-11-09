class Post < ActiveRecord::Base

  belongs_to :user

  scope :all_public, where(:is_public => true)
end

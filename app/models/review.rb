class Review < ActiveRecord::Base
  
  belongs_to :wine
  belongs_to :user
  has_many :images

end

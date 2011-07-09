class Wine < ActiveRecord::Base
  
  belongs_to :producer
  has_and_belongs_to_many :grapes
  has_many :reviews

end

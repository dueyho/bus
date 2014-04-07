class Line < ActiveRecord::Base
  validates :color, :presence => true
  has_many :stops
end

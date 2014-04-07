class Stop < ActiveRecord::Base
  validates :time, :presence => true
  validates :bus, :presence => true
  validates :line_id, :presence => true
  validates :station_id, :presence => true

  belongs_to :station
  belongs_to :line
end

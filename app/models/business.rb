class Business < ActiveRecord::Base
  belongs_to :industry
  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true
end

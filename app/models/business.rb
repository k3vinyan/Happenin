class Business < ActiveRecord::Base
  has_many :happenings
  accepts_nested_attributes_for :happenings
end

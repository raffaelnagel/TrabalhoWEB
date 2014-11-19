class Member < ActiveRecord::Base
  has_one:role
  accepts_nested_attributes_for :role
end

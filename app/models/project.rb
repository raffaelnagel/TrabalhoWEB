class Project < ActiveRecord::Base
  belongs_to :member_project
  belongs_to :user
end

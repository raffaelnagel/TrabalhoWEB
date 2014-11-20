class Project < ActiveRecord::Base
  belongs_to :manproject
  belongs_to :user
end

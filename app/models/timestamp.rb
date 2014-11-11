class Timestamp < ActiveRecord::Base
belongs_to :user

# ensure that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present and at least 5 chars long
  validates :project, length: { minimum: 5 }, presence: true

  
end

class MemberProject < ActiveRecord::Base
  belongs_to :members
  belongs_to :projects
end

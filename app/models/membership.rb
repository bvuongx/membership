class Membership < ActiveRecord::Base
  attr_accessible :club_id, :member_id
  belongs_to :club
  belongs_to :member
end

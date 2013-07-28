class Member < ActiveRecord::Base
attr_accessible :name

accepts_nested_attributes_for :clubs

has_many :memberships
has_many :clubs, :through => :memberships
end

class Activity < ActiveRecord::Base
  belongs_to :activityType

  #attr_accessible :description, :name
end

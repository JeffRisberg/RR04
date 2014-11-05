class ActivityEvent < ActiveRecord::Base
  belongs_to :userActivity

  #attr_accessible :amount, :journalEntry
end

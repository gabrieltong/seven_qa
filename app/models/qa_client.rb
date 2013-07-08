class QaClient < ActiveRecord::Base
  unloadable
  has_and_belongs_to_many :qa_activities  
end

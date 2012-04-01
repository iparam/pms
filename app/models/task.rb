class Task < ActiveRecord::Base
 belongs_to :milestone
 belongs_to :user
 STATUS = ["not_started","in_progress","completed"]
 validates_inclusion_of :status,:in =>STATUS
end

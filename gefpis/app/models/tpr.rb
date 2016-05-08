class Tpr < ActiveRecord::Base
	self.table_name = "tpr_t"

	belongs_to :tutee
	belongs_to :member
	belongs_to :lesson
	
end

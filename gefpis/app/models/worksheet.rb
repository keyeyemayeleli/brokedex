class Worksheet < ActiveRecord::Base
	self.table_name = "worksheet_t"

	belongs_to :lesson
	belongs_to :tutee
	belongs_to :member

end

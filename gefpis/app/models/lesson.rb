class Lesson < ActiveRecord::Base
	self.table_name = "module_t"

	belongs_to :member
	has_one :worksheet
	has_many :tprs
	
end

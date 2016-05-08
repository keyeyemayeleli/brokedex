class Tutee < ActiveRecord::Base
	self.table_name = "tutee_t"

	has_many :worksheets
	has_many :tprs

end

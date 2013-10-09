class Budget < ActiveRecord::Base

	#add before_save to check for transaction type and assign correct image

	before_save :check_type


	def check_type

		if trans_type == "withdraw"
			self.img = "glyphicons_212_down_arrow.png"
		else
            self.img = "glyphicons_213_up_arrow.png"
		end
	end
end

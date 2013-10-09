class Budget < ActiveRecord::Base

	#add before_save to check for transaction type and assign correct image

	before_save :check_type

	before_save :amount_type


	def check_type

		if trans_type == "withdraw"
			self.img = "glyphicons_212_down_arrow.png"
		else
            self.img = "glyphicons_213_up_arrow.png"
		end
	end

	def amount_type

			if trans_type == "deposit"

				self.debit = amount
				
                if debit >= 1
				self.amount = 0;
			end


		
	        
		end
		
	end
end

class Transaction < ActiveRecord::Base

    #query implemented class method
	#def self.recent
	#	where('trans_type=? AND created_at > ?','Desposit',2.days.ago)
	#end

	#scopes

	scope :recent, ->{where('trans_type = ? AND cleared =?','Withdrawel',true)}



	public

	def excessive

		if amount > 1400.00 && trans_type == 'Withdrawel'
			return true
		end

	end











#class end
end

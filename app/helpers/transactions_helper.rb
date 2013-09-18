module TransactionsHelper

	def add_debits(n)
		count = []

		
	
		n.each{|x|count << x.to_i}

		return count.sum
	end
end

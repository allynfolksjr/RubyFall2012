class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end
end

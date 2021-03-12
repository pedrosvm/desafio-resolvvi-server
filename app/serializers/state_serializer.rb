class StateSerializer
	FIELDS = %w(id name uf).freeze
	def initialize (relation)
		@relation = relation
	end

	def serialize
		@relation.as_json(only: StateSerializer::FIELDS)
	end
end
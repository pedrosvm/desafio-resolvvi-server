class RequestSerializer
	FIELDS = %w(id description value).freeze
	def initialize (relation)
		@relation = relation
	end

	def serialize
		@relation.as_json(
			only: RequestSerializer::FIELDS,
			include: {
				user: {
					include: {
						lawyer: {only: :name}
					}
				}
			}
		)
	end
end
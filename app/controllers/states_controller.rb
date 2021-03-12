class StatesController < ApplicationController
	def index
		@states = State.all.order(:uf)
		serialize = StateSerializer.new(@states)
		render json: serialize.serialize()
	end
end

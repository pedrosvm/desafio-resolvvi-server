class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests
  def index
    @requests = current_user.requests

    render json: @requests
  end

  # GET /requests/1
  def show
    render json: @request
  end

  # POST /requests
  def create
    matched = match_lawyer

    @request = Request.new(request_params.merge(user_id: current_user.id))

    if matched
      @request.save!
      return render json: RequestSerializer.new(@request).serialize, status: :created
    else
      return render json: {error: "Não foi possível encontrar um advogado disponível"}, status: :bad_request
    end
  rescue ActiveRecord::RecordInvalid
    return render json: @request.errors, status: :unprocessable_entity
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.fetch(:request, {}).permit(:title, :description, :value)
    end

    def match_lawyer
      user = User.find(current_user.id)
      limit = rand(user.state.lawyers.count)
      lawyer = user.state.lawyers.offset(limit).first

      unless lawyer.nil?
        user.update(lawyer_id: lawyer.id) if user.lawyer.nil?
        return true
      else
        return false
      end
    end
end

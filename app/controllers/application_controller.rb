class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    error = 'Record not found'.to_json
    render json: { error: error }, status: :not_found
  end
end

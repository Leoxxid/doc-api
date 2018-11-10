class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :update, :destroy]

  # GET /addresses/1
  def show
    render json: @address
  end

  # PATCH/PUT /addresses/1
  def update
    if @address.update(address_params)
      render json: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addresses/1
  def destroy
    if @address
      @address.destroy
    else
      error = "Record don't exists".to_json
      render json: { error: error }, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find_by(user_id: params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.require(:address).permit(:city, :street, :number)
    end
end

class CartsController < ApplicationController
  before_action :authenticate_user!, :set_cart, only: [:show, :destroy]

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end
end

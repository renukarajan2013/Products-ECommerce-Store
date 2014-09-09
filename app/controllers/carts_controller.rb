class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end


  # POST /carts
  # POST /carts.json
  def create
    
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json



  def edit
    @cart = initialize_cart
    @carts = Cart.all
	  @cart_item = CartItem.new
  end



  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to welcome_index_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def add_to_cart

	@cart = initialize_cart
  	@cart_item = CartItem.create!(:book_id => params[:book_id])
	@cart_item.update(cart_id: @cart.id)
	@cart_item.save
  	redirect_to edit_cart_url(@cart), alert: 'Cart was successfully updated.'

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      
      #@cart = Cart.find(params[:cart_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.




end

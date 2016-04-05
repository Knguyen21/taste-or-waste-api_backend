class FoodsController < ProtectedController
  before_action :set_food, only: [:show, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = current_user.foods

    render json: @foods
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
    render json: @food
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = current_user.foods.new(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    @food = current_user.foods.find(params[:id])

    if @food.update(food_params)
      head :no_content
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy

    head :no_content
  end

  private

    def set_food
      @food = current_user.foods.find(params[:id])
    end

    def food_params
      params.require(:food).permit(:storage, :disposal, :category, :name, :description, :purchased_date, :expiration_date, :remind_date, :user, :user_id)
    end
end

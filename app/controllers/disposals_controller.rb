class DisposalsController < OpenReadController
  before_action :set_disposal, only: [:show, :update, :destroy]

  # GET /disposals
  # GET /disposals.json
  def index
    @disposals = Disposal.all

    render json: @disposals
  end

  # GET /disposals/1
  # GET /disposals/1.json
  def show
    render json: @disposal
  end

  # POST /disposals
  # POST /disposals.json
  def create
    @disposal = Disposal.new(disposal_params)

    if @disposal.save
      render json: @disposal, status: :created, location: @disposal
    else
      render json: @disposal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /disposals/1
  # PATCH/PUT /disposals/1.json
  def update
    @disposal = Disposal.find(params[:id])

    if @disposal.update(disposal_params)
      head :no_content
    else
      render json: @disposal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /disposals/1
  # DELETE /disposals/1.json
  def destroy
    @disposal.destroy

    head :no_content
  end

  private

    def set_disposal
      @disposal = Disposal.find(params[:id])
    end

    def disposal_params
      params.require(:disposal).permit(:method_by)
    end
end

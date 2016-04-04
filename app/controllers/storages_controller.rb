class StoragesController < OpenReadController
  before_action :set_storage, only: [:show, :update, :destroy]

  # GET /storages
  # GET /storages.json
  def index
    @storages = Storage.all

    render json: @storages
  end

  # GET /storages/1
  # GET /storages/1.json
  def show
    render json: @storage
  end

  # POST /storages
  # POST /storages.json
  def create
    @storage = Storage.new(storage_params)

    if @storage.save
      render json: @storage, status: :created, location: @storage
    else
      render json: @storage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /storages/1
  # PATCH/PUT /storages/1.json
  def update
    @storage = Storage.find(params[:id])

    if @storage.update(storage_params)
      head :no_content
    else
      render json: @storage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storages/1
  # DELETE /storages/1.json
  def destroy
    @storage.destroy

    head :no_content
  end

  private

    def set_storage
      @storage = Storage.find(params[:id])
    end

    def storage_params
      params.require(:storage).permit(:storage_type)
    end
end

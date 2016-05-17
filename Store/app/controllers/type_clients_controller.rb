class TypeClientsController < ApplicationController
  before_action :set_type_client, only: [:show, :edit, :update, :destroy]

  # GET /type_clients
  # GET /type_clients.json
  def index
    @type_clients = TypeClient.all
  end

  # GET /type_clients/1
  # GET /type_clients/1.json
  def show
  end

  # GET /type_clients/new
  def new
    @type_client = TypeClient.new
  end

  # GET /type_clients/1/edit
  def edit
  end

  # POST /type_clients
  # POST /type_clients.json
  def create
    @type_client = TypeClient.new(type_client_params)

    respond_to do |format|
      if @type_client.save
        format.html { redirect_to @type_client, notice: 'Type client was successfully created.' }
        format.json { render :show, status: :created, location: @type_client }
      else
        format.html { render :new }
        format.json { render json: @type_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_clients/1
  # PATCH/PUT /type_clients/1.json
  def update
    respond_to do |format|
      if @type_client.update(type_client_params)
        format.html { redirect_to @type_client, notice: 'Type client was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_client }
      else
        format.html { render :edit }
        format.json { render json: @type_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_clients/1
  # DELETE /type_clients/1.json
  def destroy
    @type_client.destroy
    respond_to do |format|
      format.html { redirect_to type_clients_url, notice: 'Type client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_client
      @type_client = TypeClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_client_params
      params.require(:type_client).permit(:name)
    end
end

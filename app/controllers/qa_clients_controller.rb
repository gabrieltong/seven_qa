class QaClientsController < ApplicationController
  unloadable
  # GET /qa_clients
  # GET /qa_clients.json
  def index
    @qa_clients = QaClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qa_clients }
    end
  end

  # GET /qa_clients/1
  # GET /qa_clients/1.json
  def show
    @qa_client = QaClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qa_client }
    end
  end

  # GET /qa_clients/new
  # GET /qa_clients/new.json
  def new
    @qa_client = QaClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qa_client }
    end
  end

  # GET /qa_clients/1/edit
  def edit
    @qa_client = QaClient.find(params[:id])
  end

  # POST /qa_clients
  # POST /qa_clients.json
  def create
    @qa_client = QaClient.new(params[:qa_client])

    respond_to do |format|
      if @qa_client.save
        format.html { redirect_to @qa_client, notice: 'Qa client was successfully created.' }
        format.json { render json: @qa_client, status: :created, location: @qa_client }
      else
        format.html { render action: "new" }
        format.json { render json: @qa_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qa_clients/1
  # PUT /qa_clients/1.json
  def update
    @qa_client = QaClient.find(params[:id])

    respond_to do |format|
      if @qa_client.update_attributes(params[:qa_client])
        format.html { redirect_to @qa_client, notice: 'Qa client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qa_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qa_clients/1
  # DELETE /qa_clients/1.json
  def destroy
    @qa_client = QaClient.find(params[:id])
    @qa_client.destroy

    respond_to do |format|
      format.html { redirect_to qa_clients_url }
      format.json { head :no_content }
    end
  end
end

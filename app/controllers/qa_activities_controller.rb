class QaActivitiesController < ApplicationController
  unloadable
  # GET /qa_activities
  # GET /qa_activities.json
  def index
    @qa_activities = QaActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qa_activities }
    end
  end

  # GET /qa_activities/1
  # GET /qa_activities/1.json
  def show
    @qa_activity = QaActivity.find(params[:id])
    @qa_clients = @qa_activity.qa_clients
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qa_activity }
    end
  end

  # GET /qa_activities/new
  # GET /qa_activities/new.json
  def new
    @qa_activity = QaActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qa_activity }
    end
  end

  # GET /qa_activities/1/edit
  def edit
    @qa_activity = QaActivity.find(params[:id])
  end

  # POST /qa_activities
  # POST /qa_activities.json
  def create
    @qa_activity = QaActivity.new(params[:qa_activity])

    respond_to do |format|
      if @qa_activity.save
        format.html { redirect_to @qa_activity, notice: 'Qa activity was successfully created.' }
        format.json { render json: @qa_activity, status: :created, location: @qa_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @qa_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qa_activities/1
  # PUT /qa_activities/1.json
  def update
    @qa_activity = QaActivity.find(params[:id])

    respond_to do |format|
      if @qa_activity.update_attributes(params[:qa_activity])
        format.html { redirect_to @qa_activity, notice: 'Qa activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qa_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qa_activities/1
  # DELETE /qa_activities/1.json
  def destroy
    @qa_activity = QaActivity.find(params[:id])
    @qa_activity.destroy

    respond_to do |format|
      format.html { redirect_to qa_activities_url }
      format.json { head :no_content }
    end
  end
end

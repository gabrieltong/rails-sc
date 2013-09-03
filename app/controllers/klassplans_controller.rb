class KlassplansController < ApplicationController
  # GET /klassplans
  # GET /klassplans.json
  def index
    @klassplans = Klassplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @klassplans }
    end
  end

  # GET /klassplans/1
  # GET /klassplans/1.json
  def show
    @klassplan = Klassplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @klassplan }
    end
  end

  # GET /klassplans/new
  # GET /klassplans/new.json
  def new
    @klassplan = Klassplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @klassplan }
    end
  end

  # GET /klassplans/1/edit
  def edit
    @klassplan = Klassplan.find(params[:id])
  end

  # POST /klassplans
  # POST /klassplans.json
  def create
    @klassplan = Klassplan.new(params[:klassplan])

    respond_to do |format|
      if @klassplan.save
        format.html { redirect_to @klassplan, notice: 'Klassplan was successfully created.' }
        format.json { render json: @klassplan, status: :created, location: @klassplan }
      else
        format.html { render action: "new" }
        format.json { render json: @klassplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /klassplans/1
  # PUT /klassplans/1.json
  def update
    @klassplan = Klassplan.find(params[:id])

    respond_to do |format|
      if @klassplan.update_attributes(params[:klassplan])
        format.html { redirect_to @klassplan, notice: 'Klassplan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @klassplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klassplans/1
  # DELETE /klassplans/1.json
  def destroy
    @klassplan = Klassplan.find(params[:id])
    @klassplan.destroy

    respond_to do |format|
      format.html { redirect_to klassplans_url }
      format.json { head :no_content }
    end
  end
end

class PlanitemsController < ApplicationController
  # GET /planitems
  # GET /planitems.json
  def index
    @planitems = Planitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @planitems }
    end
  end

  # GET /planitems/1
  # GET /planitems/1.json
  def show
    @planitem = Planitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @planitem }
    end
  end

  # GET /planitems/new
  # GET /planitems/new.json
  def new
    @planitem = Planitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @planitem }
    end
  end

  # GET /planitems/1/edit
  def edit
    @planitem = Planitem.find(params[:id])
  end

  # POST /planitems
  # POST /planitems.json
  def create
    @planitem = Planitem.new(params[:planitem])

    respond_to do |format|
      if @planitem.save
        format.html { redirect_to @planitem, notice: 'Planitem was successfully created.' }
        format.json { render json: @planitem, status: :created, location: @planitem }
      else
        format.html { render action: "new" }
        format.json { render json: @planitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /planitems/1
  # PUT /planitems/1.json
  def update
    @planitem = Planitem.find(params[:id])

    respond_to do |format|
      if @planitem.update_attributes(params[:planitem])
        format.html { redirect_to @planitem, notice: 'Planitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @planitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planitems/1
  # DELETE /planitems/1.json
  def destroy
    @planitem = Planitem.find(params[:id])
    @planitem.destroy

    respond_to do |format|
      format.html { redirect_to planitems_url }
      format.json { head :no_content }
    end
  end
end

class BaomingitemsController < ApplicationController
  # GET /baomingitems
  # GET /baomingitems.json
  def index
    @baomingitems = Baomingitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baomingitems }
    end
  end

  # GET /baomingitems/1
  # GET /baomingitems/1.json
  def show
    @baomingitem = Baomingitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baomingitem }
    end
  end

  # GET /baomingitems/new
  # GET /baomingitems/new.json
  def new
    @baomingitem = Baomingitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baomingitem }
    end
  end

  # GET /baomingitems/1/edit
  def edit
    @baomingitem = Baomingitem.find(params[:id])
  end

  # POST /baomingitems
  # POST /baomingitems.json
  def create
    @baomingitem = Baomingitem.new(params[:baomingitem])

    respond_to do |format|
      if @baomingitem.save
        format.html { redirect_to @baomingitem, notice: 'Baomingitem was successfully created.' }
        format.json { render json: @baomingitem, status: :created, location: @baomingitem }
      else
        format.html { render action: "new" }
        format.json { render json: @baomingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baomingitems/1
  # PUT /baomingitems/1.json
  def update
    @baomingitem = Baomingitem.find(params[:id])

    respond_to do |format|
      if @baomingitem.update_attributes(params[:baomingitem])
        format.html { redirect_to @baomingitem, notice: 'Baomingitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baomingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baomingitems/1
  # DELETE /baomingitems/1.json
  def destroy
    @baomingitem = Baomingitem.find(params[:id])
    @baomingitem.destroy

    respond_to do |format|
      format.html { redirect_to baomingitems_url }
      format.json { head :no_content }
    end
  end
end

class BaomingsController < ApplicationController
  # GET /baomings
  # GET /baomings.json
  def index
    @baomings = Baoming.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @baomings }
    end
  end

  # GET /baomings/1
  # GET /baomings/1.json
  def show
    @baoming = Baoming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @baoming }
    end
  end

  # GET /baomings/new
  # GET /baomings/new.json
  def new
    @baoming = Baoming.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @baoming }
    end
  end

  # GET /baomings/1/edit
  def edit
    @baoming = Baoming.find(params[:id])
  end

  # POST /baomings
  # POST /baomings.json
  def create
    @baoming = Baoming.new(params[:baoming])

    respond_to do |format|
      if @baoming.save
        format.html { redirect_to @baoming, notice: 'Baoming was successfully created.' }
        format.json { render json: @baoming, status: :created, location: @baoming }
      else
        format.html { render action: "new" }
        format.json { render json: @baoming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /baomings/1
  # PUT /baomings/1.json
  def update
    @baoming = Baoming.find(params[:id])

    respond_to do |format|
      if @baoming.update_attributes(params[:baoming])
        format.html { redirect_to @baoming, notice: 'Baoming was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @baoming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baomings/1
  # DELETE /baomings/1.json
  def destroy
    @baoming = Baoming.find(params[:id])
    @baoming.destroy

    respond_to do |format|
      format.html { redirect_to baomings_url }
      format.json { head :no_content }
    end
  end
end

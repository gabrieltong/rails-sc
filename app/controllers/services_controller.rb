class ServicesController < ApplicationController
  
  def index
    @klasses = Klass.service

    respond_to do |format|
      format.html 
      format.json { render json: @klasses }
    end

    
  end


  def show
    @klass = Klass.service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @klass }
    end
  end

  def new
    @klass = Klass.service.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @klass }
    end
  end


  def edit
    @klass = Klass.service.find(params[:id])
  end

  def create
    @klass = Klass.service.new(params[:klass])

    respond_to do |format|
      if @klass.save
        format.html { redirect_to @klass, notice: 'Klass was successfully created.' }
        format.json { render json: @klass, status: :created, location: @klass }
      else
        format.html { render action: "new" }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @klass = Klass.service.find(params[:id])

    respond_to do |format|
      if @klass.update_attributes(params[:klass])
        format.html { redirect_to @klass, notice: 'Klass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @klass = Klass.service.find(params[:id])
    @klass.destroy

    respond_to do |format|
      format.html { redirect_to klasses_url }
      format.json { head :no_content }
    end
  end
end

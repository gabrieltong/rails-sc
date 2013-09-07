class CoursesController < ApplicationController
  # GET /coursees
  # GET /coursees.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /coursees/1
  # GET /coursees/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /coursees/new
  # GET /coursees/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /coursees/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /coursees
  # POST /coursees.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        
        format.html { redirect_to @course, notice: 'course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        ppp @course.errors.full_messages
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coursees/1
  # PUT /coursees/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursees/1
  # DELETE /coursees/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to coursees_url }
      format.json { head :no_content }
    end
  end
end

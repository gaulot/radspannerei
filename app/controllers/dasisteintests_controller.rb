class DasisteintestsController < ApplicationController
  # GET /dasisteintests
  # GET /dasisteintests.json
  def index
    @dasisteintests = Dasisteintest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dasisteintests }
    end
  end

  # GET /dasisteintests/1
  # GET /dasisteintests/1.json
  def show
    @dasisteintest = Dasisteintest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dasisteintest }
    end
  end

  # GET /dasisteintests/new
  # GET /dasisteintests/new.json
  def new
    @dasisteintest = Dasisteintest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dasisteintest }
    end
  end

  # GET /dasisteintests/1/edit
  def edit
    @dasisteintest = Dasisteintest.find(params[:id])
  end

  # POST /dasisteintests
  # POST /dasisteintests.json
  def create
    @dasisteintest = Dasisteintest.new(params[:dasisteintest])

    respond_to do |format|
      if @dasisteintest.save
        format.html { redirect_to @dasisteintest, notice: 'Dasisteintest was successfully created.' }
        format.json { render json: @dasisteintest, status: :created, location: @dasisteintest }
      else
        format.html { render action: "new" }
        format.json { render json: @dasisteintest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dasisteintests/1
  # PUT /dasisteintests/1.json
  def update
    @dasisteintest = Dasisteintest.find(params[:id])

    respond_to do |format|
      if @dasisteintest.update_attributes(params[:dasisteintest])
        format.html { redirect_to @dasisteintest, notice: 'Dasisteintest was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dasisteintest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dasisteintests/1
  # DELETE /dasisteintests/1.json
  def destroy
    @dasisteintest = Dasisteintest.find(params[:id])
    @dasisteintest.destroy

    respond_to do |format|
      format.html { redirect_to dasisteintests_url }
      format.json { head :ok }
    end
  end
end

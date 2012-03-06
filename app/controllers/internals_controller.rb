class InternalsController < ApplicationController
  # GET /internals
  # GET /internals.json
  def index
    @internals = Internal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @internals }
    end
  end

  # GET /internals/1
  # GET /internals/1.json
  def show
    @internal = Internal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @internal }
    end
  end

  # GET /internals/new
  # GET /internals/new.json
  def new
    @internal = Internal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @internal }
    end
  end

  # GET /internals/1/edit
  def edit
    @internal = Internal.find(params[:id])
  end

  # POST /internals
  # POST /internals.json
  def create
    @internal = Internal.new(params[:internal])

    respond_to do |format|
      if @internal.save
        format.html { redirect_to @internal, notice: 'Internal was successfully created.' }
        format.json { render json: @internal, status: :created, location: @internal }
      else
        format.html { render action: "new" }
        format.json { render json: @internal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /internals/1
  # PUT /internals/1.json
  def update
    @internal = Internal.find(params[:id])

    respond_to do |format|
      if @internal.update_attributes(params[:internal])
        format.html { redirect_to @internal, notice: 'Internal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @internal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internals/1
  # DELETE /internals/1.json
  def destroy
    @internal = Internal.find(params[:id])
    @internal.destroy

    respond_to do |format|
      format.html { redirect_to internals_url }
      format.json { head :ok }
    end
  end
end

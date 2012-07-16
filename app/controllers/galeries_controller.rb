class GaleriesController < ApplicationController
  # GET /galeries
  # GET /galeries.json
  def index
    @galeries = Galery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galeries }
    end
  end

  # GET /galeries/1
  # GET /galeries/1.json
  def show
    @galery = Galery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @galery }
    end
  end

  # GET /galeries/new
  # GET /galeries/new.json
  def new
    @galery = Galery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @galery }
    end
  end

  # GET /galeries/1/edit
  def edit
    @galery = Galery.find(params[:id])
  end

  # POST /galeries
  # POST /galeries.json
  def create
    @galery = Galery.new(params[:galery])

    respond_to do |format|
      if @galery.save
        format.html { redirect_to @galery, notice: 'Galery was successfully created.' }
        format.json { render json: @galery, status: :created, location: @galery }
      else
        format.html { render action: "new" }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /galeries/1
  # PUT /galeries/1.json
  def update
    @galery = Galery.find(params[:id])

    respond_to do |format|
      if @galery.update_attributes(params[:galery])
        format.html { redirect_to @galery, notice: 'Galery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeries/1
  # DELETE /galeries/1.json
  def destroy
    @galery = Galery.find(params[:id])
    @galery.destroy

    respond_to do |format|
      format.html { redirect_to galeries_url }
      format.json { head :no_content }
    end
  end
end

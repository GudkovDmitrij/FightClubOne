class ZayvkasController < ApplicationController
  # GET /zayvkas
  # GET /zayvkas.json
  def index
    @zayvkas = Zayvka.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zayvkas }
    end
  end



  # GET /zayvkas/new
  # GET /zayvkas/new.json
  def new
    @zayvka = Zayvka.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zayvka }
    end
  end

  # GET /zayvkas/1/edit
  def edit
    @zayvka = Zayvka.find(params[:id])
  end

  # POST /zayvkas
  # POST /zayvkas.json
  def create
    @zayvka = Zayvka.new(params[:zayvka])

    respond_to do |format|
      if @zayvka.save
        format.html { redirect_to root_url, notice: 'Zayvka was successfully created.' }
        format.json { render json: @zayvka, status: :created, location: @zayvka }
      else
        format.html { render action: "new" }
        format.json { render json: @zayvka.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /zayvkas/1
  # DELETE /zayvkas/1.json
  def destroy
    @zayvka = Zayvka.find(params[:id])
    @zayvka.destroy

    respond_to do |format|
      format.html { redirect_to zayvkas_url }
      format.json { head :no_content }
    end
  end
end

class TangosController < ApplicationController
  # GET /tangos
  # GET /tangos.json
  def index
    @tangos = Tango.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tangos }
    end
  end

  # GET /tangos/1
  # GET /tangos/1.json
  def show
    @tango = Tango.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tango }
    end
  end

  # GET /tangos/new
  # GET /tangos/new.json
  def new
    @tango = Tango.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tango }
    end
  end

  # GET /tangos/1/edit
  def edit
    @tango = Tango.find(params[:id])
  end

  # POST /tangos
  # POST /tangos.json
  def create
    @tango = Tango.new(params[:tango])

    respond_to do |format|
      if @tango.save
        format.html { redirect_to @tango, notice: 'Tango was successfully created.' }
        format.json { render json: @tango, status: :created, location: @tango }
      else
        format.html { render action: "new" }
        format.json { render json: @tango.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tangos/1
  # PUT /tangos/1.json
  def update
    @tango = Tango.find(params[:id])

    respond_to do |format|
      if @tango.update_attributes(params[:tango])
        format.html { redirect_to @tango, notice: 'Tango was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tango.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tangos/1
  # DELETE /tangos/1.json
  def destroy
    @tango = Tango.find(params[:id])
    @tango.destroy

    respond_to do |format|
      format.html { redirect_to tangos_url }
      format.json { head :no_content }
    end
  end
end

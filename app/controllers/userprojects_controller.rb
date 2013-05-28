class UserprojectsController < ApplicationController
  # GET /userprojects
  # GET /userprojects.json
  def index
    @userprojects = Userproject.all

    respond_to do |format|
     format.html # index.html.erb
      format.json { render json: @userprojects }
    end
  end

  def index_proyecto
    @proyectos = Proyecto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proyectos }
    end
  end

  # GET /userprojects/1
  # GET /userprojects/1.json
  def show
    @userproject = Userproject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userproject }
    end
  end

  # GET /userprojects/new
  # GET /userprojects/new.json
  def new
    @userproject = Userproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userproject }
    end
  end

  # GET /userprojects/1/edit
  def edit
    @userproject = Userproject.find(params[:id])
  end

  # POST /userprojects
  # POST /userprojects.json
  def create
    @userproject = Userproject.new(params[:userproject])

    respond_to do |format|
      if @userproject.save
        format.html { redirect_to @userproject, notice: 'Userproject was successfully created.' }
        format.json { render json: @userproject, status: :created, location: @userproject }
      else
        format.html { render action: "new" }
        format.json { render json: @userproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userprojects/1
  # PUT /userprojects/1.json
  def update
    @userproject = Userproject.find(params[:id])

    respond_to do |format|
      if @userproject.update_attributes(params[:userproject])
        format.html { redirect_to @userproject, notice: 'Userproject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userprojects/1
  # DELETE /userprojects/1.json
  def destroy
    @userproject = Userproject.find(params[:id])
    @userproject.destroy

    respond_to do |format|
      format.html { redirect_to userprojects_url }
      format.json { head :no_content }
    end
  end

  def misproyectos
    @userproject = Userproject.where("usuario_id=?",params[:id])
    @proyectos = Proyecto.all
    #Proyecto.where("id=?",@userproject.proyecto_id)
    respond_to do |format|
      format.html # misproyectos.html.erb
      format.json { render json: @proyectos }
    end
  end
end

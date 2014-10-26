class MaterialesAuditoriaController < ApplicationController
  before_action :set_materiales_auditorium, only: [:show, :edit, :update, :destroy]

  # GET /materiales_auditoria
  # GET /materiales_auditoria.json
  def index
    @materiales_auditoria = MaterialesAuditorium.all
  end

  # GET /materiales_auditoria/1
  # GET /materiales_auditoria/1.json
  def show
  end

  # GET /materiales_auditoria/new
  def new
    @materiales_auditorium = MaterialesAuditorium.new
  end

  # GET /materiales_auditoria/1/edit
  def edit
  end

  # POST /materiales_auditoria
  # POST /materiales_auditoria.json
  def create
    @materiales_auditorium = MaterialesAuditorium.new(materiales_auditorium_params)

    respond_to do |format|
      if @materiales_auditorium.save
        format.html { redirect_to @materiales_auditorium, notice: 'Materiales auditorium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @materiales_auditorium }
      else
        format.html { render action: 'new' }
        format.json { render json: @materiales_auditorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materiales_auditoria/1
  # PATCH/PUT /materiales_auditoria/1.json
  def update
    respond_to do |format|
      if @materiales_auditorium.update(materiales_auditorium_params)
        format.html { redirect_to @materiales_auditorium, notice: 'Materiales auditorium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @materiales_auditorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiales_auditoria/1
  # DELETE /materiales_auditoria/1.json
  def destroy
    @materiales_auditorium.destroy
    respond_to do |format|
      format.html { redirect_to materiales_auditoria_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materiales_auditorium
      @materiales_auditorium = MaterialesAuditorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materiales_auditorium_params
      params.require(:materiales_auditorium).permit(:visitum_id, :autorium_id)
    end
end

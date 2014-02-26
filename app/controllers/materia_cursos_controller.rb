class MateriaCursosController < ApplicationController
  before_action :set_materia_curso, only: [:show, :edit, :update, :destroy]

  # GET /materia_cursos
  # GET /materia_cursos.json
  def index
    @materia_cursos = MateriaCurso.all
  end

  # GET /materia_cursos/1
  # GET /materia_cursos/1.json
  def show
  end

  # GET /materia_cursos/new
  def new
    @materia_curso = MateriaCurso.new
  end

  # GET /materia_cursos/1/edit
  def edit
  end

  # POST /materia_cursos
  # POST /materia_cursos.json
  def create
    @materia_curso = MateriaCurso.new(materia_curso_params)

    respond_to do |format|
      if @materia_curso.save
        format.html { redirect_to @materia_curso, notice: 'Materia curso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @materia_curso }
      else
        format.html { render action: 'new' }
        format.json { render json: @materia_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materia_cursos/1
  # PATCH/PUT /materia_cursos/1.json
  def update
    respond_to do |format|
      if @materia_curso.update(materia_curso_params)
        format.html { redirect_to @materia_curso, notice: 'Materia curso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @materia_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materia_cursos/1
  # DELETE /materia_cursos/1.json
  def destroy
    @materia_curso.destroy
    respond_to do |format|
      format.html { redirect_to materia_cursos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia_curso
      @materia_curso = MateriaCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_curso_params
      params.require(:materia_curso).permit(:materium_id, :curso_id)
    end
end

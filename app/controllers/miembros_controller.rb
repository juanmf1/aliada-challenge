class MiembrosController < ApplicationController
  before_action :set_miembro, only: %i[ show edit update destroy tickets]

  def tickets
  end

  # GET /miembros or /miembros.json
  def index
    @miembros = Miembro.all
  end

  # GET /miembros/1 or /miembros/1.json
  def show
  end

  # GET /miembros/new
  def new
    @miembro = Miembro.new
  end

  # GET /miembros/1/edit
  def edit
  end

  # POST /miembros or /miembros.json
  def create
    @miembro = Miembro.new(miembro_params)

    respond_to do |format|
      if @miembro.save
        format.html { redirect_to miembros_path, notice: "Miembro creado." }
        format.json { render :show, status: :created, location: @miembro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @miembro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miembros/1 or /miembros/1.json
  def update
    respond_to do |format|
      if @miembro.update(miembro_params)
        format.html { redirect_to miembros_path, notice: "Miembro editado." }
        format.json { render :show, status: :ok, location: @miembro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @miembro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miembros/1 or /miembros/1.json
  def destroy
    @miembro.destroy

    respond_to do |format|
      format.html { redirect_to miembros_url, notice: "Miembro eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miembro
      @miembro = Miembro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def miembro_params
      params.require(:miembro).permit(:nombre, :apellido)
    end
end

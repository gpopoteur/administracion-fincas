class FacturasController < ApplicationController

	def index 
		@facturas = Factura.all
	end

	def new
		@factura = Factura.new

	end

	def create
		@factura = Factura.new(factura_params)

		if @factura.save
			
			fichas = Ficha.where(:vecino_id => @factura.vecino_id, :pagada => nil)

			# cambiar por update
			fichas.each do |f|
				f.factura_id = @factura.id
				f.pagada = true
				f.save
			end

			respond_to do |format|
				format.html { redirect_to @factura, notice: 'Ficha was successfully created.' }
		        format.json { render action: 'show', status: :created, location: @factura }
		    end
		else

	    	respond_to do |format|
		    	format.html { render action: 'new' }
		        format.json { render json: @factura.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@factura = Factura.find(params[:id])
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:vecino_id)
    end
end

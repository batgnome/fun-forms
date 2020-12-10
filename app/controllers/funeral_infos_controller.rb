class FuneralInfosController < ApplicationController
  before_action :set_funeral_info, only: [:show, :edit, :update, :destroy]

  #def report
   # RailsPDF.template("report2/invoice.pug.erb").render do |data|
   #   send_data(data, type: 'application/pdf', disposition: 'inline', filename: 'report.pdf')
  #  end
  #end

  # GET /funeral_infos
  # GET /funeral_infos.json
  def index
    @funeral_infos = FuneralInfo.all
  end

  # GET /funeral_infos/1
  # GET /funeral_infos/1.json
  def show
  end

  # GET /funeral_infos/new
  def new
    @funeral_info = FuneralInfo.new
  end

  # GET /funeral_infos/1/edit
  def edit
  end

  # POST /funeral_infos
  # POST /funeral_infos.json
  def create
    @funeral_info = FuneralInfo.new(funeral_info_params)

    respond_to do |format|
      if @funeral_info.save
        format.html { redirect_to @funeral_info, notice: 'Funeral info was successfully created.' }
        format.json { render :show, status: :created, location: @funeral_info }
      else
        format.html { render :new }
        format.json { render json: @funeral_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funeral_infos/1
  # PATCH/PUT /funeral_infos/1.json
  def update
    respond_to do |format|
      if @funeral_info.update(funeral_info_params)
        format.html { redirect_to @funeral_info, notice: 'Funeral info was successfully updated.' }
        format.json { render :show, status: :ok, location: @funeral_info }
      else
        format.html { render :edit }
        format.json { render json: @funeral_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funeral_infos/1
  # DELETE /funeral_infos/1.json
  def destroy
    @funeral_info.destroy
    respond_to do |format|
      format.html { redirect_to funeral_infos_url, notice: 'Funeral info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funeral_info
      @funeral_info = FuneralInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funeral_info_params
      params.require(:funeral_info).permit(:fun_home, :fun_dir, :fun_title, :fun_dir_email, :current_date_and_time)
    end
end

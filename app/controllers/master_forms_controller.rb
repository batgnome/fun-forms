class MasterFormsController < ApplicationController
  before_action :set_master_form, only: [:show, :edit, :update, :destroy]

  # GET /master_forms
  # GET /master_forms.json
  def index
    @master_forms = MasterForm.all
  end

  # GET /master_forms/1
  # GET /master_forms/1.json
  def show
  end

  # GET /master_forms/new
  def new
    @master_form = MasterForm.new
  end

  # GET /master_forms/1/edit
  def edit
  end

  # POST /master_forms
  # POST /master_forms.json
  def create
    @master_form = MasterForm.new(master_form_params)

    respond_to do |format|
      if @master_form.save
        format.html { redirect_to @master_form, notice: 'Master form was successfully created.' }
        format.json { render :show, status: :created, location: @master_form }
      else
        format.html { render :new }
        format.json { render json: @master_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_forms/1
  # PATCH/PUT /master_forms/1.json
  def update
    respond_to do |format|
      if @master_form.update(master_form_params)
        format.html { redirect_to @master_form, notice: 'Master form was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_form }
      else
        format.html { render :edit }
        format.json { render json: @master_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_forms/1
  # DELETE /master_forms/1.json
  def destroy
    @master_form.destroy
    respond_to do |format|
      format.html { redirect_to master_forms_url, notice: 'Master form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_form
      @master_form = MasterForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def master_form_params
      params.require(:master_form).permit(:dec_name, :nok_name, :nok_phone_number)
    end
end

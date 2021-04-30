class KnivesController < ApplicationController
  before_action :set_knife, only: %i[ show edit update destroy ]

  # GET /knives or /knives.json
  def index
    @knives = Knife.all
  end

  # GET /knives/1 or /knives/1.json
  def show
  end

  # GET /knives/new
  def new
    @knife = Knife.new
  end

  # GET /knives/1/edit
  def edit
  end

  # POST /knives or /knives.json
  def create
    @knife = Knife.new(knife_params)

    respond_to do |format|
      if @knife.save
        format.html { redirect_to @knife, notice: "Knife was successfully created." }
        format.json { render :show, status: :created, location: @knife }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @knife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knives/1 or /knives/1.json
  def update
    respond_to do |format|
      if @knife.update(knife_params)
        format.html { redirect_to @knife, notice: "Knife was successfully updated." }
        format.json { render :show, status: :ok, location: @knife }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @knife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knives/1 or /knives/1.json
  def destroy
    @knife.destroy
    respond_to do |format|
      format.html { redirect_to knives_url, notice: "Knife was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knife
      @knife = Knife.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def knife_params
      params.require(:knife).permit(:tag, :url, :code)
    end
end

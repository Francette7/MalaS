class RecrutementsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_recrutement, only: [:show, :edit, :update, :destroy]

  # GET /recrutements
  # GET /recrutements.json
  def index
    @recrutements = Recrutement.all
  end

  # GET /recrutements/1
  # GET /recrutements/1.json
  def show
  end

  # GET /recrutements/new
  def new
    puts "#"*50
    puts params['data_value']
   
    @recrutement = Recrutement.new('content' => params[:content], 'deadline' => params[:deadline])
 @club = Club.find(params['data_value'])
    puts @club


  end

  # GET /recrutements/1/edit
  def edit
  end

  # POST /recrutements
  # POST /recrutements.json
  def create
    puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    puts params['club_id']
    @recrutement = Recrutement.create('content' => params[:content], 'deadline' => params[:deadline], club_id: params['club_id'])


    respond_to do |format|
      if @recrutement.save
        format.html { redirect_to @recrutement, notice: 'Recrutement was successfully created.' }
        format.json { render :show, status: :created, location: @recrutement }
      else
        format.html { render :new }
        format.json { render json: @recrutement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recrutements/1
  # PATCH/PUT /recrutements/1.json
  def update
    respond_to do |format|
      if @recrutement.update(recrutement_params)
        format.html { redirect_to @recrutement, notice: 'Recrutement was successfully updated.' }
        format.json { render :show, status: :ok, location: @recrutement }
      else
        format.html { render :edit }
        format.json { render json: @recrutement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recrutements/1
  # DELETE /recrutements/1.json
  def destroy
    @recrutement.destroy
    respond_to do |format|
      format.html { redirect_to recrutements_url, notice: 'Recrutement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recrutement
      @recrutement = Recrutement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recrutement_params
      params.require(:recrutement).permit(:content, :deadline)
    end
end

class TagToSnipsController < ApplicationController
  before_action :set_tag_to_snip, only: [:show, :edit, :update, :destroy]

  # GET /tag_to_snips
  # GET /tag_to_snips.json
  def index
    @tag_to_snips = TagToSnip.all
  end

  # GET /tag_to_snips/1
  # GET /tag_to_snips/1.json
  def show
  end

  # GET /tag_to_snips/new
  def new
    @tag_to_snip = TagToSnip.new
  end

  # GET /tag_to_snips/1/edit
  def edit
  end

  # POST /tag_to_snips
  # POST /tag_to_snips.json
  def create
    @tag_to_snip = TagToSnip.new(tag_to_snip_params)

    respond_to do |format|
      if @tag_to_snip.save
        format.html { redirect_to @tag_to_snip, notice: 'Tag to snip was successfully created.' }
        format.json { render :show, status: :created, location: @tag_to_snip }
      else
        format.html { render :new }
        format.json { render json: @tag_to_snip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_to_snips/1
  # PATCH/PUT /tag_to_snips/1.json
  def update
    respond_to do |format|
      if @tag_to_snip.update(tag_to_snip_params)
        format.html { redirect_to @tag_to_snip, notice: 'Tag to snip was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_to_snip }
      else
        format.html { render :edit }
        format.json { render json: @tag_to_snip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_to_snips/1
  # DELETE /tag_to_snips/1.json
  def destroy
    @tag_to_snip.destroy
    respond_to do |format|
      format.html { redirect_to tag_to_snips_url, notice: 'Tag to snip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_to_snip
      @tag_to_snip = TagToSnip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tag_to_snip_params
      params.require(:tag_to_snip).permit(:tag_id, :snip_id)
    end
end

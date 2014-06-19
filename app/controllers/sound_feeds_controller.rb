class SoundFeedsController < ApplicationController
  before_action :set_sound_feed, only: [:show, :edit, :update, :destroy]

  # GET /sound_feeds
  # GET /sound_feeds.json
  def index
    @sound_feeds = SoundFeed.all
  end

  # GET /sound_feeds/1
  # GET /sound_feeds/1.json
  def show
  end

  # GET /sound_feeds/new
  def new
    @sound_feed = SoundFeed.new
  end

  # GET /sound_feeds/1/edit
  def edit
  end

  # POST /sound_feeds
  # POST /sound_feeds.json
  def create
    @sound_feed = SoundFeed.new(sound_feed_params)

    respond_to do |format|
      if @sound_feed.save
        format.html { redirect_to @sound_feed, notice: 'Sound feed was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sound_feed }
      else
        format.html { render action: 'new' }
        format.json { render json: @sound_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sound_feeds/1
  # PATCH/PUT /sound_feeds/1.json
  def update
    respond_to do |format|
      if @sound_feed.update(sound_feed_params)
        format.html { redirect_to @sound_feed, notice: 'Sound feed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sound_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sound_feeds/1
  # DELETE /sound_feeds/1.json
  def destroy
    @sound_feed.destroy
    respond_to do |format|
      format.html { redirect_to sound_feeds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sound_feed
      @sound_feed = SoundFeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sound_feed_params
      params.require(:sound_feed).permit(:sound, :owner)
    end
end

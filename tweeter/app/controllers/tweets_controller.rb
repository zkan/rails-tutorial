class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = User.find_by(username: "zkan")
    respond_to do |format|
      if @tweet.save
        puts "success"
        #format.turbo_stream
        #format.html { redirect_to tweet_url(@tweet), notice: "Tweet was successfully created." }
        format.html { redirect_to root_path, notice: "Tweet was successfully created." }
      else
        puts "error"
        format.html do
          #flash[:tweet_errors] = @tweet.errors.full_messages
          redirect_to root_path
        end
      end
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    respond_to do |format|
      if @tweet.update(tweet_params)
        puts "should redirect"
        format.turbo_stream
        format.html { redirect_to root_path, notice: "Tweet was successfully updated." }
        puts "redirected"
      else
        format.html {redirect_to root_path }
      end
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end

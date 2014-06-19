require 'test_helper'

class SoundFeedsControllerTest < ActionController::TestCase
  setup do
    @sound_feed = sound_feeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_feeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_feed" do
    assert_difference('SoundFeed.count') do
      post :create, sound_feed: { owner: @sound_feed.owner, sound: @sound_feed.sound }
    end

    assert_redirected_to sound_feed_path(assigns(:sound_feed))
  end

  test "should show sound_feed" do
    get :show, id: @sound_feed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sound_feed
    assert_response :success
  end

  test "should update sound_feed" do
    patch :update, id: @sound_feed, sound_feed: { owner: @sound_feed.owner, sound: @sound_feed.sound }
    assert_redirected_to sound_feed_path(assigns(:sound_feed))
  end

  test "should destroy sound_feed" do
    assert_difference('SoundFeed.count', -1) do
      delete :destroy, id: @sound_feed
    end

    assert_redirected_to sound_feeds_path
  end
end

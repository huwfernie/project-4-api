require 'test_helper'

class AdvertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advert = adverts(:one)
  end

  test "should get index" do
    get adverts_url, as: :json
    assert_response :success
  end

  test "should create advert" do
    assert_difference('Advert.count') do
      post adverts_url, params: { advert: { body: @advert.body, title: @advert.title, user_id: @advert.user_id, valueMax: @advert.valueMax, valueMin: @advert.valueMin } }, as: :json
    end

    assert_response 201
  end

  test "should show advert" do
    get advert_url(@advert), as: :json
    assert_response :success
  end

  test "should update advert" do
    patch advert_url(@advert), params: { advert: { body: @advert.body, title: @advert.title, user_id: @advert.user_id, valueMax: @advert.valueMax, valueMin: @advert.valueMin } }, as: :json
    assert_response 200
  end

  test "should destroy advert" do
    assert_difference('Advert.count', -1) do
      delete advert_url(@advert), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class UrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url = urls(:one)
  end

  test "should get index" do
    get urls_url
    assert_response :success
  end

  test "should get new" do
    get new_url_url
    assert_response :success
  end

  test "should create url" do
    assert_difference('Url.count') do
      post urls_url, params: { url: { original_url: 'https://womenwhocode.com', slug: 'wwcode' } }
    end

    assert_redirected_to url_url(Url.last)
  end

  test "should show url" do
    get url_url(@url)
    assert_response :success
  end

  test "should get edit" do
    get edit_url_url(@url)
    assert_response :success
  end

  test "should update url" do
    patch url_url(@url), params: { url: { original_url: @url.original_url, slug: @url.slug } }
    assert_redirected_to url_url(@url)
  end

  test "should destroy url" do
    assert_difference('Url.count', -1) do
      delete url_url(@url)
    end

    assert_redirected_to urls_url
  end
end

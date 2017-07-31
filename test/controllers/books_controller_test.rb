require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string:index" do
    get books_title:string:index_url
    assert_response :success
  end

  test "should get desc:string" do
    get books_desc:string_url
    assert_response :success
  end

  test "should get author_id:float" do
    get books_author_id:float_url
    assert_response :success
  end

end

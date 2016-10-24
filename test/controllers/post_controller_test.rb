require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should show all articles' do
    get posts_url(format: :json)
    assert_response :success
    assert_response_schema
  end

  test 'should show single article' do
    post = posts(:one)
    get post_url(post, format: :json)
    assert_response :success
    assert_response_schema
  end
end

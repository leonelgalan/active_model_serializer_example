require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get posts_url(format: :json)
    assert_response :success
  end

  test "should show article" do
    post = posts(:one)
    get post_url(post, format: :json)
    assert_response :success
  end
end

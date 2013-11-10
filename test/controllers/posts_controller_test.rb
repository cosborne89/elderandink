require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { body: @post.body, category_id: @post.category_id, comment_ids: @post.comment_ids, published: @post.published, published_date: @post.published_date, series_id: @post.series_id, tag_ids: @post.tag_ids, title: @post.title, title_image: @post.title_image }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { body: @post.body, category_id: @post.category_id, comment_ids: @post.comment_ids, published: @post.published, published_date: @post.published_date, series_id: @post.series_id, tag_ids: @post.tag_ids, title: @post.title, title_image: @post.title_image }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end

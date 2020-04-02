require 'test_helper'

class TagToSnipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_to_snip = tag_to_snips(:one)
  end

  test "should get index" do
    get tag_to_snips_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_to_snip_url
    assert_response :success
  end

  test "should create tag_to_snip" do
    assert_difference('TagToSnip.count') do
      post tag_to_snips_url, params: { tag_to_snip: { snip_id: @tag_to_snip.snip_id, tag_id: @tag_to_snip.tag_id } }
    end

    assert_redirected_to tag_to_snip_url(TagToSnip.last)
  end

  test "should show tag_to_snip" do
    get tag_to_snip_url(@tag_to_snip)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_to_snip_url(@tag_to_snip)
    assert_response :success
  end

  test "should update tag_to_snip" do
    patch tag_to_snip_url(@tag_to_snip), params: { tag_to_snip: { snip_id: @tag_to_snip.snip_id, tag_id: @tag_to_snip.tag_id } }
    assert_redirected_to tag_to_snip_url(@tag_to_snip)
  end

  test "should destroy tag_to_snip" do
    assert_difference('TagToSnip.count', -1) do
      delete tag_to_snip_url(@tag_to_snip)
    end

    assert_redirected_to tag_to_snips_url
  end
end

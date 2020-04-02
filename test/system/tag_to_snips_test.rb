require "application_system_test_case"

class TagToSnipsTest < ApplicationSystemTestCase
  setup do
    @tag_to_snip = tag_to_snips(:one)
  end

  test "visiting the index" do
    visit tag_to_snips_url
    assert_selector "h1", text: "Tag To Snips"
  end

  test "creating a Tag to snip" do
    visit tag_to_snips_url
    click_on "New Tag To Snip"

    fill_in "Snip", with: @tag_to_snip.snip_id
    fill_in "Tag", with: @tag_to_snip.tag_id
    click_on "Create Tag to snip"

    assert_text "Tag to snip was successfully created"
    click_on "Back"
  end

  test "updating a Tag to snip" do
    visit tag_to_snips_url
    click_on "Edit", match: :first

    fill_in "Snip", with: @tag_to_snip.snip_id
    fill_in "Tag", with: @tag_to_snip.tag_id
    click_on "Update Tag to snip"

    assert_text "Tag to snip was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag to snip" do
    visit tag_to_snips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag to snip was successfully destroyed"
  end
end

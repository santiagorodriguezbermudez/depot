require "application_system_test_case"

class LineItemsTest < ApplicationSystemTestCase
  setup do
    @line_item = line_items(:one)
  end

  test "visiting the index" do
    visit line_items_url
    assert_selector "h1", text: "Line Items"
  end

  test "creating a Line item" do
    sleep 3
    visit line_items_url
    sleep 3
    click_on "New Line Item"
    sleep 3
    fill_in "Cart", with: @line_item.cart_id
    sleep 3
    fill_in "Product", with: @line_item.product_id
    sleep 3
    click_on "Create Line item"
    sleep 3
    assert_text "Line item was successfully created"
    sleep 3
    click_on "Back"
  end

  test "updating a Line item" do
    visit line_items_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @line_item.cart_id
    fill_in "Product", with: @line_item.product_id
    click_on "Update Line item"

    assert_text "Line item was successfully updated"
    click_on "Back"
  end

  test "destroying a Line item" do
    visit line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line item was successfully destroyed"
  end
end

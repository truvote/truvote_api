require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "creating a Bill" do
    visit bills_url
    click_on "New Bill"

    fill_in "Body", with: @bill.body
    fill_in "Email", with: @bill.email
    fill_in "History", with: @bill.history
    fill_in "Status", with: @bill.status
    fill_in "Title", with: @bill.title
    fill_in "Voting date", with: @bill.voting_date
    fill_in "Website", with: @bill.website
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "updating a Bill" do
    visit bills_url
    click_on "Edit", match: :first

    fill_in "Body", with: @bill.body
    fill_in "Email", with: @bill.email
    fill_in "History", with: @bill.history
    fill_in "Status", with: @bill.status
    fill_in "Title", with: @bill.title
    fill_in "Voting date", with: @bill.voting_date
    fill_in "Website", with: @bill.website
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill" do
    visit bills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill was successfully destroyed"
  end
end

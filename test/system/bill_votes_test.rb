require "application_system_test_case"

class BillVotesTest < ApplicationSystemTestCase
  setup do
    @bill_vote = bill_votes(:one)
  end

  test "visiting the index" do
    visit bill_votes_url
    assert_selector "h1", text: "Bill Votes"
  end

  test "creating a Bill vote" do
    visit bill_votes_url
    click_on "New Bill Vote"

    fill_in "Amount", with: @bill_vote.amount
    fill_in "Bill", with: @bill_vote.bill_id
    fill_in "User", with: @bill_vote.user_id
    click_on "Create Bill vote"

    assert_text "Bill vote was successfully created"
    click_on "Back"
  end

  test "updating a Bill vote" do
    visit bill_votes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @bill_vote.amount
    fill_in "Bill", with: @bill_vote.bill_id
    fill_in "User", with: @bill_vote.user_id
    click_on "Update Bill vote"

    assert_text "Bill vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill vote" do
    visit bill_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill vote was successfully destroyed"
  end
end

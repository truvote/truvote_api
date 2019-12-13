require 'test_helper'

class BillVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_vote = bill_votes(:one)
  end

  test "should get index" do
    get bill_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_vote_url
    assert_response :success
  end

  test "should create bill_vote" do
    assert_difference('BillVote.count') do
      post bill_votes_url, params: { bill_vote: { amount: @bill_vote.amount, bill_id: @bill_vote.bill_id, user_id: @bill_vote.user_id } }
    end

    assert_redirected_to bill_vote_url(BillVote.last)
  end

  test "should show bill_vote" do
    get bill_vote_url(@bill_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_vote_url(@bill_vote)
    assert_response :success
  end

  test "should update bill_vote" do
    patch bill_vote_url(@bill_vote), params: { bill_vote: { amount: @bill_vote.amount, bill_id: @bill_vote.bill_id, user_id: @bill_vote.user_id } }
    assert_redirected_to bill_vote_url(@bill_vote)
  end

  test "should destroy bill_vote" do
    assert_difference('BillVote.count', -1) do
      delete bill_vote_url(@bill_vote)
    end

    assert_redirected_to bill_votes_url
  end
end

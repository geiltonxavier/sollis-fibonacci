require 'test_helper'

class FibonacciSequencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fibonacci_sequence = fibonacci_sequences(:one)
  end

  test "should get index" do
    get fibonacci_sequences_url, as: :json
    assert_response :success
  end

  test "should create fibonacci_sequence" do
    assert_difference('FibonacciSequence.count') do
      post fibonacci_sequences_url, params: { fibonacci_sequence: { quantidade: @fibonacci_sequence.quantidade } }, as: :json
    end

    assert_response 201
  end

  test "should show fibonacci_sequence" do
    get fibonacci_sequence_url(@fibonacci_sequence), as: :json
    assert_response :success
  end

  test "should update fibonacci_sequence" do
    patch fibonacci_sequence_url(@fibonacci_sequence), params: { fibonacci_sequence: { quantidade: @fibonacci_sequence.quantidade } }, as: :json
    assert_response 200
  end

  test "should destroy fibonacci_sequence" do
    assert_difference('FibonacciSequence.count', -1) do
      delete fibonacci_sequence_url(@fibonacci_sequence), as: :json
    end

    assert_response 204
  end
end

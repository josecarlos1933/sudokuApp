require 'test_helper'

class SudokusControllerTest < ActionController::TestCase
  setup do
    @sudoku = sudokus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sudokus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sudoku" do
    assert_difference('Sudoku.count') do
      post :create, sudoku: { difficulty: @sudoku.difficulty, player_id: @sudoku.player_id, solution: @sudoku.solution, time: @sudoku.time }
    end

    assert_redirected_to sudoku_path(assigns(:sudoku))
  end

  test "should show sudoku" do
    get :show, id: @sudoku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sudoku
    assert_response :success
  end

  test "should update sudoku" do
    patch :update, id: @sudoku, sudoku: { difficulty: @sudoku.difficulty, player_id: @sudoku.player_id, solution: @sudoku.solution, time: @sudoku.time }
    assert_redirected_to sudoku_path(assigns(:sudoku))
  end

  test "should destroy sudoku" do
    assert_difference('Sudoku.count', -1) do
      delete :destroy, id: @sudoku
    end

    assert_redirected_to sudokus_path
  end
end

json.array!(@sudokus) do |sudoku|
  json.extract! sudoku, :id, :difficulty, :time, :solution, :player_id
  json.url sudoku_url(sudoku, format: :json)
end

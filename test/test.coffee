assert = require("assert")

Grid = require('../src/grid').Grid
grid_definitions = require('../src/grid').grid_definitions

describe "Grid", ->

  before ->
    @large_desktop_grid = new Grid
      width:   grid_definitions.grid_desktop_large_width
      columns: grid_definitions.grid_number_of_columns
      gutter:  grid_definitions.grid_half_gutter

  it "should contain 12 columns", ->
    assert.equal @large_desktop_grid.columns.length, grid_definitions.grid_number_of_columns

  it "should be of the correct width", ->
    sum = 0
    sum += col.outer_width for col in @large_desktop_grid.columns
    assert.equal sum, grid_definitions.grid_desktop_large_width

  describe "Columns", ->

    it "should be of the correct width", ->
      expected_col_width = grid_definitions.grid_desktop_large_width / grid_definitions.grid_number_of_columns
      assert.equal(col.outer_width, expected_col_width) for col in @large_desktop_grid.columns
grid_definitions = 
  grid_number_of_columns: 12
  grid_half_gutter: 15
  grid_mobile_landscape: 480
  grid_mobile_portrait: 320
  grid_tablet_width: 750  
  grid_desktop_width: 970
  grid_desktop_large_width: 1170

Grid = class Grid
  constructor: (grid_definition) ->
    @columns = []
    @width = grid_definition.width
    col_outer_width = @width / grid_definition.columns
    for num in [1..grid_definition.columns]
      @columns.push(new Column(num, col_outer_width, grid_definition.gutter))

  get_columns: ->
    @columns

Column = class Column
  constructor: (num, @outer_width, half_gutter) ->
    inner_width = outer_width - 2 * half_gutter
    @left_outer_x = ( num - 1 ) * outer_width
    @left_inner_x = @left_outer_x + half_gutter
    @right_inner_x = @left_inner_x + inner_width
    @right_outer_x = @right_inner_x + half_gutter

  get_x_values: ->
    [@left_outer_x, @left_inner_x, @right_inner_x, @right_outer_x]

GridToPs = class GridToPs
  constructor: (@active_ps_doc, @grid) ->
  
  draw: ->
    doc_width = parseInt @active_ps_doc.width.value

    grid_offset = parseInt( ( doc_width - @grid.width ) / 2 )

    for col in @grid.columns
      for x_value in col.get_x_values()
        @active_ps_doc.guides.add Direction.VERTICAL, x_value + grid_offset

draw_grid = (grid_definition) ->
  if app.documents.length > 0
    active_ps_doc = app.activeDocument

    grid = new Grid(grid_definition)
    grid_to_ps = new GridToPs(active_ps_doc, grid)
    grid_to_ps.draw()

if module?
  module.exports.Grid = Grid
  module.exports.Column = Column
  module.exports.grid_definitions = grid_definitions
extends Resource
class_name Grid

# The grid's size in rows and columns.
@export var size := Vector2(20, 20)
# The size of a cell in pixels.
@export var cell_size := Vector2(128, 128)

# Half of ``cell_size``.
# We will use this to calculate the center of a grid cell in pixels, on the screen.
# That's how we can place units in the center of a cell.
var _half_cell_size = cell_size / 2

# Returns the position of a cell's center in pixels.
func calculate_map_position(grid_position: Vector2) -> Vector2:
	return grid_position * cell_size + _half_cell_size
	
# Returns the coordinates of the cell on the grid given a position on the map.
func calculate_grid_coordinates(map_position: Vector2) -> Vector2:
	return (map_position / cell_size).floor()

# Returns true if the `cell_coordinates` are within the grid.
func is_within_bounds(cell_coordinates: Vector2) -> bool:
	var out := cell_coordinates.x >= 0 and cell_coordinates.x < size.x
	return out and cell_coordinates.y >= 0 and cell_coordinates.y < size.y
	
# Makes the `grid_position` fit within the grid's bounds.
# This is a clamp function designed specifically for our grid coordinates.
# The Vector2 class comes with its `Vector2.clamp()` method, but it doesn't work the same way: it
# limits the vector's length instead of clamping each of the vector's components individually.
# That's why we need to code a new method.
func clamp(grid_position: Vector2) -> Vector2:
	var out := grid_position
	out.x = clamp(out.x, 0, size.x - 1.0)
	out.y = clamp(out.y, 0, size.y - 1.0)
	return out

# Given Vector2 coordinates, calculates and returns the corresponding integer index.
func as_index(cell: Vector2) -> int:
	return int(cell.x + size.x * cell.y)

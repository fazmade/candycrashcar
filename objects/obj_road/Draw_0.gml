var piece = floor(-x / chunksize)
draw_sprite(sprite_index, piece, x + (piece * chunksize), y)
draw_sprite(sprite_index, piece + 1, x + (piece * chunksize) + chunksize, y)
pen p=defaultpen+linewidth(2); // Set the pen width

// Brim
draw((0,-10) .. (3.5,-13) .. (10,-15) -- (30,-15) .. (36.5,-13) .. (40,-10), p);

// Top
draw((10,-15) -- (10,18) -- (30,18) -- (30,-15), p);

// Belt
draw((10,-10) -- (30,-10), p);

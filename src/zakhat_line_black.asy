unitsize(20);

pen p=defaultpen+linewidth(50); // Set the pen width

// Brim
draw((0,-10) .. (3.5,-13) .. (10,-15) -- (30,-15) .. (36.5,-13) .. (40,-10), p);

// Top
draw(box((10,18), (30,-10)), p);

// Belt
draw(box((10,-10), (30,-15)), p);

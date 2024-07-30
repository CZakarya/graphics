unitsize(20);

pen p=defaultpen+linewidth(50); // Set the pen width

// Brim
draw((0,-28) .. (3.5,-31) .. (10,-33) -- (30,-33) .. (36.5,-31) .. (40,-28), p);

// Top
draw(box((10,0), (30,-26)), p);

// Belt
draw(box((10,-26), (30,-33)), p);

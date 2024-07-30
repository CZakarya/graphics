access "src/global.asy" as global;
access "src/zakhat/zakhat.asy" as zakhat;

unitsize(global.unit_size);

pen p=defaultpen+linewidth(zakhat.size_medium); // Set the pen width

// Brim
draw(zakhat.brim, p);

// Top
draw(zakhat.top, p);

// Belt
draw(zakhat.belt, p);

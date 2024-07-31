access "src/global.asy" as global;
access "src/zakhat/zakhat.asy" as zakhat;

unitsize(global.unit_size);

pen p=defaultpen+linewidth(zakhat.size_small)+white;

// Brim
draw(zakhat.brim, p);

// Top
filldraw(zakhat.top, drawpen=p, fillpen=white);

// Belt
draw(zakhat.belt, p);

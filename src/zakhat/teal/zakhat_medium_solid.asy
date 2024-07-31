access "src/global.asy" as global;
access "src/zakhat/zakhat.asy" as zakhat;

unitsize(global.unit_size);

pen p=defaultpen+linewidth(zakhat.size_medium)+global.zakarya_teal;

// Brim
draw(zakhat.brim, p);

// Top
filldraw(zakhat.top, drawpen=p, fillpen=global.zakarya_teal);

// Belt
draw(zakhat.belt, p);

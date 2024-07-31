access "src/global.asy" as global;
access "src/zakhat/zakhat.asy" as zakhat;

unitsize(global.unit_size);

pen p=defaultpen+linewidth(zakhat.size_medium)+global.zakarya_gray_2;

// Brim
draw(zakhat.brim, p);

// Top
filldraw(zakhat.top, drawpen=p, fillpen=global.zakarya_gray_2);

// Belt
draw(zakhat.belt, p);

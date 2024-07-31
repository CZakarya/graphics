access "src/global.asy" as global;
access "src/zakhat/zakhat.asy" as zakhat;

unitsize(global.unit_size);

pen p=defaultpen+linewidth(zakhat.size_medium)+global.zakarya_gray_5;

// Brim
draw(zakhat.brim, p);

// Top
draw(zakhat.top, p);

// Belt
draw(zakhat.belt, p);

access "src/global.asy" as global;

int size_small = 70;
int size_medium = 50;

path brim = (0,-28) .. (3.5,-31) .. (10,-33) -- (30,-33) .. (36.5,-31) .. (40,-28);

path top = box((10,0), (30,-26));

path belt = box((10,-26), (30,-33));

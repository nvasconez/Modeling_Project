fileName = 'octanol_360k.json';
fid = fopen(fileName);
raw = fread(fid,inf);
str = char(raw');
fclose(fid);
data = jsondecode(str);
D = data.Diffusivity
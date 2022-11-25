clear; close all;

%--25p--
fileName = 'octanol_diEther_25p.json'; % filename in JSON extension
fid = fopen(fileName); % Opening the file
raw = fread(fid,inf); % Reading the contents
str = char(raw'); % Transformation
fclose(fid); % Closing the file
data = jsondecode(str); % Using the jsondecode function to parseJSON from string
Diffusivity_25 = data.Diffusivity

figure;
plot(data.RDF.distance,data.RDF.octanol_octanol);
xlabel('distance');
ylabel('g(r)');
title('g(r) for octanol in 25% diEther');

%--50p--
fileName = 'octanol_diEther_50p.json'; % filename in JSON extension
fid = fopen(fileName); % Opening the file
raw = fread(fid,inf); % Reading the contents
str = char(raw'); % Transformation
fclose(fid); % Closing the file
data = jsondecode(str); % Using the jsondecode function to parseJSON from string
Diffusivity_50 = data.Diffusivity

figure;
plot(data.RDF.distance,data.RDF.octanol_octanol);
xlabel('distance');
ylabel('g(r)');
title('g(r) for octanol in 50% diEther');

%--75p--
fileName = 'octanol_diEther_75p.json'; % filename in JSON extension
fid = fopen(fileName); % Opening the file
raw = fread(fid,inf); % Reading the contents
str = char(raw'); % Transformation
fclose(fid); % Closing the file
data = jsondecode(str); % Using the jsondecode function to parseJSON from string
Diffusivity_752.16 = data.Diffusivity

figure;
plot(data.RDF.distance,data.RDF.octanol_octanol);
xlabel('distance');
ylabel('g(r)');
title('g(r) for octanol in 75% diEther');




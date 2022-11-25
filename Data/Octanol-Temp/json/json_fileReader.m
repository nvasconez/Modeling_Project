clear; close all;

%--Statepoint 3--
fileName = 'octanol_trappe.json'; % filename in JSON extension
fid = fopen(fileName); % Opening the file
raw = fread(fid,inf); % Reading the contents
str = char(raw'); % Transformation
fclose(fid); % Closing the file
data = jsondecode(str); % Using the jsondecode function to parseJSON from string
Diffusivity_S3 = data.Diffusivity

figure;
plot(data.RDF.distance,data.RDF.octanol_octanol);
xlabel('distance');
ylabel('g(r)');
title('g(r) for T = 303K and Density = 0.7873');


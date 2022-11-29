clear;
Density = [0.824];       %g/cm^3
MW = 146.23;             %g/mol
Avogadro = 6.022*10^23; %N/mol
N = 200;                %Number of Molecules

NumberDensity = (Density ./ MW) * Avogadro;

Volume = NumberDensity ./ 10^24;         %Angstroms

Box_length = (([1]./Volume) * N).^(1/3)    %One-Side

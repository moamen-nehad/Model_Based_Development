% Generating a figure that represents the Palestine flag

%% Defining the flag colors
GreenColor = [0 0.7 0];
WhiteColor = [1 1 1];
RedColor = [0.9 0 0];
BlackColor = [0 0 0];

%% Generating the flag figure and Defining the flag size
FlagWidth = 600;
FlagHeight = 400;
figure('Position' , [200 100 FlagWidth FlagHeight]);
hold on;
title('Free Palestine','FontSize',20,'Color',RedColor);
axis off;


%% Defining the colors x&y points
GreenX = [0 FlagWidth FlagWidth FlagWidth/3];
GreenY = [0 0 FlagHeight/3 FlagHeight/3];

WhiteX = [FlagWidth/3 FlagWidth FlagWidth FlagWidth/3 FlagWidth/2];
WhiteY = [FlagHeight/3 FlagHeight/3 2*FlagHeight/3 2*FlagHeight/3 FlagHeight/2];

RedX = [0 FlagWidth/2 0];
RedY = [0 FlagHeight/2 FlagHeight];

BlackX = [FlagWidth/3  FlagWidth FlagWidth 0];
BlackY = [2*FlagHeight/3 2*FlagHeight/3 FlagHeight FlagHeight];

%% Filling the figure with the colors
fill(GreenX,GreenY,GreenColor); %Filling Green color
fill(WhiteX,WhiteY,WhiteColor); %Filling White color
fill(RedX,RedY,RedColor); %Filling Red color
fill(BlackX,BlackY,BlackColor); %Filling Black Color
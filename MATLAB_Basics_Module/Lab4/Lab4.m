%% Task 1: While Loop

%Write a MATLAB script that uses a while loop to print even numbers from 2 to 20.

x=[2:20];
index1=1;
while index1<20
    if rem(x(index1),2)==0
        if index1 == 19
            fprintf('%i\n',x(index1));
        else 
            fprintf('%i, ',x(index1));
        end
    end
    index1=index1+1;
end


%Create a script that calculates the factorial of a given number using a while loop. Prompt the user for input.

UserInput= input('Enter a number to calculate its factorial: ');
index2 = UserInput;
F=UserInput;
while index2>1
    F=F*(index2-1);
    index2=index2-1;
end
fprintf('Factorial %i = %d\n',UserInput,F);

%% Task 2: Switch Statement

%Write a MATLAB script to calculate the cost of a trip based on the mode of transportation. Use a switch statement to handle different cases. The modes are: car, train, bus, and airplane. Each mode has a different cost per mile.

Miles= input('Enter the trip distance in miles: ');
TripMode = input('Enter the desired trip mode (car, train, bus, or airplane):','s');
switch TripMode
    case 'car'
        TripCost = 0.16 * Miles;
        fprintf('Trip cost = %d\n' , TripCost);
    case 'train'
        TripCost = 0.1 * Miles;
        fprintf('Trip cost = %d\n' , TripCost);
    case 'bus'
        TripCost = 0.12 * Miles;
        fprintf('Trip cost = %d\n' , TripCost);
    case 'airplane'
        TripCost = 0.4 * Miles;
        fprintf('Trip cost = %d\n' , TripCost);
    otherwise
        fprintf('Drive mode is not supported\n')
end

%Create a script that translates a color code into its corresponding name using a switch statement. Prompt the user for input and handle at least five different color codes.

ColorRGB = input('Enter the RGB values ranging from 0 to 1 (e.g.[0 0 0]: ');
ColorStr=mat2str(ColorRGB,1);
switch ColorStr
    case mat2str([0 0 0],1)
        fprintf('The Color is BLACK\n');
    case mat2str([1 1 1],1)
        fprintf('The Color is WHITE\n');
    case mat2str([1 0 0],1)
        fprintf('The Color is RED\n');
    case mat2str([0 1 0],1)
        fprintf('The Color is GREEN\n');
    case mat2str([0 0 1],1)
        fprintf('The Color is BLUE\n');
    case mat2str([1 0.5 0],1)
        fprintf('The Color is ORANGE\n');
    case mat2str([0.5 0 0.5],1)
        fprintf('The Color is Purple\n');
    otherwise 
        fprintf('The Color is not identified by the program\n');
end


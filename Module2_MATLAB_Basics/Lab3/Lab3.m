% Lab 3 Tasks


%% Cell Arrays
%Create a cell array containing various data types (numbers, text, and variables).
Var1 = 10;
Var2 = 20;
cellArray = {1 'MBD' Var1 Var2};
%Access and display specific elements within the cell array.
for i = 1:numel(cellArray)
    cellArray{i}
end

%% Structures
%Create a simple structure to store information about a person (name, age, city).
PersonInfo = struct('Name','Moamen','Age',21,'City','Cairo');
Names = fieldnames(PersonInfo);
%Access and display the structure fields.

for i = 1:numel(fieldnames(PersonInfo))
  disp([Names(i) PersonInfo.(Names{i})]);
end


%% Character Data
%Create a character array with your name.
MyFirstName = 'Moamen';
MyLastName = 'Nehad';
%Concatenate your name with another character array.
MyFullName = [MyFirstName ' ' MyLastName];
%Display the results.
disp(['Full Name: ' MyFullName]);


%% Conditional Statements (If)
%Write an if statement that checks if a number is even or odd.
%Display a message based on the result of the if statement.

x = 5;
if rem(x,2)==0
    fprintf('The No. %i is even.\n' , x');
else
    fprintf('The No. %i is Odd.\n' , x);
end
 

%% For Loops
%Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
%Display the numbers within the loop.
for i=1:10 
    disp(['i= ' num2str(i)]);
end


%% Basic Plotting

%Generate data for a simple plot (e.g., a sine wave).
%Plot the data with proper labels and a legend.

x=0:0.01:2*3.14;
y=sin(x);
plot(x,y,'Color',[0 0.9 0.01]);
xlabel 'X-axis';
ylabel 'Y-axis';
title 'Sine Wave';

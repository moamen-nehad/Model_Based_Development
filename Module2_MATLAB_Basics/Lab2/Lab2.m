%% Numeric Types
intVar = uint8(5)
disp(['data type of intvar: ' class(intVar)]);
doubleVar = 5.22
disp(['data type of doublevar: ' class(doubleVar)]);

%% Creating Numeric Arrays
evenNumbers = [2 4 6 8 10]
primeNumbers = [2 ; 3 ; 7 ; 11]

%% Specialized Matrix Functions
identityMatrix = eye(3)
magicSquare = magic(2) %note: magic squares only work for n>2

%% Matrix Concatenation:
combinedVector = [evenNumbers , primeNumbers']
combinedMatrix = [identityMatrix ; padarray(magicSquare, [1 1], 0, 'post')] %note: padarray function adds 1 rowcolumn o zeros to the magic array to make there size compatible with the identity matrix
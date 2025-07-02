%% Part1: Creating Numeric Arrays
matrixA = [3 2 1 ; 6 5 4 ; 9 8 7];
matrixB = [12 11 10 ; 15 14 13 ; 18 17 16];
matrixSum = matrixA + matrixB
%% Part2: Matrix Concatenation
rowVector = [1:5];
columnVector = [6;7;8;9;10];
horizontalConcat = [rowVector,columnVector']
%% Using repmat Function
originalMatrix = [1 2 ; 3 4];
repeatedMatrix = repmat(originalMatrix,2)
%% Part4: Challenge 
identityMatrix = eye(3);
matrixProduct = identityMatrix * matrixA


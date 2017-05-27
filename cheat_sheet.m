
% Basic operations
%====================
5+6
sqrt(2) % square root
log(2)
exp(2)
abs(2)
2^3 % power
1==1 %equality
1~=1 %inequality
a=1 %assignation + display
a=1; %assignation without display
disp(sprintf('toto : %0.3f', a)) %Affichage
format long % set display format with more precision
format short % set display format with less precision (4)

% Special numbers
%====================
pi

% Matrix generations
%====================
A = [1 2 ; 3 4 ; 5 6 ] % Matrix definition.
v = 1:0.1:2 % matrix definition 1 to 2 with 0.1 steps
ones(2,3) % Generate an all ones matrix
zeros(2,3) % Generte an all zeros matrix
eye(4) %generate an identity matrix
rand(2,3) % random matrix with normal distribution
randn(3,3) % random number matrix with gaussian distribution
magic(3) % generate square magic matrix

% Matrix operations
%====================
A=[1 2;3 4;5 6];size(A) % Get a matrix size
A=[1 2;3 4;5 6];size(A,1) % Get a matrix size of the first dimension
A=[1 2;3 4;5 6];length(A) % Get a matrix higher dimension
v=myVector(1:10) % set v as the ten firsts elements of myVector
myMatrix(2,5) % get the matrix element at position (2,5)
myMatrix(2,:) % get the whole line / the whole column
myMatrix([1 3],:) % get the whole first and third lines
A(:,2) = [ 10;11;12 ] %change the 2nd column of A
A = [A, [101; 102; 103]] %append another column vector to the right
A(:) % Puts all elements of A into a single column vector
C = [matrix1 matrix2] %concatenate 2 matrix in one left/right
C = [matrix1 ; matrix2] %concatenate 2 matrix in one up/down
C = [ 1 2 ; 3 4 ]*[5 6 ; 7 8] % Normal matrix multiplication
C = [ 1 2 ; 3 4 ].*[5 6 ; 7 8] %multiplication of each term with the corresponding other one.
A.^2 % element wise squaring operation.
1./A % element wise reciprocal operation.
V+1 % = V + ones(length(v),1)
A' % transpose
[value, index] = max([1 5 3 4]) % return [5 2]
[1 2 3] < 2 % = [1 0 0]
find([1 2 3] < 3) % = [1 2]
sum([1 2 3]) % = 6
sum([1 2 ; 1 2], 1) % sum columns
sum([1 2 ; 1 2], 2) % sum rows
prod([1 2 3]) % = 7
floor([1 2 3])
ceil([1 2 3])
max(A,B) % get the max for each number
flipud(A) % flip up down the matrix
pinv(A) % inverse the matrix
find(y == 1) % get indices i of vector y where yi=1
% Plotting
%====================
hist(randn(1,10000)); % plot an histogram
plot(x,y) % plot the Y function giving it x values. 3rd parameter is color.
hold on % plot the new figure on top of the old one
xlabel('label of X axis')
ylabel('label of Y axis')
legend('function1', 'function2')
print -dpng 'myPlot.png' %save the image.
figure(1); plot(x, y1);
figure(2); plot(x, y2); %to have 2 figure windows at the same time
subplot(1,2,1); plot(x, y1); subplot(1,2,2); plot(x, y2); %divide the plot in 1x2 grid, access the first element
axis([0.5 1 -1 1] %set the range of the ploting area
clf % clear figures
imagec(matrix) % plot a graphical matrix representation
imagec(A), colorbar, colormap grey; %same but with legend and grey levels

% Controle structure
%====================
for i=1:10,
  v(i)=i;
end

while i<=10,
  v(i)=2^i;
  if i==3,
    break;
  elseif v(1) == ,
    continue;
  end;
  i=i+1;
end;

% Define function
%=================
function y = squareThisNumber(x)
y=sqrt(x);
function [y1,y2] = squareAndCubeThisNumber(x)
y1=sqrt(x);
y2=x^3;
%save it in a file .m in the workspace


% File Operations
%====================
pwd % get local folder
ls % list directory
cd % change directory
load testLoad.dat % Load a file as matrix and name it testLoad
save myMatrix out.dat % save myMatrix in the out.dat file.
save myMatrix out.text -ascii % save in non compressed format.

% Octave operations
%====================
who % show disponible variables.
whos % more detailed view.
clear myVariable % delete the variable of the scope
clear % clear all variables.
help clear % display help on the command.
addpath('c:/') % add a path as a search path for octave functions.
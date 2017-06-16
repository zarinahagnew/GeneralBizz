% preallocating

%cell array
c = cell(m, n, p,...)
    


A = zeros(25000, 10000);
% Building a Preallocated Array
% 
% Once memory has been preallocated for the maximum estimated size of the array, you can store your data in the array as you need it, each time appending to the existing data. This example preallocates a large array, and then reads blocks of data from a file into the array until it gets to the end of the file:

blocksize = 5000;
maxrows = 2500000; cols = 20;
rp = 1;     % row pointer

% Preallocate A to its maximum possible size
A = zeros(maxrows, cols);

% Open the data file, saving the file pointer.
fid = fopen('statfile.dat', 'r');
 
while true
   % Read from file into a cell array.  Stop at EOF.
   block = textscan(fid, '%n', blocksize*cols);
   if isempty(block{1})   break,   end;
 
   % Convert cell array to matrix, reshape, place into A.
   A(rp:rp+blocksize-1, 1:cols) = ...
      reshape(cell2mat(block), blocksize, cols);
 
   % Process the data in A.
   evaluate_stats(A);               % User-defined function
 
   % Update row pointer
   rp = rp + blocksize;
end
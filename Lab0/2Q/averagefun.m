
function averagefun(M, N, P)
A=randi(20, M, N, P);       %randi function is used to generate integer random numbers
disp("The random matrix generated is as follows");
disp(A);
%to find the individual m nXp matrices we can use " squeeze(A(i, :, :))"
meanArr=squeeze(mean(A));
disp("The average matrix is as follows");
disp(meanArr);

end


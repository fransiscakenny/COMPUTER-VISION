%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fransisca K Larasati - HW1P %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Matrices and Vectors: 
% 1. 
v = 5*randn(1000000, 1) + 0;
% 2.
tic
for i=1:size(v,1)
    v(i, 1) = v(i, 1) + 1;
    fprintf('%u\n',v(i, 1) + 1)
end
toc
% 3.
tic
w = v+1
toc
% 4.
A = horzcat(reshape([1:50], 10, 5), zeros(10, 5))
B = horzcat(zeros(10, 5), reshape([51:100], 10, 5))
C = A + B;
assert(all(C(:) == (1:100)') == 1);
% 5. 
X = 0:2:100;
Y = 2.^X;
plot(X,Y)

% Loops Allowed:
% 6. 
for i=1:10
    fprintf('%u\n', i)
    pause(1)
end
% 7.
A = rand(5,3)
B = rand(3,5)
C = zeros(5,5)
% Assuming we know that 1st matrix's column and 2nd matrix's row 
% is the same.
for i=1:size(A, 1) %row = 5
    for j=1:size(B, 2) %column = 5
        sum = 0;
        for k=1:size(A, 2)
            mul = A(i, k)*B(k, j);
            sum = sum + mul;
        end
        C(i, j) = sum;
    end
end
C

% Functions:
% 8. 
normalize_rows(A)

% 9.
normalize_columns(A)

% 10.
ficlcb(5)

% 11.
TEST = [0 0 1; 0 0 1; 1 2 3; 4 5 6; 1 2 3]
my_unique[TEST]

% Images:
% 12. 
I = imread('pittsburgh.png'); % Read a PNG image
figure                        % Create new figure canvas
imshow(I)                     % Display the image
size(I)

% 13. 
I_Gray = rgb2gray(I);
figure
imshow(I_Gray)

% 14.
sum(sum(I_Gray == 6))

% 15.
Darkest = min(I_Gray(:))
[dval, dind] = min(I_Gray(:))
[row, col] = ind2sub(size(I_Gray), dind)


% 16. 
I_Mod = I_Gray
srow = row - 15;
scol = col - 15;
erow = row + 16;
ecol = col + 16;

for i=[srow:erow]
    for j=[scol:ecol]
        I_Mod(i, j) = 255;
    end
end

figure
imshow(I_Mod)  

% 17.
I_Mod1 = I_Mod;
rows1 = size(I_Mod1, 1)
cols1 = size(I_Mod1, 2)
I_Mod1((rows1/2-60):(rows1/2+61), (cols1/2-60) : (cols1/2+61)) = 150

figure
imshow(I_Mod1)

% 18.
figure
imshow(I_Mod1)
saveas(gcf, 'new_image.png')

% 19. 
I2 = imread('pittsburgh.png'); % Read a PNG image
red = I2(:, :, 1);
green = I2(:, :, 2);
blue = I2(:, :, 3);

red_save = mean(mean(red));
green_save = mean(mean(green));
blue_save = mean(mean(blue));

I2(:, :, 1) = I2(:, :, 1) - red_save;
I2(:, :, 2) = I2(:, :, 2) - green_save;
I2(:, :, 3) = I2(:, :, 3) - blue_save;

figure
imshow(I2)
saveas(gcf, 'mean_sub.png')


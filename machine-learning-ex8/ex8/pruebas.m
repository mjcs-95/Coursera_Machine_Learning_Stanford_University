clear ; close all; clc
fprintf('Loading movie ratings dataset.\n\n');
load ('ex8_movies.mat');
fprintf('Average rating for movie 1 (Toy Story): %f / 5\n\n', ...
        mean(Y(1, R(1, :))));
imagesc(Y);
ylabel('Movies');
xlabel('Users');

load ('ex8_movieParams.mat');
%  Reduce the data set size so that this runs faster
num_users = 4; num_movies = 5; num_features = 3;
X = X(1:num_movies, 1:num_features);
Theta = Theta(1:num_users, 1:num_features);
Y = Y(1:num_movies, 1:num_users);
R = R(1:num_movies, 1:num_users);


J = cofiCostFunc([X(:) ; Theta(:)], Y, R, num_users, num_movies, ...
               num_features, 0);           

               
fprintf(['Cost at loaded parameters: %f '...
         '\n(this value should be about 22.22)\n'], J);

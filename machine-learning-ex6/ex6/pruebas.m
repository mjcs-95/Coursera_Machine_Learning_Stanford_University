clear ; close all; clc
fprintf('\nPreprocessing sample email (emailSample1.txt)\n');
file_contents = readFile('emailSample1.txt');
word_indices  = processEmail(file_contents);
fprintf('Word Indices: \n');
fprintf(' %d', word_indices);
fprintf('\n\n');


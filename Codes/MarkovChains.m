clc
clear
close all

%%

words = ["Hi", "I", "dog", "am", "a"]; % words detected 

pi = [0.45, 0.35, 0.02, 0.08, 0.1]; % probabilities of words
transition_matrix = [0.001, 0.7, 0.25, 0.0245, 0.0245; % probabilities of transition between states
                     0.03, 0.07, 0.15, 0.65, 0.1;
                     0.0245, 0.0245, 0.7, 0.001, 0.25;
                     0.02, 0.15, 0.08, 0.1, 0.65;
                     0.003, 0.15, 0.8, 0.0235, 0.0235];

[argmax, index] = max(pi);
sent = [];
disp(sent);

for a=1:5
    sent = [sent, words(index)];
    disp(sent); % printing sentence after each iteration
    temp = transition_matrix(index,1:5);
    [argmax, index] = max(temp);
    
end

disp("Final order of words/Most likely sentence given detected words:")
disp(sent);

%%










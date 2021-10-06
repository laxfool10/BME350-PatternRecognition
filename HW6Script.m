%% Homework #6
%% Problem 1
m_runs = 3;                             % Set number of runs
for m = 1:m_runs                        % Loop through number of runs
    N = 10000;                         % Set number of simulations per run
    le = 1;                             % Needle length
    d=2;                                % Grid spacing set to 2
    x = d/2*rand(1, N);                 % random x between 0 and d/2
    theta = pi*rand(1, N);              % theta between 0 and pi
    hits = x<le/2*sin(theta);           % hits a vector of 0's and 1's
    pi_est(m) = N/sum(hits)*2*le/d;     % pi
end 
pi_est()

%% Problem 2
L = 1;                  % Step_length
m_runs = 50000;
for m = 1:m_runs 
    x0 = 0;
    n_steps = 10000;
    for i= 1:n_steps
        if rand()<.5
            x0 = x0 + L;
        else
            x0 = x0 - L;
        end
    end
    distance(m) = x0; 
end
histogram(distance(), 'normalization', 'pdf')
xlabel("Distance from 0");ylabel("Occurances");title("Random Walk Distribution");
hold on
xf = -500:.1:500;
y = normpdf(xf, 0, sqrt(n_steps)*L);
plot(xf,y)
hold off


%% Problem 2




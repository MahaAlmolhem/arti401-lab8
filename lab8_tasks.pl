
% Task 2: Sum all numbers in a list

sumlist([], 0).

sumlist([H|T], Sum) :-
    sumlist(T, Rest),
    Sum is H + Rest.

% Task 3: Calculate Total and Average

total_average :-
    write('Enter the first number: '),
    read(A),

    write('Enter the second number: '),
    read(B),

    write('Enter the third number: '),
    read(C),

    Total is A + B + C,
    Average is Total / 3,

    write('Total = '),
    writeln(Total),

    write('Average = '),
    writeln(Average).

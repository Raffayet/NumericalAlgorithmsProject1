function r = func1B(A)

[rows, columns] = size(A);

if rows ~= 9 || columns ~= 9
    r = "greska";
    return
end

numbers = [1 2 3 4 5 6 7 8 9];

counter = 0;

for i = 1:9
    for row = 1:length(numbers)
        counter = 0;
        for column = 1:columns
            if i == A(row, column)
                counter = counter + 1;
            end
        end
        if counter ~= 1
            r = 0;
            return
        end
    end
end

r = 1;

end


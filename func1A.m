function r = func1A(A)

[rows, columns] = size(A);

if rows ~= columns
    r = "greska";
    return
end

if rows < 3 || columns < 3
    r = "greska";
    return
end

r = size(rows - 1, columns - 1);  %S obzirom da r predstavlja matricu 
                                  %najvecih elemenata podmatrica 2x2,
                                  %njene dimenzije ce biti za 1 manje od A

for row = 1:rows-1
    for column = 1:columns-1
        maximum = A(row, column);
        for i = row:row+1
            for j = column:column+1
                if A(i, j) > maximum
                    maximum = A(i, j);
                end
            end  
        end
        
        r(row, column) = maximum;
    end
end

end


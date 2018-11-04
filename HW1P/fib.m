function f = fib(n)
current = 0;
prev = 0;
for i=1:n
    i
    if i == 1
        current = 1;
        prev = 0;
    end
    if i == 2
        current = 1;
        prev = 1;
    elseif i > 2
        backup = prev;
        prev = current;
        current = current + backup;
    end
end
f = current
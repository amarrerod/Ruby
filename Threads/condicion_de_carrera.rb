

def increase(n)
    return n+1
end

mutex = Mutex.new
suma = 0
threads = (1..10).map do
        Thread.new do
            100_000.times do
                mutex.synchronize do
                    suma = increase(suma)
                end
            end
        end
    end
    
threads.each(&:join)
print suma

function project_euler_1()
    pool::Int64 = 0
    for i::Int64 = 3:999
        if i % 3 == 0 || i % 5 == 0
            pool += i
        end
    end
    pool
end

project_euler_1_result = project_euler_1()
println("project euler 1 answer: ", project_euler_1_result)

function project_euler_2()
    pool::Int64 = 0
    x::Int64 = 1
    y::Int64 = 2
    while y <= 4000000
        if y % 2 == 0
            pool += y
        end
        y += x
        x = y - x
    end
    pool
end

project_euler_2_answer = project_euler_2()
println("project euler 2 answer: ", project_euler_2_answer)

function is_prime(x)
    for i = 2:x
        if (i < x) && (x % i == 0)
            return false
        end
    end
    true
end

function project_euler_3()
    num::Int64 = 600851475143 # Find the largest prime factor of this number
    prime_factor::Int64 = 1
    prime_num::Int64 = 2
    condition = true

    while condition
        if num <= 1
            condition = false
        elseif num % prime_num == 0
            num /= prime_num
            prime_factor = prime_num
        else
            for i = prime_num + 1:prime_num + 6582144
                if is_prime(i)
                    prime_num = i
                    break
                end
            end
        end
    end
    prime_factor
end

project_euler_3_answer = project_euler_3()
println("project euler 3 answer: ", project_euler_3_answer)

function project_euler_4()
    largest = 0
    for i in reverse(1:999)
        for j in reverse(1:999)
            if (reverse(string(i * j)) == string(i * j)) && (i * j > largest)
                largest = i * j
            end
        end
    end
    largest
end

project_euler_4_answer = project_euler_4()
println("project euler 4 answer: ", project_euler_4_answer)

function is_rem_in_arr(x, y)
    for i in x, j in y
        if i % j != 0
            return false
        end
    end
    true
end

function project_euler_5()
    dividers = [i for i = 1:20]
    i = [20 for i = 1:20]
    while true
        if is_rem_in_arr(i, dividers)
            return i[1]
        else
            i = i .+ 20
        end
    end
end

project_euler_5_answer = project_euler_5()
println("project euler 5 answer: ", project_euler_5_answer)

function project_euler_6()
    sum_of_sq = 0
    sq_of_sum = 0
    for i = 1:100
        sum_of_sq += i * i
        sq_of_sum += i
    end
    sq_of_sum * sq_of_sum - sum_of_sq
end

project_euler_6_answer = project_euler_6()
println("project euler 6 answer: ", project_euler_6_answer)

function project_euler_7()
    count::Int32 = 1
    prime::Int32 = 3
    while count < 10001
        if is_prime(prime)
            count += 1
            prime += 1
        else
            prime += 1
        end
    end
    prime - 1
end

project_euler_7_answer = project_euler_7()
println("project euler 7 answer: ", project_euler_7_answer)

function project_euler_8()
    euler_8_number::String = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"

    largest_num = 0

    for i = firstindex(euler_8_number):length(euler_8_number) - 12
        test_num_str = euler_8_number[i:i+12]
        test_num_str = split(test_num_str, "")
        temp = 1
        for num in test_num_str
            temp *= parse(Int64, num)
        end
        if temp > largest_num
            largest_num = temp
        end
    end
    largest_num
end

project_euler_8_answer = project_euler_8()
println("project euler 8 answer: ", project_euler_8_answer)

function project_euler_9()
    target = 1000
    a = 1
    b = 1
    c = 1

    
end

project_euler_9_answer = project_euler_9()
println("project euler 9 answer: ", project_euler_9_answer)

function project_euler_10()
    sum_total::Int64 = 0
    for i::Int64 = 2:1999999
        if is_prime(i)
            sum_total += i
        end
    end
    sum_total
end

project_euler_10_answer = project_euler_10()
println("project euler 10 answer: ", project_euler_10_answer)

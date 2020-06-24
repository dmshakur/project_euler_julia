using DelimitedFiles

function project_euler_11()
    grid = readdlm("project_euler_11.csv", ' ', UInt8, '\n', header = false)
    original_dim = size(grid)
    grid = hcat(grid, zeros(UInt8, size(grid)[1], 3))
    grid = vcat(grid, zeros(UInt8, 3, size(grid)[2]))

    search(m, n) = [
        prod(grid[m,n:n+3]),
        prod(grid[m:m+3,n]),
        prod([grid[m,n], grid[m+1,n+1], grid[m+2,n+2], grid[m+3,n+3]]),
        prod([grid[m+3,n], grid[m+2,n+1], grid[m+1,n+2], grid[m,n+3]]),
    ]
    max_product::Int64 = 0
    
    for m = 1:original_dim[1], n = 1:original_dim[2]
        maximum_value = maximum(search(m, n))
        if maximum_value > max_product
            max_product = maximum_value
        end
    end

    max_product
end

project_euler_11_answer = project_euler_11()
println("project euler 11 answer: ", project_euler_11_answer)

function project_euler_12()
    
end

project_euler_12_answer = project_euler_12()
println("project euler 12 answer: ", project_euler_12_answer)
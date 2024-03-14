using Polynomials

function print_macierz(m) 
  for row in m
    for c in row 
      print(c)
      print(" | ")
    end
    println(" ")
    println("-----------------------------------------------------------------------")
  end
end

function print_nr(n)
  print("RUCH nr ")
  println(n)
  println("========================================")
end

P = LaurentPolynomial;

macierz = [
           [P([1], 1) , P([-2, 1], 1), P([0],0), P([1, -1], 1)],
           [P([-1, 2, -1], -1), P([-1, 2, -1], 0), P([1], -1), P([-1, -1, 1], 0)],
           [ P([1, -2], -1), P([1, -1], 0), P([-1, 1], -1), P([1], 1) ],
           [ P([0], 0), P([1], 1), P([-1], 0), P([1, -1], 0)]
          ]

print_macierz(macierz)
println("==================================================")

temp = []
temp2 = []
for i in 1:4
  push!(temp, macierz[2][i] - P([1], -1) * macierz[2][1] * macierz[1][i])
  push!(temp2, macierz[3][i] - P([1], -1) * macierz[3][1] * macierz[1][i])
end

macierz[2] = temp
macierz[3] = temp2

temp = macierz[4]
macierz[4] = macierz[2]
macierz[2] = temp

temp = [P([0], 0)]
temp2 = [P([0], 0)]
for i in 2:4
  push!(temp, macierz[3][i] - macierz[3][2] * P([1], -1) * macierz[2][i])
  push!(temp2, macierz[4][i] - P([1], -1) * macierz[4][2] * macierz[2][i])
end

macierz[3] = temp
macierz[4] = temp2

for i in 1:4
  macierz[i][3] += macierz[i][4]
end

for i in 1:4
  macierz[4][i] += macierz[3][i]
end

print_macierz(macierz)

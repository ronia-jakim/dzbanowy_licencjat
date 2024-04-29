using Polynomials
using Printf

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

z = P([0], 0)
a = P([1, -1], 0)
b = P([1], 1)
c = P([-1], 0)
alpha = P([-1, 1], -1)
beta = P([1], -1)
gamma = c
macierz = [
           [a, z,    z,     z,     z, b, c,     z,     z], 
           [b, c,    z,     z,     z, a, z,     z,     z],
           [z, beta, gamma, z,     z, z, z,     alpha, z],
           [z, z,    alpha, z,     z, z, beta,  gamma, z],
           [z, z,    beta,  gamma, z, z, alpha, z,     z],
           [z, z,    z,     b,     c, z, z,     z,     a],
           [z, z,    z,     z,     a, z, z,     b,     c],
           [z, z,    z,     z,     b, c, z,     a,     z],
           [c, z,    z,     z,     z, z, a,     z,     b]
          ]

print_macierz(macierz)
println("==================================================")

n = 9
unit_list = [] 
for i in -10:10 
  push!(unit_list, P([1], i))
  push!(unit_list, P([-1], i))
end

for i in 1:n
#  println("PETELKA")
#  print_macierz(macierz)

  udalo_sie = false 
  
  # chcę wyciągnąć +-t^k na wierzch
  for j in i:n
    if macierz[j][i] in unit_list 
      temp = macierz[j] 
      macierz[j] = macierz[i] 
      macierz[i] = temp

      udalo_sie = true 
      break 
    end 
  end 

  if !udalo_sie 
    print_macierz(macierz)
    break 
  end

  # dla każdego wierzsza niżej, chce wyciąć i-tą kolumnę 
  for j in (i+1):n 
    temp = [] 
    rev = inv(macierz[i][i])

    for k in 1:(i-1) 
      push!(temp, P([0], 0))
    end

    for k in i:n
      push!(temp, macierz[j][k] - macierz[j][i] * macierz[i][k] * rev)
    end 
    macierz[j] = temp 
  end
end

for i in 1:5
  for j in (i+1):n 
    macierz[i][j] = z 
  end 
end 

temp = macierz[8]
macierz[8] = macierz[6] 
macierz[6] = temp 

print_macierz(macierz)

i = 6
for j in (i+1):n 
  tempa = [] 

  for k in 1:(i-1) 
    push!(tempa, P([0], 0))
  end

  for k in i:n
    push!(tempa, macierz[j][k] - macierz[j][i] * macierz[i][k])
  end 
  macierz[j] = tempa
end

macierz[6][7] = z
macierz[6][9] = z

for i in 1:n 
  macierz[i][7] += macierz[i][9]
end

println("================================================")
print_macierz(macierz)

for i in 1:n 
  macierz[i][7] += macierz[i][8]
end

println("================================================")
print_macierz(macierz)

for i in 1:n 
  macierz[7][i] += macierz[8][i] * P([1], 1)
end

macierz[7][9] = z

macierz[8][9] += macierz[8][8]

macierz[8][9] -= macierz[8][8] * P([2], 1)

macierz[8][9] += macierz[8][8] * P([1], 2)
temp = macierz[7]
macierz[7] = macierz[9]
macierz[9] = temp

macierz[7][7] = macierz[7][9]
macierz[7][9] = z

println("================================================")

print_macierz(macierz)

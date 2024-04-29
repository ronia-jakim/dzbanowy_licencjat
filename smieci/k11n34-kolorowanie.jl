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

p = LaurentPolynomial([3, 2, 69, 10], -2)
println(p)
println("Koniec testow")

P = LaurentPolynomial;

macierz = [
           [
              LaurentPolynomial([1], -1),
              LaurentPolynomial([-1], 0),
              LaurentPolynomial([0], 0),
              LaurentPolynomial([0], 0),
              LaurentPolynomial([-1, 1], -1),
              P([0],0),
              P([0], 0),
              P([0], 0),
              P([0],0),
              P([0], 0),
              P([0],0)
           ],
           [
              P([0],0),
              P([1, -1], 0),
              P([0], 0),
              P([0], 0),
              P([0], 0),
              P([0], 0),
              P([1], 1),
              P([-1], 0),
              P([0], 0),
              P([0],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([1], 1),
              P([-1],0),
              P([0],0),
              P([0],0),
              P([1, -1], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([1], 1),
              P([-1], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([1,-1],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([1, -1], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([1],1),
              P([-1],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([1, -1], 0),
              P([0],0),
              P([1],1),
              P([-1],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([1], 1),
              P([-1],0),
              P([0],0),
              P([1, -1],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([0], 0),
              P([1],-1),
              P([-1],0),
              P([0],0),
              P([-1, 1],-1),
              P([0],0),
              P([0],0),
              P([0],0)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([0], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([1],-1),
              P([-1],0),
              P([0],0),
              P([-1, 1],-1)
           ],
           [
              P([-1],0),
              P([0],0),
              P([0],0),
              P([0], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([-1,1],-1),
              P([0],0),
              P([1],-1)
           ],
           [
              P([0],0),
              P([0],0),
              P([0],0),
              P([0], 0),
              P([0],0),
              P([0],0),
              P([0],0),
              P([-1, 1],-1),
              P([1],-1),
              P([-1],0),
              P([0],0)
           ]
          ]

b = P([1], 1)
a = P([1, -1], 0)
c = P([-1], 0)

beta = P([1], -1)
alpha = P([-1, 1], -1)
gamma = P([-1], 0)

print_macierz(macierz)

nr = 1

print_nr(nr)

temp = macierz[1]
macierz[1] = macierz[10]
macierz[10]=temp

print_macierz(macierz)

# RUCH 2

nr += 1
print_nr(nr)

temp = []
for j in 1:11
  push!(temp, macierz[10][j] + (beta * macierz[1][j]))
end

macierz[10] = temp

print_macierz(macierz)

# RUCH 3

nr += 1
print_nr(nr)

for j in 2:11
  macierz[1][j] = 0
end

print_macierz(macierz)

# RUCH 4

nr += 1
print_nr(nr)

temp = macierz[10]
macierz[10] = macierz[2]
macierz[2] = temp

print_macierz(macierz)

# RUCH 5

nr += 1
print_nr(nr)

temp = []
temp2 = []
for j in 1:11
  push!(temp, macierz[3][j] + (b * macierz[2][j]))
  push!(temp2, macierz[10][j] + (a * macierz[2][j]))
end

macierz[3] = temp
macierz[10] = temp2

print_macierz(macierz)

# RUCH 6

nr += 1
print_nr(nr)

for j in 3:11
  macierz[2][j] = 0
end

print_macierz(macierz)

# RUCH 7

nr += 1
print_nr(nr)

temp = []
for j in 1:11
  macierz[4][j] = macierz[4][j] + (b * macierz[3][j])
end

print_macierz(macierz)

# RUCH 8

nr += 1
print_nr(nr)

for j in 4:11
  macierz[3][j] = 0
end

print_macierz(macierz)

# RUCH 9

nr += 1
print_nr(nr)

temp = []
temp2 = []
temp3 = []

for j in 1:11
  macierz[5][j] = macierz[5][j] + (a * macierz[4][j])
  macierz[6][j] = macierz[6][j] + (a * macierz[4][j])
  macierz[7][j] = macierz[7][j] + (b * macierz[4][j])
end

print_macierz(macierz)

# RUCH 10

nr += 1
print_nr(nr)

for j in 5:11
  macierz[4][j] = 0
end

print_macierz(macierz)

# RUCH 11

nr += 1
print_nr(nr)

temp = macierz[5]
macierz[5] = macierz[8]
macierz[8] = temp

print_macierz(macierz)

# RUCH 12

nr += 1
print_nr(nr)

temp = []
temp2 = []
temp3 = []
temp4 = []
for j in 1:11
  push!(temp, macierz[6][j] - (b * (macierz[6][5] * macierz[5][j])))
  push!(temp2, macierz[7][j] - (b * macierz[7][5] * macierz[5][j]))
  push!(temp3, macierz[8][j] - (b * macierz[8][5] * macierz[5][j]))
  push!(temp4, macierz[10][j] - (b * macierz[10][5] * macierz[5][j]))
end

macierz[6] = temp
macierz[7] = temp2
macierz[8] = temp3
macierz[10] = temp4

print_macierz(macierz)

# RUCH 12
 
nr += 1
print_nr(nr)

for j in 6:11
  macierz[5][j] = 0
end
print_macierz(macierz)

# 8 dodaje do 6

nr += 1
print_nr(nr)

for j in 1:11
  macierz[j][6] = macierz[j][6] + macierz[j][8]
end

print_macierz(macierz)

# RUCH 15

nr += 1
print_nr(nr)

temp = []
temp2 = []
temp3 = [] 
temp4 = []

for j in 1:11
  push!(temp, macierz[7][j] + (beta * macierz[6][j]))
  push!(temp2, macierz[9][j] - (beta * beta * macierz[6][j]))
  push!(temp3, macierz[10][j] - (macierz[10][6] * beta * macierz[6][j]))
  push!(temp4, macierz[11][j] - (macierz[11][6] * beta * macierz[6][j]))
end

macierz[7] = temp
macierz[9] = temp2
macierz[10] = temp3
macierz[11] = temp4

print_macierz(macierz)

# RUCH 16

nr += 1
print_nr(nr)

for j in 7:11
  macierz[6][j] = 0
end
print_macierz(macierz)

# RUCH 17

nr += 1
print_nr(nr)

temp = macierz[9]

macierz[9] = macierz[7]
macierz[7] = temp

print_macierz(macierz)

# RUCH 18

nr += 1
print_nr(nr)

temp = []
temp2 = []
temp3 = []

for j in 1:11
  push!(temp, macierz[9][j] - (b * b * macierz[9][7] * macierz[7][j]))
  push!(temp2, macierz[10][j] - (b * b * macierz[10][7] * macierz[7][j]))
  push!(temp3, macierz[11][j] - (b * b * macierz[11][7] * macierz[7][j]))
end

macierz[9] = temp
macierz[10] = temp2
macierz[11] = temp3

print_macierz(macierz)

# RUCH 19

nr += 1
print_nr(nr)

for j in 8:11
  macierz[7][j] = 0
end

print_macierz(macierz)

# RUCH 20

nr += 1
print_nr(nr)

for j in 1:11
  tmp = macierz[j][8]
  macierz[j][8] = macierz[j][11]
  macierz[j][11] = tmp
end

print_macierz(macierz)

# RUCH 21

nr += 1
print_nr(nr)

temp = []
temp2 = []
temp3 = []
for j in 1:11
  push!(temp, macierz[9][j] + (beta * macierz[8][j] * macierz[9][8]))
  push!(temp2, macierz[10][j] + (beta * macierz[8][j] * macierz[10][8]))
  push!(temp3, macierz[11][j] + (beta * macierz[8][j] * macierz[11][8]))
end

macierz[9] = temp
macierz[10] = temp2
macierz[11] = temp3

print_macierz(macierz)

# RUCH 22

nr += 1
print_nr(nr)

for j in 9:11
  macierz[8][j] = 0
end

print_macierz(macierz)

# RUCH 23

nr += 1
print_nr(nr)

for j in 1:11
  macierz[j][9] = macierz[j][10] + macierz[j][9]
end

print_macierz(macierz)

# RUCH 24

nr += 1
print_nr(nr)

for j in 1:11
  macierz[10][j] = macierz[10][j] + macierz[9][j]
  macierz[11][j] = macierz[11][j] + macierz[9][j]
end

print_macierz(macierz)

# RUCH 25

nr += 1
print_nr(nr)

for j in 1:11
  macierz[9][j] = macierz[9][j] - (b * b * b * macierz[10][j])
end

print_macierz(macierz)

# RUCH 26

nr += 1
print_nr(nr)

for j in 1:11
  macierz[11][j] = macierz[11][j] - (b * b * b * macierz[10][j])
end

print_macierz(macierz)

# RUCH 27

nr += 1
print_nr(nr)

for j in 1:11
  macierz[j][11] = macierz[j][11] - (macierz[j][10] * a * a)
end

print_macierz(macierz)

# RUCH 28

nr += 1
print_nr(nr)

for j in 1:11
  macierz[j][10] = macierz[j][10] + macierz[j][11]
end

print_macierz(macierz)

# RUCH 29

nr += 1
print_nr(nr)

temp = []
temp2 = []
for j in 1:11
  push!(temp, macierz[10][j] - (beta * macierz[9][j] * macierz[10][10]))
  push!(temp2, macierz[11][j] - (beta * macierz[9][j] * macierz[11][10]))
end

macierz[10] = temp
macierz[11] = temp2

print_macierz(macierz)

# RUCH 29

nr += 1
print_nr(nr)

macierz[9][11] = 0
macierz[10][11] = 0

print_macierz(macierz)

# RUCH 30

nr += 1
print_nr(nr)

for j in 1:11
  tmp = macierz[j][9]
  macierz[j][9] = macierz[j][10]
  macierz[j][10] = tmp
end

print_macierz(macierz)

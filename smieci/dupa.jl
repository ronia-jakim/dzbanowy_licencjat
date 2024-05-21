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
  println(" ")
  println(" ")
end

function print_nr(n)
  print("RUCH nr ")
  println(n)
  println("========================================")
end

function change_columns(i, j, m)
  for row in m 
    temp = row[i] 
    row[i] = row[j] 
    row[j] = temp
  end
end

function change_rows(x, y, m)
  dim=length(m[1])
  for i in 1:dim 
    temp = m[x][i] 
    m[x][i] = m[y][i] 
    m[y][i] = temp
  end
end

# mnoze kolumne x przez mult i dodaje ja do kolumny y 
function mult_add_column(mult, x, y, m) 
  for row in m 
    temp = row[y] 
    row[y] = temp + mult * row[x]
  end
end

function mult_add_row(mult, x, y, m)
  dim = length(m[1])
  for i in 1:dim 
    temp = m[y][i]
    m[y][i] = temp + mult * m[x][i]
  end
end

P = LaurentPolynomial;

z = P([0], 0)
a = P([1, -1], 0)
b = P([1], 1)
c = P([-1], 0)
alpha = P([-1, 1], -1)
beta = P([1], -1)
gamma = c

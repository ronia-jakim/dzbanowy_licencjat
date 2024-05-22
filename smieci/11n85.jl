include("dupa.jl")

m_11n85 = [
           [a, z, z, z, b, c, z, z, z, z, z], 
           [b, c, z, z, a, z, z, z, z, z, z], 
           [z, a, z, z, z, z, z, z, b, c, z], 
           [z, b, c, z, z, z, a, z, z, z, z], 
           [z, z, beta, gamma, z, z, z, z, z, alpha, z], 
           [z, z, z, a, z, z, z, b, c, z, z], 
           [gamma, z, z, alpha, z, z, z, z, z, z, beta], 
           [z, z, z, beta, gamma, alpha, z, z, z, z, z], 
           [z, z, z, z, z, b, c, z, a, z, z], 
           [z, z, z, z, z, z, z, z, alpha, beta, gamma], 
           [z, z, z, z, z, z, beta, gamma, z, alpha, z]
          ]

print_macierz(m_11n85)

change_columns(1, 6, m_11n85)

print_macierz(m_11n85)

mult_add_column(b, 1, 5, m_11n85)
mult_add_column(a, 1, 6, m_11n85)

mult_add_row(alpha, 1, 8, m_11n85)
mult_add_row(b, 1, 9, m_11n85)

mult_add_column(a, 2, 5, m_11n85)
mult_add_column(b, 2, 6, m_11n85)
mult_add_row(a, 2, 3, m_11n85)
mult_add_row(b, 2, 4, m_11n85)

change_rows(3, 4, m_11n85)
mult_add_row(beta, 3, 5, m_11n85)
mult_add_column(P([1, -1], 1), 3, 5, m_11n85)
mult_add_column(P([1], 2), 3, 6, m_11n85)
mult_add_column(a, 3, 7, m_11n85)

change_rows(4, 5, m_11n85)
mult_add_column(a, 4, 5, m_11n85)
mult_add_column(b, 4, 6, m_11n85)
mult_add_column(P([1, -1], -1), 4, 7, m_11n85)
mult_add_column(alpha, 4, 10, m_11n85)
mult_add_row(a, 4, 6, m_11n85)
mult_add_row(alpha, 4, 7, m_11n85)
mult_add_row(beta, 4, 8, m_11n85)

change_columns(10, 5, m_11n85)
mult_add_column(P([1, -1], 1), 5, 6, m_11n85)
mult_add_column(b, 5, 9, m_11n85)
mult_add_column(P([1, -2, 1], 0), 5, 10, m_11n85)

mult_add_row(P([-1, 2, -1], -1), 5, 6, m_11n85)
mult_add_row(P([1, -2, 1], -2), 5, 7, m_11n85)
mult_add_row(P([-1, 1], -2), 5, 8, m_11n85)
mult_add_row(P([1], -1), 5, 10, m_11n85)
mult_add_row(P([-1, 1], -1), 5, 11, m_11n85)

change_columns(8, 6, m_11n85)

mult_add_row(beta, 6, 11, m_11n85)
mult_add_column(beta*P([-1, 2, -1], -1), 6, 7, m_11n85)
mult_add_column(beta*P([1, -4, 4, -1], 0), 6, 8, m_11n85)
mult_add_column(beta*P([2, -2, 1], 0), 6, 9, m_11n85)
mult_add_column(beta*P([1, -5, 8, -5, 1], -1), 6, 10, m_11n85)

change_rows(9, 7, m_11n85)

mult_add_column(P([1, -1], 1),7, 8, m_11n85)
mult_add_column(P([1, -1], 0),7, 9, m_11n85)
mult_add_column(P([1], 2),7, 10, m_11n85)
mult_add_row(P([1, -1], -2), 7, 8, m_11n85)
mult_add_row(P([-1, 2, -1], -2), 7, 9, m_11n85)
mult_add_row(P([1, -1, 1], -2), 7, 11, m_11n85)

change_rows(10, 8, m_11n85)
change_columns(11, 8, m_11n85)

mult_add_row(beta, 8, 9, m_11n85)
mult_add_column(P([-1, 2], -1), 8, 9, m_11n85)
mult_add_column(P([1, -2, 1], -1), 8, 10, m_11n85)
mult_add_column(a, 8, 11, m_11n85)

mult_add_row(P([1], 0), 10, 9, m_11n85)
mult_add_column(P([1], 0), 10, 9, m_11n85)
mult_add_row(P([-1], 0), 11, 10, m_11n85)
mult_add_column(P([1], 0), 11, 9, m_11n85)

mult_add_row(P([1], 0), 9, 11, m_11n85)
mult_add_column(P([-1, 1], -1), 11, 10, m_11n85)
mult_add_row(P([-1], 0), 10, 9, m_11n85)
mult_add_row(P([1], 0), 9, 10, m_11n85)
mult_add_column(P([-1, 2, -1, 1], -1), 10, 11, m_11n85)
mult_add_row(P([-1, 3, -3, 2], -2), 9, 10, m_11n85)
change_columns(10, 9, m_11n85)

mult_add_row(P([1, -1], 0) * P([1, -3, 3, -3, 1], 0) * P([1], -3), 11, 10, m_11n85)
print_macierz(m_11n85)

change_columns(11, 10, m_11n85)
mult_add_row(P([-1], 1), 11, 10, m_11n85)

mult_add_row(P([-1], -2), 11, 10, m_11n85)
print_macierz(m_11n85)

mult_add_row(P([5], -1), 11, 10, m_11n85)
mult_add_row(P([-11], 0), 11, 10, m_11n85)
mult_add_row(P([18], 1), 11, 10, m_11n85)
mult_add_row(P([-21], 2), 11, 10, m_11n85)
mult_add_row(P([23], 3), 11, 10, m_11n85)

mult_add_row(P([-1], -4)*P([22, 23], 0), 10, 11, m_11n85)

print_macierz(m_11n85)


include("dupa.jl")

m_9_29=[
          [alpha, z, z, z, z, z, beta, gamma, z], 
          [z, z, z, z, b, c, z, a, z],
          [z, z, beta, gamma, z, alpha,z, z, z],
          [z, z, alpha, z, z, beta, gamma, z, z], 
          [c, z, z, z, z, z, a, z, b], 
          [z, b, c, z, z, z, z, z, a], 
          [z, z, z, a, z, z, c, b, z], 
          [z, alpha, z, beta, gamma, z, z, z, z], 
          [beta, gamma, z, z, alpha, z, z, z, z]
         ]

print_macierz(m_9_29)

change_columns(1, 8, m_9_29)

mult_add_column(beta, 1, 7, m_9_29)
mult_add_column(alpha, 1, 8, m_9_29)

mult_add_row(a, 1, 2, m_9_29)
mult_add_row(b, 1, 7, m_9_29)

# print_macierz(m_9_29)

change_columns(2, 6, m_9_29)

mult_add_column(b, 2, 5, m_9_29)
mult_add_column(P([1, -1], -1), 2, 7, m_9_29)
mult_add_column(P([-1, 2, -1], -1), 2, 8, m_9_29)

mult_add_row(alpha, 2, 3, m_9_29)
mult_add_row(beta, 2, 4, m_9_29)

# print_macierz(m_9_29)

change_columns(3, 4, m_9_29)

mult_add_column(P([-1, 1], 0), 3, 5, m_9_29)
mult_add_column(beta, 3, 4, m_9_29)
mult_add_column(P([-1, 2, -1], -2), 3, 7, m_9_29)
mult_add_column(P([1, -3, 3, -1], -2), 3, 8, m_9_29)

mult_add_row(a, 3, 7, m_9_29)
mult_add_row(beta, 3, 8, m_9_29)

# print_macierz(m_9_29)

change_columns(4, 5, m_9_29)

# print_macierz(m_9_29)

mult_add_column(P([1, -1], -1), 4, 5, m_9_29)
mult_add_column(P([-1, 1, 1], -2), 4, 7, m_9_29)
mult_add_column(P([1, -2, 1], -2), 4, 8, m_9_29)

mult_add_row(P([1, -2, 1], 0), 4, 7, m_9_29)
mult_add_row(P([1], -1), 4, 8, m_9_29)
mult_add_row(P([1, -1], -1), 4, 9, m_9_29)

print_macierz(m_9_29)

change_columns(8, 5, m_9_29)

print_macierz(m_9_29)

mult_add_column(a, 5, 7, m_9_29)
mult_add_column(b, 5, 9, m_9_29)

mult_add_row(P([-1, 1], 0), 5, 7, m_9_29)
mult_add_row(P([-1, 2, -1], -2), 5, 8, m_9_29)
mult_add_row(P([-1, 3, -2, 1], -3), 5, 9, m_9_29)

change_columns(6, 8, m_9_29)

print_macierz(m_9_29)

mult_add_column(b, 6, 8, m_9_29)
mult_add_column(a, 6, 9, m_9_29)

mult_add_row(P([2, -3, 1], 0), 6, 7, m_9_29)
mult_add_row(beta, 6, 8, m_9_29)
mult_add_row(P([-1, 2, -1], -2), 6, 9, m_9_29)

print_macierz(m_9_29)

mult_add_column(P([1], 0), 8, 7, m_9_29)
mult_add_column(P([1], 0), 7, 9, m_9_29)

print_macierz(m_9_29)

mult_add_row(P([1], -2), 7, 9, m_9_29)

print_macierz(m_9_29)

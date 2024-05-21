include("dupa.jl")

m_9_28 = [
            [a, z, b, c, z, z, z, z, z], 
            [beta, gamma, z, z, z, z, z, z, alpha], 
            [z, b, c, z, z, z, a, z, z],
            [gamma, z, alpha, z, z, z, z, z, beta], 
            [z, z, z, a, z, z, z, b, c], 
            [z, z, z, beta, gamma, alpha, z, z, z],
            [z, z, z, z, alpha, z, beta, gamma, z],
            [z, a, z, z, z, b, c, z, z], 
            [z, z, z, z, beta, gamma, z, alpha, z]
         ]

# print_macierz(m_9_28)

change_columns(1, 4, m_9_28)

# print_macierz(m_9_28)

mult_add_column(b, 1, 3, m_9_28)
mult_add_column(a, 1, 4, m_9_28)

mult_add_row(a, 1, 5, m_9_28)
mult_add_row(beta, 1, 6, m_9_28)

# print_macierz(m_9_28)

mult_add_column(beta, 2, 4, m_9_28)
mult_add_column(alpha, 2, 9, m_9_28)

mult_add_row(b, 2, 3, m_9_28)
mult_add_row(a, 2, 8, m_9_28)

#print_macierz(m_9_28)

mult_add_column(P([1], 0), 3, 4, m_9_28)
mult_add_column(a, 3, 7, m_9_28)
mult_add_column(P([-1, 1], 0), 3, 9, m_9_28)

mult_add_row(P([-1, 1], -1), 3, 4, m_9_28)
mult_add_row(P([1, -1], 1), 3, 5, m_9_28)
mult_add_row(P([1], 0), 3, 6, m_9_28)

# print_macierz(m_9_28)

mult_add_column(b*P([-1, 2, -1], -1), 4, 7, m_9_28)
mult_add_column(b*P([2, -2, 1], -1), 4, 9, m_9_28)

mult_add_row(b*P([1, -1], 0), 4, 5, m_9_28)
mult_add_row(P([1], 0), 4, 6, m_9_28)
mult_add_row(b*P([1, -1], -1), 4, 8, m_9_28)

# print_macierz(m_9_28)

change_rows(5, 6, m_9_28)

mult_add_row(alpha, 5, 7, m_9_28)
mult_add_row(beta, 5, 9, m_9_28)

# print_macierz(m_9_28)

mult_add_column(alpha, 5, 6, m_9_28)
mult_add_column(P([-1, 3, -2], -1), 5, 7, m_9_28)
mult_add_column(P([2, -3, 2], -1), 5, 9, m_9_28)

# print_macierz(m_9_28)

change_rows(8, 6, m_9_28)

mult_add_row(beta*P([-1, 2, -1], -2), 6, 7, m_9_28)
mult_add_row(beta*P([1, -1, 1], -2), 6, 9, m_9_28)

mult_add_column(beta*P([1, -2, 3, -1], -1), 6, 7, m_9_28)
mult_add_column(beta*P([-1, 2, -2, 1], -1), 6, 9, m_9_28)

print_macierz(m_9_28)


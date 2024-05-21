include("dupa.jl")

m_7_4 = [
         [alpha, z, z, beta, gamma, z, z], 
         [beta, gamma, z, alpha, z, z, z], 
         [z, alpha, z, z, z, beta, gamma],
         [z, beta, gamma, z, z, alpha, z], 
         [z, z, alpha, z, beta, gamma, z],
         [gamma, z, z, z, alpha, z, beta], 
         [z, z, beta, gamma, z, z, alpha]
        ]

print_macierz(m_7_4)

change_columns(1, 5, m_7_4)

print_macierz(m_7_4)

mult_add_column(beta, 1, 4, m_7_4)
mult_add_column(alpha, 1, 5, m_7_4)
mult_add_row(beta, 1, 5, m_7_4)
mult_add_row(alpha, 1, 6, m_7_4)

mult_add_column(alpha, 2, 4, m_7_4)
mult_add_column(beta, 2, 5, m_7_4)
mult_add_row(alpha, 2, 3, m_7_4)
mult_add_row(beta, 2, 4, m_7_4)

change_rows(3, 4, m_7_4)

mult_add_column(P([-1, 1], -2), 3, 4, m_7_4)
mult_add_column(P([1], -2), 3, 5, m_7_4)
mult_add_column(alpha, 3, 6, m_7_4)

mult_add_row(alpha, 3, 5, m_7_4)
mult_add_row(beta, 3, 7, m_7_4)

change_columns(7, 4, m_7_4)

mult_add_row(beta, 4, 6, m_7_4)
mult_add_row(alpha, 4, 7, m_7_4)

mult_add_column(P([-1, 1], -2), 4, 5, m_7_4)
mult_add_column(beta, 4, 6, m_7_4)
mult_add_column(P([1, -2, 1], -2), 4, 7, m_7_4)

mult_add_column(P([1], 0), 5, 7, m_7_4)
mult_add_column(P([1], 0), 6, 7, m_7_4)
mult_add_row(P([1], 0), 6, 5, m_7_4)
mult_add_row(P([1], 0), 7, 5, m_7_4)

print_macierz(m_7_4)

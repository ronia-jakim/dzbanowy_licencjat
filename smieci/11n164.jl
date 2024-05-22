include("dupa.jl")

m_11n164 = [
            [b, c, z, a, z, z, z, z, z, z, z],
            [z, a, z, b, c, z, z, z, z, z, z],
            [z, z, z, z, a, z, z, b, c, z, z], 
            [z, z, z, z, b, c, z, a, z, z, z], 
            [z, alpha, z, z, z, beta, gamma, z, z, z, z], 
            [gamma, z, z, z, z, z, alpha, z, z, z, beta], 
            [z, z, a, z, z, z, b, c, z, z, z], 
            [z, z, z, z, z, z, z, a, z, b, c], 
            [z, z, b, c, z, z, z, z, a, z, z], 
            [z, z, a, z, z, z, z, z, b, c, z], 
            [z, b, c, z, z, z, z, z, z, z, a]
           ]

print_macierz(m_11n164)

change_columns(1, 2, m_11n164)

mult_add_column(b, 1, 2, m_11n164)
mult_add_column(a, 1, 4, m_11n164)
mult_add_row(a, 1, 2, m_11n164)
mult_add_row(alpha, 1, 5, m_11n164)
mult_add_row(b, 1, 11, m_11n164)

change_columns(2, 6, m_11n164)
change_rows(2, 4, m_11n164)
mult_add_column(b, 2, 5, m_11n164)
mult_add_column(a, 2, 8, m_11n164)

mult_add_row(beta, 2, 5, m_11n164)
change_columns(9, 3, m_11n164)
mult_add_column(a, 3, 5, m_11n164)
mult_add_column(b, 3, 8, m_11n164)
mult_add_row(a, 3, 9, m_11n164)
mult_add_row(b, 3, 10, m_11n164)

change_columns(4, 5, m_11n164)
mult_add_row(P([1], 0), 4, 5, m_11n164)
mult_add_row(P([1, -1], 1), 4, 10, m_11n164)
mult_add_row(P([1, -2, 1], 0), 4, 9, m_11n164)

mult_add_column(P([1, -1, 1], 0), 4, 5, m_11n164)
mult_add_column(P([1, -1], 1), 4, 6, m_11n164)

change_columns(7, 5, m_11n164)
mult_add_row(P([-1, 1], -1), 5, 6, m_11n164)
mult_add_row(P([1], 1), 5, 7, m_11n164)
mult_add_column(P([-1, 2, -1], 0), 5, 6, m_11n164)
mult_add_column(P([-1, 3, -2, 1], -1), 5, 7, m_11n164)
mult_add_column(P([1, -1], -1), 5, 8, m_11n164)

change_columns(11, 6, m_11n164)

mult_add_column(b*P([-1, 4, -5, 3, -1], -2), 6, 7, m_11n164)
mult_add_column(b*P([1, -2, 1], -2), 6, 8, m_11n164)
mult_add_column(b*P([-1, 4, -3, 1], -1), 6, 11, m_11n164)

mult_add_row(b, 6, 8, m_11n164)
mult_add_row(b*P([-1, 1], 0), 6, 11, m_11n164)

change_columns(7, 8, m_11n164)

mult_add_column(beta*P([-1, 3, -2, 1], 0), 7, 8, m_11n164)
mult_add_column(beta*a, 7, 9, m_11n164)
mult_add_column(beta*P([-1, 2, -1], 1), 7, 11, m_11n164)

mult_add_row(beta*P([-1, 3, -2], -1), 7, 8, m_11n164)
mult_add_row(beta*P([1, -1], 1), 7, 9, m_11n164)
mult_add_row(b, 7, 10, m_11n164)
mult_add_row(beta*P([1, -3, 3, -1], -1), 7, 11, m_11n164)

change_rows(10, 8, m_11n164)
change_columns(10, 8, m_11n164)

mult_add_column(P([1, 0, -1], 0), 8, 9, m_11n164)
mult_add_column(P([1], 2), 8, 10, m_11n164)
mult_add_row(b, 8, 10, m_11n164)

mult_add_column(P([1], 0), 9, 10, m_11n164)
mult_add_row(P([1], 0), 10, 11, m_11n164)
mult_add_row(P([1], 1), 9, 11, m_11n164)
mult_add_column(beta*P([-1], 0), 10, 9, m_11n164)
mult_add_row(P([1], 1), 9, 10, m_11n164)
mult_add_column(P([1], 0), 10, 11, m_11n164)

print_macierz(m_11n164)

include("dupa.jl")

m_8_2 = [
         [b, c, z, z, z, z, z, z, a], 
         [z, a, b, z, z, z, z, z, c], 
         [z, b, a, c, z, z, z, z, z], 
         [z, z, c, a, b, z, z, z, z], 
         [z, z, z, b, a, c, z, z, z], 
         [z, z, z, z, c, a, z, b, z], 
         [z, z, z, z, z, b, c, a, z], 
         [c, z, z, z, z, z, a, z, b], 
         [a, z, z, z, z, z, b, c, z]
        ]

print_macierz(m_8_2)

change_columns(1, 2, m_8_2)
print_macierz(m_8_2)

mult_add_column(b, 1, 2, m_8_2)
mult_add_column(a, 1, 9, m_8_2)
mult_add_row(a, 1, 2, m_8_2)
mult_add_row(b, 1, 3, m_8_2)

change_rows(2, 8, m_8_2)

mult_add_column(a, 2, 7, m_8_2)
mult_add_column(b, 2, 9, m_8_2)
mult_add_row(P([1], 2), 2, 3, m_8_2)
mult_add_row(P([1, -1], 1), 2, 8, m_8_2)
mult_add_row(a, 2, 9, m_8_2)

change_rows(3, 4, m_8_2)

mult_add_column(a, 3, 4, m_8_2)
mult_add_column(b, 3, 5, m_8_2)
mult_add_row(a, 3, 4, m_8_2)
mult_add_row(b, 3, 8, m_8_2)

change_rows(4, 5, m_8_2)
change_columns(4, 6, m_8_2)

mult_add_column(a, 4, 5, m_8_2)
mult_add_column(b, 4, 6, m_8_2)
mult_add_row(a, 4, 6, m_8_2)
mult_add_row(b, 4, 7, m_8_2)

change_columns(7, 5, m_8_2)
change_rows(7, 5, m_8_2)

mult_add_column(P([1], 2), 5, 6, m_8_2)
mult_add_column(P([1, -1], 1), 5, 7, m_8_2)
mult_add_column(a, 5, 8, m_8_2)

mult_add_row(P([1, -1], 2), 5, 7, m_8_2)
mult_add_row(P([1, -2, 1], 1), 5, 8, m_8_2)
mult_add_row(P([1, -1, 1], 0), 5, 9, m_8_2)

change_columns(8, 6, m_8_2)

mult_add_column(beta*P([2, -1], 1), 6, 7, m_8_2) 
mult_add_column(beta*P([-1, 1], 1), 6, 8, m_8_2) 
mult_add_row(beta*P([-1, 2, -1], 2), 6, 7, m_8_2) 
mult_add_row(beta*P([-1, 3, -3, 1], 1), 6, 8, m_8_2) 
mult_add_row(beta*P([2, -2, 1], 1), 6, 9, m_8_2) 

mult_add_column(P([1], 0), 9, 7, m_8_2)
mult_add_column(P([1], 0), 8, 7, m_8_2)

mult_add_row(P([1], 0), 8, 7, m_8_2)
mult_add_row(P([1], 0), 9, 7, m_8_2)

mult_add_row(P([-1], 1), 9, 8, m_8_2)
mult_add_row(P([1], 0), 8, 9, m_8_2)

print_macierz(m_8_2)

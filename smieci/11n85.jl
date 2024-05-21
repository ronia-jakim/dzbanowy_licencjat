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

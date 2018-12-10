# SasanNajar 
# Email: sasangnajar@gmail.com, Twitter:@SasanGN


# Construct star_wars_matrices -- Box office Star Wars (in millions!)
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),c("US", "non-US")))

second_box_office <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(second_box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"),c("US", "non-US")))

# Construct ticket_prices_matrix
prices <- c(5, 5, 6, 6, 7, 7, 4, 4, 4.5,4.5,4.9, 4.9)
ticket_prices_matrix <- matrix(prices, nrow = 6, byrow = TRUE,
                               dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"),c("US", "non-US")))

# Print out matrices
star_wars_matrix
star_wars_matrix2
ticket_prices_matrix

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

worldwide_vector

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
# Average non-US revenue
mean(non_us_all)

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
# Print out total_revenue_vector
total_revenue_vector


# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimated number of visitors (in millions)
visitors <- all_wars_matrix/ticket_prices_matrix
visitors

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)

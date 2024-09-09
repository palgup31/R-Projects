p_grid <- seq( from=0 , to=1 , length.out=100 )
# print(p_grid)
# likelihood of 3 water in 3 tosses
likelihood <- dbinom( 3 , size=3 , prob=p_grid )
# plot(likelihood ~ p_grid ,type="l")
# prior <- rep(1,100) # uniform prior
prior <- ifelse(p_grid < 0.5, 0, 1) # new prior
# print(prior)
posterior <- likelihood * prior
# print(sum(posterior))
posterior1 <- posterior / sum(posterior) # standardize
# print(sum(posterior))
# likelihood of 3 water in 4 tosses
likelihood <- dbinom( 3 , size=4 , prob=p_grid )
posterior <- likelihood * prior
posterior2 <- posterior / sum(posterior) # standardize

# likelihood of 5 water in 7 tosses
likelihood <- dbinom( 5 , size=7 , prob=p_grid )
posterior <- likelihood * prior
posterior3 <- posterior / sum(posterior) # standardize

par(mfrow = c(2, 2))
plot( posterior1 ~ p_grid , type="l" )
plot( posterior2 ~ p_grid , type="l" )
plot( posterior3 ~ p_grid , type="l" )

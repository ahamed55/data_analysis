data("penguins")

ggplot(data = penguins) +
  geom_jitter(mapping = (aes(x= flipper_length_mm , y = body_mass_g)))
  #geom_smooth(mapping = (aes(x= flipper_length_mm , y = body_mass_g,linetype = species)))


hotel_bookings <- read.csv("C:/Users/ibrah/Downloads/hotel_bookings (2).csv")
View(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_smooth(mapping = aes(x = stays_in_weekend_nights, y = children))

openxlsx::write.xlsx(penguins, "output.xlsx")

#-----------------------------------------------------------
  
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x= cut, fill = cut, ))

write.csv(diamonds, "output.csv", row.names = FALSE)



ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel))

gg <- hotel_bookings %>%
  mutate(distribution_channel = 'Direct')
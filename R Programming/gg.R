hotel_bookings <- read.csv("D:/coursera data_analytics/Data VIZ/hotel_bookings (2).csv")
head(hotel_bookings)
colnames(hotel_bookings)
library(ggplot2)
View(hotel_bookings)
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel,fill = market_segment))+
  facet_grid(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle = 70))


data %>%
  filter(variable1 == "DS") %>%  
  ggplot(aes(x = weight, y = variable2, colour = variable1)) +  
  geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = onlineta_city_hotels_v2$hotel) +
  geom_bar(mapping = aes(x = hotel))+
  facet_wrap(~market_segment)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

hotel_bookings$hotel


ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggsave("file.png")

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="market by hotel")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),y="No_of_booking")

ggsave('hotel_booking_chart.png')

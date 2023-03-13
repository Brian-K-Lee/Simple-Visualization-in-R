###Read in January 2017 flight data from "openflights.org"
flight = read.csv("C:/Users/KT/Documents/R Fun/simplePlot/openFlights_flightData.csv")

###Create a data frame with the country names and the count of flights for each country
countrycount = data.frame(table(flight$Country))

##Rename columns to "Country" and "Count"
names(countrycount) = c("Country","Count")

##Plot the data frame
plot(countrycount)

###Reorder the data frame by Count in descending order
countrycount = countrycount[order(countrycount$Count,decreasing = T),]

##Select Top 100 countries
countrycount100 = countrycount[1:100,]
barplot(countrycount100$Count, names.arg = countrycount100$Country, xlab = "Country", ylab = "Count")

##Select Top 10 countries
countrycount10 = countrycount[1:10,]

##Use barplot to plot the data frame
barplot(countrycount10$Count, names.arg = countrycount10$Country, xlab = "Country", ylab = "Count")

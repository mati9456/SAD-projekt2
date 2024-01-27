# plot data for days of the week
weekday_names <- c('Poniedziałek', 'Wtorek', 'Środa', 'Czwartek', 'Piątek', 'Sobota', 'Niedziela')
fully_uniform_weekdays <- c(rep(3000, 7))
kind_of_uniform_weekdays <- sample(2900:3100, 7)
accidents_per_weekdays <- c(3248, 3083, 3252, 3203, 3617, 2727, 2192)

par(las = 2)
plot(1:length(accidents_per_weekdays), fully_uniform_weekdays, type='b', col='#F6C85F', xlab = '', ylab = 'Ilość wypadków', xaxt='n', yaxt='n')
title('Ilość wypadków w każdym dniu tygodnia')
lines(1:length(accidents_per_weekdays), kind_of_uniform_weekdays, type='b', col='#0B84A5')
lines(1:length(accidents_per_weekdays), accidents_per_weekdays, type='b', col='#CA472F')
axis(1, at = 1:length(accidents_per_weekdays), labels = weekday_names, cex.axis = 0.75)
axis(2, cex.axis = 0.75)
legend(cex = 0.75, 'topleft', legend = c("Równomierne", "Prawie równomierne", "W roku 2022"), fill = c("#F6C85F", "#0B84A5", "#CA472F"))

# plot data for months of the year
month_names <- c('Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec', 'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad', 'Grudzień')
accidents_per_month <- c(1300, 1220, 1584, 1479, 2119, 2349, 2153, 2199, 1941, 2009, 1506, 1463)
fully_uniform_months <- c(rep(2000, 12))
kind_of_uniform_months <- sample(1900:2100, 12)

plot(1:length(accidents_per_month), fully_uniform_months, type='b', col='#F6C85F', xlab = '', ylab ='Ilość wypadków', xaxt='n', yaxt='n')
title('Ilość wypadków w każdym miesiącu')
lines(1:length(accidents_per_month), kind_of_uniform_months, type='b', col='#0B84A5')
lines(1:length(accidents_per_month), accidents_per_month, type='b', col='#CA472F')
axis(1, at = 1:length(accidents_per_month), labels = month_names, cex.axis = 0.75)
axis(2, cex.axis = 0.75)
legend(cex = 0.75, 'topleft', legend = c("Równomierne", "Prawie równomierne", "W roku 2022"), fill = c("#F6C85F", "#0B84A5", "#CA472F"))


# chi-squared goodness-of-fit for weekdays
weekday_results1 <- chisq.test(fully_uniform_weekdays)
print(weekday_results1)

weekday_results2 <- chisq.test(kind_of_uniform_weekdays)
print(weekday_results2)

weekday_results3 <- chisq.test(accidents_per_weekdays)
print(weekday_results3)


# chi-squared goodness-of-fit for months
month_results1 <- chisq.test(fully_uniform_months)
print(month_results1)

month_results2 <- chisq.test(kind_of_uniform_months)
print(month_results2)

month_results3 <- chisq.test(accidents_per_month)
print(month_results3)

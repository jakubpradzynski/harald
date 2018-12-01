# Załaduj do R dane zawarte w pliku UOF_gs.txt.
uof <- read.table("UOF_gs.txt", header = TRUE, sep = " ")
  # a. Przypisz zmiennym następujące poziomy:
    # i. gender: 0 – kobieta, 1 – mężczyzna,
install.packages("plyr")
library(plyr)
uof$gender = factor(uof$gender, levels = c(0, 1), labels = c("kobieta", "mezczyzna"))
    # ii. college: 1 – rolnictwo, 2 – architektura, 3 – budownictwo,
      # 4 – administracja, 5- leśnictwo, 6 – pedagogika, 7 – inżynieria,
      # 8 – sztuki piękne,
uof$college = factor(uof$college, levels = c(1, 2, 3, 4, 5, 6, 7, 8), labels = c("rolnictwo", "architektura", "budownictwo", "administracja", "lesnictwo", "pedagogika", "inzynieria", "sztuki piekne"))

# Korzystając z pakietu ggplot2 wykonaj następujące wykresy:
install.packages("ggplot2")
library(ggplot2)
  # a. Wykres rozrzutu pensji względem płci
ggplot(uof, aes(x=salary, y=gender)) + geom_point()
  # b. Wykres słupkowy / histogram obrazujący liczebność absolwentów poszczególnych typów uczelni (zmienna college).
ggplot(data=uof, aes(college)) + geom_histogram(stat = "count")
  # c. Wykres punktowy zależności rodzaju ukończonych studiów od zarobków, 
    # z punktami zróżnicowanymi kolorem ze względu na płeć.
ggplot(data=uof, aes(x = college, y = salary, fill=gender)) + geom_dotplot(binaxis='y', stackdir='center', binwidth = 1000)
  # d. Wykres punktowy zależności rodzaju ukończonych studiów od zarobków,
    # z punktami zróżnicowanymi kształtem ze względu na płeć, a kolorem ze
    # względu na datę ukończenia studiów
ggplot(data=uof, aes(x = college, y = salary, fill=grad_date, shape = gender)) + geom_dotplot(binaxis='y', stackdir='center', binwidth = 1000)

# Wczytanie Danych --------------------------------------------------------
install.packages("remotes")
install.packages("stringr")
install.packages("geosphere")
install.packages("maps")
library("remotes")
library(maps)
library(geosphere)
library(stringr)
install_github("mgendera/plcities/plcities")
woje = plcities::wojewodztwa
list = plcities::miasta
pol_wsp = world.cities[world.cities$country.etc == "Poland",]
dl1 = length(list)
dl2 = length(woje)
# Funkcje -----------------------------------------------------------------
Pow_woj = function(wojew){
  zmienna = 0
  wojew = readline("Podaj województwo: ")
  wojew = toupper(wojew)
  for(i in 1:dl2){
    if(wojew == woje[[i]][1]){
      cat("Podane województwo ma powierzchnię: ")
      cat(woje[[i]][2])
      zmienna = 1
    }
  }
  if(zmienna == 0){
    print("Nie ma takiego województwa")
  }
}

Miast_w_wojew = function(miasta){
  zmienna = 2
  miasto = readline("Podaj miasto: ")
  for(i in 1:dl1){
    if(miasto == list[[i]][3]){
      cat("Podane miasto leży w województwie: ")
      cat(list[[i]][2])
      zmienna = 1
    }
  }
  if(zmienna == 0){
    print("Nie ma takiego miasta")
  }
}

Odl_m_miast = function(pol_wsp){
  miasto_1 = readline("Podaj pierwsze miasto w języku angielskim: ")
  miasto_2 = readline("Podaj drugie miasto w języku angielskim: ")
  Pol = pol_wsp[pol_wsp$name %in% c(miasto_1,miasto_2),]
  lat = Pol[,4]
  long = Pol[,5]
  dystans = distm(c(long[1], lat[1]), c(long[2], lat[2]), fun = distHaversine)[,1] / 1000
  cat("Między miastem", miasto_1, ", a miastem", miasto_2, "jest odległość", dystans, "km.")
}

# Program 1 -----------------------------------------------------------------  
cat("Witaj w menu. 
Wybierz 1, jeżeli chcesz poznać powierzchnię województwa.
Wybierz 2, jeżeli chcesz sprawdzić w jakim województwie leży wybrane miasto. 
Wybierz 3, aby poznać odległość między dwoma wybranymi miastami. ")
x = readline("Co chcesz zrobić: ")

# Program 2 ---------------------------------------------------------------
while(x > 0){
  if(x == '1'){
    Pow_woj(woje)
  }
  if(x == '2'){
    Miast_w_wojew(list)
  }
 if(x == '3'){
   Odl_m_miast(pol_wsp)
 }
 x = readline("Co chcesz zrobić dalej : (0 jeśli wyjść) ")
}


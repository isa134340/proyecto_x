###UNIDOS 1.
adivina_microorganismos <- function(microorganismos){
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  cat("En este juego podras repasar tu conocimiento en microorganismos !\n")
  cat("¡Estas listo, vamos a jugar!")
  readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial
  while(tolower(micro_inicial) != "bacteria" & tolower(micro_inicial) != "hongos" & tolower(micro_inicial) != "virus") {
    readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial  
  }
  
  
  
} #EL DE LA FUNCION.
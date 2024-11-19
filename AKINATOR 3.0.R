##AKINATOR 3.0

#hongo_adivina <- function(microorganismos){
 # cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  ##hile(tolower(inicial) != "macroscopico" & tolower(inicial) != "microscopico") {
    inicial <- readline(prompt = "Escoge la opción 'macroscopico' o 'microscopico': ")
  }
  ####EMPEZAMOS CON MACROSCOPICO
  #if (inicial == "macroscopico") {
    # Segunda pregunta: ¿PRODUCE ANTIBIOTICO?
    antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ")
    while(antibiotico != "si" & antibiotico != "no"){
      antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ")
    }
    if(antibiotico == "no"){
      # TERCERA PREGUNTA: ¿ES COMESTIBLE?
      comestible <- readline(prompt = "¿El hongo es comestible (si/no): ")
      while(comestible != "si" & comestible != "no"){
        comestible <- readline(prompt = "¿El hongo es comestible (si/no):  ") 
      }  
      if(comestible == "si"){
        medicinal <- readline(prompt = "¿El hongo es medicinal (si/no): ")
        while(medicinal != "si" & medicinal != "no"){
          medicinal <- readline(prompt = "¿El hongo es medicinal (si/no):  ")
        }
        if (medicinal == "si") {
          genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
          while (tolower(genero_1) != "si" & tolower(genero_1) != "no") {
            genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
          }
          if (genero_1 == "si") {
            print("Tu hongo es Lycoperdon pertulatum")
            analisis_AA()
          } else if (genero_1 == "no") {
            genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
            while (tolower(genero_2) != "si" & tolower(genero_2) != "no") {
              genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
            }
            if (genero_2 == "si") {
              print("Tu hongo es Lentinula edodes")
            } else {
              print("Tu hongo es Ganoderma lucidum")
            } 
          }
        } else if (medicinal == "no"){
          sapo <- readline(prompt = "El hongo es saprofito? (si/no): ")
          while (tolower(sapo) != "si" & tolower (sapo) != "no"){
            sapo <- readline(prompt = "¿Es saprofito (si/no): ")}
          if (sapo == "no"){
            gen_1 <- readline(prompt = "¿Tu hongo es del genero Lactarius? (si/no)")
            while (tolower(gen_1) != "si" & tolower(gen_1) != "no") {
              gen_1 <- readline(prompt = "¿Tu hongo es del genero Lactarius? (si/no): ")
            }
            if (gen_1 == "si"){
              print("Tu hongo es lactarius indigo")
            }else if (gen_1 == "no"){
              gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
              while (tolower(gen_2) != "si" & tolower(gen_2) != "no") {
                gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
              }
              if (gen_2 == "si"){
                print("Tu hongo es Agaricus bisporus")
              }else{
                print("Tu hongo es Morchella esculenta")
              }
          } }else if (sapo == "si"){
            print("Tu hongo es Pleurotus ostreatus")
          }
        
      } }else if (comestible == "no"){
        gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")
        while (tolower(gen_4) != "si" & tolower(geno_4) != "no") {
          gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")  
        }
      } 
      if (gen_4 == "si"){
        print("El hongo es Russula emetica")
      } else {
        print("Los hongos son Amanita phalloides y Amanita gemmata")
      }
     else if(antibiotico == "si"){
      #print("No hay ningun hongo que coincide con tu busqueda, intenta de nuevo")
    }
  }
  if (tolower(inicial) == "microscopico") {
    # Aquí empiezas con la opción "microscopico"
    antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    while (tolower(antibiotico_2) != "si" & tolower(antibiotico_2) != "no"){
      antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    }
    
    if (antibiotico_2 == "si") {
      print("Tu microorganismo es Penicillium chrysogenum.")
    }
    else if (antibiotico_2 == "no"){
      hifa <- readline(prompt = "¿Tiene hifa septada o no septada (escribe septada o no septada): ")
      while (tolower(hifa) != "septada" & tolower (hifa) != "no septada") {
        hifa <- readline(prompt = "¿Tiene hifa septada o no septada (escribe septada o no septada): ") 
      }
      if (hifa == "no septada"){
        celula <- readline(prompt = "¿Es unicelular o multicelular: ")
        while (tolower(celula) != "unicelular" & tolower (celula) != "multicelular") {
          celula <- readline(prompt = "¿Es unicelular o multicelular: ")
        } 
        if (celula== "unicelular"){
          print("Tu hongo puede ser Candida albicans o Cryptococcus neoformans")
        }
        else if (celula== "multicelular"){
          saprofito <- readline(prompt = "¿Es saprofito (si/no): ")
          while (tolower(saprofito) != "si" & tolower (saprofito) != "no"){
            saprofito <- readline(prompt = "¿Es saprofito (si/no): ")
          }
          if (saprofito == "si"){
            print("Tu hongo puede ser: Aspergillus fumigatus, Aspergillus niger,Rhizopus stolonifer o Fusarium solani")
          } else if (tolower(saprofito)== "no") {
            print("Tu hongo es Microsporum canis")
          }
        }
      }
      else if (hifa == "septada"){
        print("Tu microorganismo es Claviceps purpurea.")
      } 
    }
  }
  }
#}

######################################
hongo_adivina(microorganismo)
##########################
##AKINATOR 4.0
hongo_adivina <- function(microorganismos){
  
  readline(prompt = "Escoge una opción (macroscopico o microscopico): ") -> inicial
  while(tolower(inicial) != "macroscopico" & tolower(inicial) != "microscopico") {
    inicial <- readline(prompt = "Escoge la opción 'macroscopico' o 'microscopico': ")
  }
  
  #### EMPEZAMOS CON MACROSCÓPICO
  if (tolower(inicial) == "macroscopico") {
    # Segunda pregunta: ¿PRODUCE ANTIBIÓTICO?
    antibiotico <- readline(prompt = "¿El hongo produce antibiótico (si/no): ")
    while(antibiotico != "si" & antibiotico != "no"){
      antibiotico <- readline(prompt = "¿El hongo produce antibiótico (si/no): ")
    }
    
    if (antibiotico == "no") {
      # TERCERA PREGUNTA: ¿ES COMESTIBLE?
      comestible <- readline(prompt = "¿El hongo es comestible (si/no): ")
      while (comestible != "si" & comestible != "no") {
        comestible <- readline(prompt = "¿El hongo es comestible (si/no): ") 
      }
      
      if (comestible == "si") {
        medicinal <- readline(prompt = "¿El hongo es medicinal (si/no): ")
        while (medicinal != "si" & medicinal != "no") {
          medicinal <- readline(prompt = "¿El hongo es medicinal (si/no): ")
        }
        
        if (medicinal == "si") {
          genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
          while (tolower(genero_1) != "si" & tolower(genero_1) != "no") {
            genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
          }
          if (genero_1 == "si") {
            print("Tu hongo es Lycoperdon pertulatum")
            analisis_AA_2()
          } else {
            genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
            while (tolower(genero_2) != "si" & tolower(genero_2) != "no") {
              genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
            }
            if (genero_2 == "si") {
              print("Tu hongo es Lentinula edodes")
            } else {
              print("Tu hongo es Ganoderma lucidum")
            }
          }
        } else {
          sapo <- readline(prompt = "¿El hongo es saprofito? (si/no): ")
          while (tolower(sapo) != "si" & tolower(sapo) != "no") {
            sapo <- readline(prompt = "¿Es saprofito (si/no): ")
          }
          
          if (sapo == "no") {
            gen_1 <- readline(prompt = "¿Tu hongo es del genero Lactarius? (si/no): ")
            while (tolower(gen_1) != "si" & tolower(gen_1) != "no") {
              gen_1 <- readline(prompt = "¿Tu hongo es del genero Lactarius? (si/no): ")
            }
            if (gen_1 == "si") {
              print("Tu hongo es Lactarius indigo")
            } else {
              gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
              while (tolower(gen_2) != "si" & tolower(gen_2) != "no") {
                gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
              }
              if (gen_2 == "si") {
                print("Tu hongo es Agaricus bisporus")
              } else {
                print("Tu hongo es Morchella esculenta")
              }
            }
          } else {
            print("Tu hongo es Pleurotus ostreatus")
          }
        }
      } else if (comestible == "no") {
        gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")
        while (tolower(gen_4) != "si" & tolower(gen_4) != "no") {
          gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")
        }
        
        if (gen_4 == "si") {
          print("El hongo es Russula emetica")
        } else {
          print("Los hongos son Amanita phalloides y Amanita gemmata")
        }
      }
    } else {  # antibiotico == "si"
      print("No hay ningún hongo que coincida con tu búsqueda, intenta de nuevo")
    }
  }
  #### EMPEZAMOS CON MICROSCÓPICO
  if (tolower(inicial) == "microscopico") {
    antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    while (tolower(antibiotico_2) != "si" & tolower(antibiotico_2) != "no") {
      antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    }
    
    if (antibiotico_2 == "si") {
      print("Tu microorganismo es Penicillium chrysogenum.")
    } else {
      hifa <- readline(prompt = "¿Tiene hifa septada o no septada (escribe septada o no septada): ")
      while (tolower(hifa) != "septada" & tolower(hifa) != "no septada") {
        hifa <- readline(prompt = "¿Tiene hifa septada o no septada (escribe septada o no septada): ")
      }
      if (hifa == "no septada") {
        celula <- readline(prompt = "¿Es unicelular o multicelular? ")
        while (tolower(celula) != "unicelular" & tolower(celula) != "multicelular") {
          celula <- readline(prompt = "¿Es unicelular o multicelular: ")
        }
        
        if (celula == "unicelular") {
          gen_6 <- readline(prompt = "¿El hongo es del genero Candida? (si/no)")
          while (tolower(gen_6) != "si" & tolower(gen_6) != "no") {
            gen_6 <- readline(prompt = "¿El hongo es del genero Candida? (si/no)")  
          }
          #print("Tu hongo puede ser Candida albicans o Cryptococcus neoformans")
          if (gen_6 == "si") {
            print("Tu hongo es Candida albicans")
          } else {
            print("Tu hongo es Cryptococcus neoformans")
          }
        }  else {
          saprofito <- readline(prompt = "¿Es saprofito (si/no): ")
          while (tolower(saprofito) != "si" & tolower(saprofito) != "no") {
            saprofito <- readline(prompt = "¿Es saprofito (si/no): ")
          }
          
          if (saprofito == "si") {
            gen_8 <- readline (prompt = "¿El hongo es del genero Fusarium? (si/no): ")
            while (tolower(gen_8) != "si" & tolower(gen_8) !="no") {
              gen_8 <- readline (prompt = "¿El hongo es del genero Fusarium? (si/no): ")  
            }
            if (gen_8 == "si"){
              print("El hongo es Fusarium solani")
            } else {
              gen_9 <- readline(prompt = "¿El hongo es del genero Rhizopus? (si/no): ")
              while (tolower(gen_9) != "si" & tolower(gen_9) !="no") {
                gen_9 <- readline(prompt = "¿El hongo es del genero Rhizopus? (si/no): ")  
              } 
              if (gen_9 == "si"){
                print("Tu hongo es Rhizopus stolonifer")
              } else {print("Tus hongos son Aspergillus fumigatus y Aspergillus niger")}
            }
            
          } else {
            print("Tu hongo es Microsporum canis")
          }
        }
      } else {
        print("Tu microorganismo es Claviceps purpurea.")
      }
    }
  }
  }


hongo_adivina(microorganismo)
######
#PARA REINICIAR EL JUEGO; ES UNA FUNCION APARTE.
reinicio_juego <- function() {
  readline(prompt = "¿Quieres intentarlo de nuevo? (si/no): ") -> respuesta
  while (respuesta != "si" & respuesta !="no") {
    readline(prompt = "¿Quieres intentarlo de nuevo? (si/no): ") -> respuesta  
  }
  if (respuesta == "si") {
    hongo_adivina(microorganismos) #Que active la funcion de nuevo----este seria el nombre de la funcion general
  } else {
    cat("¡Gracias por jugar! Adiós.\n")
  }
}


###########################################
lycoperdon_secuencia <- readAAStringSet("SECUENCIAS/lycoperlum.fasta")
print(lycoperdon_secuencia)

secuencia <- readAAStringSet(file.choose())
class(secuencia)
##########################################
library(Biostrings)
library(BiocGenerics)
library()


#analisis_AA <- function( ){
 # cat("¡Ahora podras conocer datos sobre la secuencia de tu microorganismo!\n")
  #cat("Recuerda el nombre de tu microorganismo, lo necesitaras para esta parte !\n")
  #secuencia <- readAAStringSet(file.choose())
  #tamaño_aa<- width(secuencia)
  #return(list(secuencia = secuencia, tamaño_aa = tamaño_aa))
#}

#analisis_AA()

ADN_analisis<- function( ){
  cat("¡Ahora podras conocer datos sobre la secuencia de tu microorganismo!\n")
  cat("Recuerda el nombre de tu microorganismo, lo necesitaras para esta parte !\n")
  secuencia_ADN <- readDNAStringSet( file.choose())
  tamaño <- width(secuencia_ADN) 
  reverso<- rev(secuencia_ADN) 
  reverso_complementario <- reverseComplement(secuencia_ADN)
  alfabeto<- alphabetFrequency(secuencia_ADN)
  traducida<- translate(secuencia_ADN)
  return(list(tamaño = tamaño, reverso = reverso, reverso_complementario = reverso_complementario, alfabeto = alfabeto, traducida=traducida))
}

ADN_analisis()

ARN_analisis<- function( ){
  cat("¡Ahora podras conocer datos sobre la secuencia de tu microorganismo!\n")
  cat("Recuerda el nombre de tu microorganismo, lo necesitaras para esta parte !\n")
  secuencia_ARN <- readRNAStringSet( file.choose())
  tamaño <- width(secuencia_ARN) 
  reverso<- rev(secuencia_ARN) 
  reverso_complementario <- reverseComplement(secuencia_ARN)
  alfabeto<- alphabetFrequency(secuencia_ARN)
  traducida<- translate(secuencia_ARN)
  return(list(tamaño = tamaño, reverso = reverso, reverso_complementario = reverso_complementario, alfabeto = alfabeto, traducida=traducida))
}

RNA_analisis( )


# Cargar Biostrings
library(Biostrings)

# Función de análisis de secuencia
analisis_AA_2 <- function() {
  cat("¡Ahora podrás conocer datos sobre la secuencia de tu microorganismo!\n")
  cat("Recuerda el nombre de tu microorganismo, lo necesitarás para esta parte!\n")
  
  secuencia <- readAAStringSet(file.choose())  
  tamaño_aa <- width(secuencia)  # Calcula el tamaño de la secuencia de aminoácidos
  
  # Mostrar el resultado
  cat("La secuencia tiene un tamaño de: ", tamaño_aa, " aminoácidos\n")
  cat("La secuencia es:\n")
  print(secuencia)
  
  # Devolver la secuencia y su tamaño
  return(list(secuencia = secuencia, tamaño_aa = tamaño_aa))
}

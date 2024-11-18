##AKINATOR 3.0

hongo_adivina <- function(microorganismos){
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  readline(prompt = "escoge una opccion (macroscopico o microscopico) ") -> inicial
  while(tolower(inicial) != "macroscopico" & tolower(inicial) != "microscopico") {
    inicial <- readline(prompt = "Escoge la opción 'macroscopico' o 'microscopico': ")
  }
  ####EMPEZAMOS CON MACROSCOPICO
  if (inicial == "macroscopico") {
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
        print("Tu hongo puede ser Russula emetica, Amanita gemmata o Amanita phalloides")
      }
     else if(antibiotico == "si"){
      print("No hay ningun hongo que coincide con tu busqueda, intenta de nuevo")
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
}

######################################
hongo_adivina(microorganismo)
##########################
#if (medicinal == "si"){
#  genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
#  while (tolower(genero_1) != "si" & tolower (genero_1) != "no"){
   # genero_1 <- readline(prompt = "¿Tu hongo es del genero lycoperdon? (si/no): ")
 # } if (genero_1 == "si"){
    #print("Tu hongo es Lycoperdon pertulatum")
  #} else if (genero_1 == "no"){
   # genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
  #  while (tolower(genero_2) != "si" & tolower (genero_2) != "no"){
   #   genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
  #  }if (genero_2 == "si"){
  #    print("Tu hongo es Lentinula edodes")
  #  }else {print("Tu hongo es Ganoderma lucidum")
  #  } 
  #}
#}
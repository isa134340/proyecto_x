#UNIDOS PT2
adivina_microorganismos <- function(microorganismos){
  
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  cat("En este juego podras repasar tu conocimiento en microorganismos !\n")
  cat("¡Estas listo, vamos a jugar!")
  
  readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial
  while(tolower(micro_inicial) != "bacterias" & tolower(micro_inicial) != "hongos" & tolower(micro_inicial) != "virus") {
    readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial  
  } #EL DEL WHILE TAMPOCO BORRAR--ESCRIBIR DESPUES DE ESTE
  
  if (micro_inicial == "hongos"){
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
  } else if(micro_inicial=="virus"){
    gen<-readline(prompt="que material genético tiene: \n dna/rna ")
    cadena<-readline(prompt="cuantas cadenas tiene: \n doble/sencilla ")
    envoltura<-readline(prompt="tiene envoltura: \n si/no ")
    vectores<-readline(prompt="necesita de vectores: \n si/no ")
    huesped<-readline(prompt="principalmente que afecta: \n humano/animal/planta/bacteria ")
    enzima<-readline(prompt="usa retrotranscriptasa: \n si/no ")#si dice que si ya obvio es VIH
    vacuna<-readline(prompt="la infección causada por tu virus tiene vacuna disponible?: \n si/no ")
    trans<-readline(prompt="cuál es su forma principal de transmisión:\n sexual/contacto/saliva/sangre/fecal/vector/bacteria ")
    #no se como plantear la pregunta del género :/
    
    if(gen=="dna"){
      if(cadena=="sencilla"){
        if(envoltura=="no"){
          if(vectores=="si"){
            if(huesped=="planta"){
              if(enzima=="no"){
                if(vacuna=="no"){
                  if(trans=="vector"){
                    print("tu virus es el virus del mosaico de la coliflor no es así?")
                  }
                }
              }
            }
          }
        }
      }else{
        if(envoltura=="no"){
          if(vectores=="no"){
            if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="no"){
                  if(trans=="saliva"){
                    print("tu virus es un adenovirus")
                  }
                }else{
                  if(trans=="sexual"){
                    print("tu virus es el del VPH")
                  }
                }
              }
            }else if(huesped=="bacteria"){
              if(vacuna=="no"){
                if(enzima=="no"){
                  if(trans=="bacteria"){
                    print("pensaste en un bacteriofago T4")
                  }
                }
              }
            }
          }
        }else{
          if(vectores=="no"){
            if(huesped=="animal"){
              print("tu virus es la viruela símica")
            }else if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  print("pensaste en el virus de la hepatitis B")
                } else {
                  if(trans=="sexual"){
                    print("pensaste en el virus del herpes")
                  } else if(trans=="contacto"){
                    viru1<-readline(prompt="pensaste en el cytomegalovirus?: si/no ")
                    if(viru1=="si"){
                      print("el virus en el que pensaste es cytomegalovirus")
                    }else{
                      print("el virus en el que pensaste es el de epstein-barr")
                    }
                  }
                }
              }
            }
          }
        }
      }
    } else if(gen=="rna"){
      if(cadena=="doble"){
        print("tu virus es el rotavirus")
      }else {
        if(envoltura=="no"){
          if(vectores=="si"){
            print("tienes el virus del mosaico del tabaco")
          } else{ 
            print("tienes el virus de la polio")}
        }else{
          if(vectores=="si"){
            if(huesped=="animal"){
              print("tu virus es el de la rabia, o sea lyssavirus")
            }else if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  print("pensaste en arenavirus")
                }else{
                  print("pensaste en el flavivirus")
                }
              }
            }
          }else{
            if(huesped=="humano"){
              if(enzima=="si"){
                print("pensaste en el VIH, o sea lentivirus")
              }else{
                if(vacuna=="no"){
                  print("tienes el pneumovirus")
                } else{
                  if(trans=="sangre"){
                    print("pensaste en el ébola")
                  }else if(trans=="saliva"){
                    viru2<-readline(prompt="tu virus pertenece al género influenzavirus?: si/no ")
                    if(viru2=="no"){
                      print("entonces pensaste en el coronavirus, no tuviste con la pandemia para dejar de pensar en el verdad?")
                    } else{
                      print("tu virus es el influenzavirus")
                    }
                  }
                }
              }
            }
          }
        }
      }
    }#aquí acaba todo lo de los virus
  }#despues va el otro IF de bacterias----NO se si sea ELSE IF#creo que ya sería nada más un else pero pues igual hay que checar con cual corre
}  #EL DE LA FUNCION NO BORRAR

adivina_microorganismos(microorganismos)

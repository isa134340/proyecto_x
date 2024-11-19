#UNIDOS PT3
adivina_microorganismos <- function(microorganismos){
  library(Biostrings)
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
              analisis_AA_2()
            } else {
              genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
              while (tolower(genero_2) != "si" & tolower(genero_2) != "no") {
                genero_2 <- readline(prompt = "¿Tu hongo es del genero lentinula? (si/no): ")
              }
              if (genero_2 == "si") {
                print("Tu hongo es Lentinula edodes")
                ADN_analisis()
              } else {
                print("Tu hongo es Ganoderma lucidum")
                ADN_analisis()
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
                analisis_AA_2()
              } else {
                gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
                while (tolower(gen_2) != "si" & tolower(gen_2) != "no") {
                  gen_2 <- readline(prompt = "¿Tu hongo es del genero Agaricus? (si/no): ")
                }
                if (gen_2 == "si") {
                  print("Tu hongo es Agaricus bisporus")
                  ADN_analisis()
                } else {
                  print("Tu hongo es Morchella esculenta")
                  ADN_analisis()
                }
              }
            } else {
              print("Tu hongo es Pleurotus ostreatus")
              ADN_analisis()
            }
          }
        } else if (comestible == "no") {
          gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")
          while (tolower(gen_4) != "si" & tolower(gen_4) != "no") {
            gen_4 <- readline(prompt = "¿El hongo es del genero Russula? (si/no): ")
          }
          
          if (gen_4 == "si") {
            print("El hongo es Russula emetica")
            ADN_analisis()
          } else {
            print("Los hongos son Amanita phalloides y Amanita gemmata")
            ADN_analisis()
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
        ADN_analisis()
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
              ADN_analisis()
            } else {
              print("Tu hongo es Cryptococcus neoformans")
              ADN_analisis()
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
                ADN_analisis()
              } else {
                gen_9 <- readline(prompt = "¿El hongo es del genero Rhizopus? (si/no): ")
                while (tolower(gen_9) != "si" & tolower(gen_9) !="no") {
                  gen_9 <- readline(prompt = "¿El hongo es del genero Rhizopus? (si/no): ")  
                } 
                if (gen_9 == "si"){
                  print("Tu hongo es Rhizopus stolonifer")
                  ADN_analisis()
                } else {print("Tus hongos son Aspergillus fumigatus y Aspergillus niger")
                  ADN_analisis()}
              }
              
            } else {
              print("Tu hongo es Microsporum canis")
              ADN_analisis()
            }
          }
        } else {
          print("Tu microorganismo es Claviceps purpurea.")
          ADN_analisis()
        }
      }
    }
  } else if(micro_inicial=="virus"){
    gen<-readline(prompt="que material genético tiene: \n dna/rna ")
    while(tolower(gen)!= "dna" & tolower(gen)!= "rna"){
      gen<-readline(prompt="que material genético tiene: \n dna/rna ")
    }
    cadena<-readline(prompt="cuantas cadenas tiene: \n doble/sencilla ")
    while(tolower(cadena)!="doble" & tolower(cadena)!="sencilla"){
      cadena<-readline(prompt="cuantas cadenas tiene: \n doble/sencilla ")
    }
    envoltura<-readline(prompt="tiene envoltura: \n si/no ")
    while(tolower(envoltura)!="si" & tolower(envoltura)!="no"){
      envoltura<-readline(prompt="tiene envoltura: \n si/no ")
    }
    vectores<-readline(prompt="necesita de vectores: \n si/no ")
    while(tolower(vectores)!="si" & tolower(vectores)!="no"){
      vectores<-readline(prompt="necesita de vectores: \n si/no ")
    }
    huesped<-readline(prompt="principalmente que afecta: \n humano/animal/planta/bacteria ")
    while(tolower(huesped)!="humano" & tolower(huesped)!="animal" & tolower(huesped)!="planta" & tolower(huesped)!="bacteria"){
      huesped<-readline(prompt="principalmente que afecta: \n humano/animal/planta/bacteria ")
    }
    enzima<-readline(prompt="usa retrotranscriptasa: \n si/no ")
    while(tolower(enzima)!="si" & tolower(enzima)!="no"){
      enzima<-readline(prompt="usa retrotranscriptasa: \n si/no ")
    }
    vacuna<-readline(prompt="cuenta con vacuna disponible?: \n si/no ")
    while(tolower(vacuna)!="si" & tolower(vacuna)!="no"){
      vacuna<-readline(prompt="cuenta con vacuna disponible?: \n si/no ")
    }
    trans<-readline(prompt="cuál es su forma principal de transmisión:\n sexual/contacto/saliva/sangre/fecal/vector/bacteria ")
    while(tolower(trans)!="sexual" & tolower(trans)!="contacto" & tolower(trans)!="saliva" & tolower(trans)!="sangre" & tolower(trans)!="fecal" & tolower(trans)!="vector" & tolower(trans)!="bacteria"){
      trans<-readline(prompt="cual es su forma principal de transmisión: \n sexual/contacto/saliva/sangre/fecal/vector/bacteria ")
    }
    #VIRUS DNA
    if(gen=="dna"){
      if(cadena=="sencilla"){
        if(envoltura=="no"){
          if(vectores=="si"){
            if(huesped=="planta"){
              if(enzima=="no"){
                if(vacuna=="no"){
                  if(trans=="vector"){
                    print("tu virus es el virus del mosaico de la coliflor no es así?")
                  ADN_analisis()}
                }
              }
            }
          }else{print("No hay virus que coincida con tu descripción ")
            reinicio_juego()}
        }
      }else{#esto es cadena doble
        if(envoltura=="no"){
          if(vectores=="no"){
            if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="no"){
                  if(trans=="saliva"){
                    print("tu virus es un adenovirus")
                  ADN_analisis()}
                }else{
                  if(trans=="sexual"){
                    print("tu virus es el del VPH")
                  ADN_analisis()}
                }
              }
            }else if(huesped=="bacteria"){
              if(vacuna=="no"){
                if(enzima=="no"){
                  if(trans=="bacteria"){
                    print("pensaste en un bacteriofago T4")
                  ADN_analisis()}
                }
              }
            }else{print("No hay virus que coincida con tu descripción")
              reinicio_juego()}
          }
        }else{#esto es que SI tiene envoltura 
          if(vectores=="no"){
            if(huesped=="animal"){
              print("tu virus es la viruela símica")
            ADN_analisis()}else if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  print("pensaste en el virus de la hepatitis B")
                ADN_analisis()} else {
                  if(trans=="sexual"){
                    print("pensaste en el virus del herpes")
                  ADN_analisis()} else if(trans=="contacto"){
                    viru1<-readline(prompt="pensaste en el cytomegalovirus?: si/no ")
                    if(viru1=="si"){
                      print("el virus en el que pensaste es cytomegalovirus")
                    ADN_analisis()}else{
                      print("el virus en el que pensaste es el de epstein-barr")
                    ADN_analisis()}
                  }
                }
              }
            }else if(huesped=="animal"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  if(trans=="contacto"){
                    print("tienes el virus de la viruela símica")
                  ADN_analisis()}
                }
              }
            }else{print("No hay virus que coincida con tu descripción")
              reinicio_juego()}
          }else{print("No hay virus que coincida con tu descripción")
            reinicio_juego()}
        }
      }
    } else if(gen=="rna"){###VIRUS RNA
      if(cadena=="doble"){
        if(envoltura=="no"){
          if(vectores=="no"){
            if(huesped=="animal"){
              if(enzima=="no"){
                if(vectores=="si"){
                  if(trans=="fecal"){print("tienes el rotavirus")
                    ADN_analisis()}
                }
              }
            }else if(huesped=="bacteria"|huesped=="planta"|huesped=="humano"){print("No hay virus que coincida con tu descripción ")
              reinicio_juego()}
          }
        }
      }else {
        if(envoltura=="no"){
          if(vectores=="si"){
            if(huesped=="planta"){
              if(enzima=="no"){
                if(vacuna=="no"){
                  if(trans=="vector"){print("tienes el virus del mosaico del tabaco")
                    ADN_analisis()}
                }else{print("No hay virus que coincida con tu descripción")
                  reinicio_juego()}
              }
            }
          } else{ 
            if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  if(trans=="fecal"){print("tienes el virus de la polio")
                    ADN_analisis()}
                }else{print("No hay virus que coincida con tu descripción")
                  reinicio_juego()}
              }else{print("No hay virus que coincida con tu descripción")
                reinicio_juego()}
            }
          }
        }else{#esto quiere decir que si tiene envoltura RNA SENCILLA CON ENV
          if(vectores=="si"){
            if(huesped=="animal"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  if(trans=="saliva"){
                    print("tu virus es el de la rabia, o sea lyssavirus")
                    ADN_analisis()}
                }
              }
            }else if(huesped=="humano"){
              if(enzima=="no"){
                if(vacuna=="si"){
                  if(trans=="vector"){
                    viru3<-readline(prompt="tu virus pertenece al género de Arenavirus? :si/no ")
                    if(viru3=="si"){print("pensaste en arenavirus")
                      ADN_analisis()}else{print("pensaste en el virus del dengue")
                        ADN_analisis()}}else{print("No hay virus que coincida con tu descripción")
                          reinicio_juego()}
                }else{
                  print("pensaste en el flavivirus")
                  ADN_analisis()
                }
              }
            }else if(huesped=="planta"|huesped=="bacteria"){print("No hay virus que coincida con tu descripción")
              reinicio_juego()}
          }else{
            if(huesped=="humano"){
              if(enzima=="si"){
                if(vacuna=="no"){
                  if(trans=="sangre"){print("tienes el VIH")
                    ADN_analisis()}
                }else{print("No hay virus que coincida con tu descripción")
                  reinicio_juego()}
              }else{
                if(vacuna=="no"){
                  if(trans=="saliva"){print("tienes el pneumovirus")
                    ADN_analisis()}else{print("No hay virus que coincida con tu descripción")
                      reinicio_juego()}
                } else{
                  if(trans=="sangre"){
                    print("pensaste en el ébola")
                    ADN_analisis()
                  }else if(trans=="saliva"){
                    viru2<-readline(prompt="tu virus pertenece al género influenzavirus?: si/no ")
                    if(viru2=="no"){
                      print("entonces pensaste en el coronavirus, no tuviste con la pandemia para dejar de pensar en el verdad?")
                      ADN_analisis()
                    } else{
                      print("tu virus es el influenzavirus")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        }
      }
    }#aquí acaba todo lo de los virus
  } else if (micro_inicial == "bacterias" ) {identificar_bacteria <- function() {
  # Preguntas iniciales
  gram <- readline(prompt = "¿La bacteria es Gram positiva o Gram negativa? (positiva/negativa/NA): ")
  while(tolower(gram) != "positiva" & tolower(gram) != "negativa" & tolower(gram) != "NA") { #corchete del while
    gram <- readline(prompt = "¿La bacteria es Gram positiva o Gram negativa? (positiva/negativa/NA): ")  
  } #corchete del while 
  morfologia <- readline(prompt = "¿Cuál es la morfología de la bacteria? (coco/bacilo): ")
  while (tolower (morfologia) != "coco" & tolower (morfologia) != "bacilo" ){
    morfologia <- readline(prompt = "¿Cuál es la morfología de la bacteria? (coco/bacilo): ")
  }#corchete while 
  respiracion <- readline(prompt = "¿La bacteria es aerobia o anaerobia? (aerobio/anaerobio): ")
  while (tolower (respiracion) != "aerobio" & tolower (respiracion ) !="anaerobio"){
    respiracion <- readline(prompt = "¿La bacteria es aerobia o anaerobia? (aerobio/anaerobio): ")
  } #corchete while
  motilidad <- readline(prompt = "¿La bacteria es móvil? (sí/no): ")
  while (tolower (motilidad) != "si" & tolower (motilidad) !="sí" & tolower (motilidad) != "no"){
    motilidad <- readline(prompt = "¿La bacteria es móvil? (sí/no): ")
  } #corchete while
  patogena <- readline(prompt = "¿La bacteria es patógena? (sí/no): ")
  while (tolower (patogena) != "si" & tolower (patogena) !="sí" & tolower (patogena) != "no"){
    patogena <- readline(prompt = "¿La bacteria es patógena? (sí/no): ")
  }
  fermentadora_de_lactosa <- readline(prompt = "¿La bacteria fermenta la lactosa? (sí/no): ")
  while (tolower (fermentadora_de_lactosa) != "si" & tolower (fermentadora_de_lactosa) !="sí" & tolower (fermentadora_de_lactosa) != "no"){
    fermentadora_de_lactosa <- readline(prompt = "¿La bacteria fermenta la lactosa? (sí/no): ")
  }
  flagelos <- readline(prompt = "¿La bacteria tiene flagelos? (sí/no): ")
  while (tolower (flagelos) != "si" & tolower (flagelos) !="sí" & tolower (flagelos) != "no"){
    flagelos <- readline(prompt = "¿La bacteria tiene flagelos? (sí/no): ")
  }
  esporas <- readline(prompt = "¿La bacteria forma esporas? (sí/no): ")
  while (tolower (esporas) != "si" & tolower (esporas) !="sí" & tolower (esporas) != "no") {
    esporas <- readline(prompt = "¿La bacteria forma esporas? (sí/no): ")
  }
  fermentadora_de_glucosa <- readline(prompt = "¿La bacteria fermenta la glucosa? (sí/no): ")
  while (tolower (fermentadora_de_glucosa) != "si" & tolower (fermentadora_de_glucosa) !="sí" & tolower (fermentadora_de_glucosa) != "no"){
    fermentadora_de_glucosa <- readline(prompt = "¿La bacteria fermenta la glucosa? (sí/no): ")
  }
  catalasa <- readline(prompt = "¿La bacteria es catalasa positiva? (sí/no): ")
  while (tolower (catalasa) != "si" & tolower (catalasa) !="sí" & tolower (catalasa) != "no"){
    catalasa <- readline(prompt = "¿La bacteria es catalasa positiva? (sí/no): ")
  }
  oxidasa <- readline (prompt= "La bacteria es oxidasa positiva? (sí/no)")
  while (tolower (oxidasa) != "si" & tolower (oxidasa) !="sí" & tolower (oxidasa) != "no") {
    oxidasa <- readline (prompt= "La bacteria es oxidasa positiva? (sí/no)")
  }
  
  # Identificación de la bacteria
  if (gram == "positiva") {
    if (morfologia == "coco") {
      if (respiracion == "anaerobio") {
        if (motilidad == "no") {
          if (patogena == "sí") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "no") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "no") {
                      print("La bacteria es Streptococcus")
                      ADN_analisis()
                    } else if (catalasa == "sí") {
                      print("La bacteria es Staphylococcus aureus")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        }
      }
    } else if (morfologia == "bacilo") {
      if (respiracion == "anaerobio") {
        if (motilidad == "no") {
          if (patogena == "no") {
            if (fermentadora_de_lactosa == "sí") {
              if (flagelos == "no") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "no") {
                      casei <- readline(prompt = "¿La bacteria es Lactobacillus casei? (sí/no): ")
                      if (casei == "sí") {
                        print("La bacteria es Lactobacillus casei")
                        ADN_analisis()
                      } else if (casei == "no") {
                        print("La bacteria es Lactobacillus acidophilus")
                        ADN_analisis()
                      }
                    }
                  }
                }
              }
            } else if (patogena == "sí") {
              if (fermentadora_de_lactosa == "no") {
                if (flagelos == "no") {
                  if (esporas == "sí") {
                    if (fermentadora_de_glucosa == "no") {
                      if (catalasa == "no") {
                        botulinum <- readline(prompt = "¿La bacteria es Clostridium botulinum? (sí/no): ")
                        if (botulinum == "sí") {
                          print("La bacteria es Clostridium botulinum")
                          ADN_analisis()
                        } else if (botulinum == "no") {
                          print("La bacteria es Clostridium tetani")
                          ADN_analisis()
                        }
                      }
                    }
                  }
                } else if (flagelos == "sí") {
                  if (esporas == "no") {
                    if (fermentadora_de_glucosa == "sí") {
                      if (catalasa == "sí") {
                        print("La bacteria es Listeria monocytogenes")
                        ADN_analisis()
                      }
                    }
                  }
                }
              }
            }
          }
        }
      } else if (respiracion == "aerobio") {
        if (motilidad == "no") {
          if (patogena == "sí") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "sí") {
                if (esporas == "sí") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "sí") {
                      print("La bacteria es Bacillus anthracis")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          } else if (patogena == "no") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "sí") {
                if (esporas == "sí") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "sí") {
                      print("La bacteria es Bacillus thuringiensis")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        } else if (motilidad == "sí") {
          if (patogena == "no") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "sí") {
                if (esporas == "sí") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "sí") {
                      print("La bacteria es Bacillus subtilis")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  } else if (gram == "negativa") {
    if (morfologia == "coco") {
      if (respiracion == "aerobio") {
        if (motilidad == "no") {
          if (patogena == "sí") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "no") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "no") {
                    if (catalasa == "sí") {
                      print("La bacteria es Moraxella catarrhalis")
                      ADN_analisis()
                    } else if (catalasa == "no") {
                      print("La bacteria es Neisseria gonorrhoeae")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        }
      }
    } else if (morfologia == "bacilo") {
      if (respiracion == "anaerobio") {
        if (motilidad == "sí") {
          if (patogena == "sí") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "sí") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "sí") { 
                      if (oxidasa == "sí"){ 
                        print ("La bacteria es Vibrio cholerae ")
                        ADN_analisis()
                        }
                      else if (oxidasa == "no"){
                        print("La bacteria es Salmonella enterica ")
                        ADN_analisis()
                      }
                    }
                  }
                }
              }
            } else if (fermentadora_de_lactosa == "sí") {
              if (flagelos == "sí") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "sí") {
                    if (catalasa == "sí") {
                      print("La bacteria es Escherichia coli")
                      ADN_analisis()
                      }
                  }
                }
              }
            }
          }
        } else if (motilidad =="no"){ 
          print("La bacteria es Klebsiella pneumoniae")
          ADN_analisis()
          }
      } else if (respiracion == "aerobio") {
        if (motilidad == "sí") {
          if (patogena == "no") {
            if (fermentadora_de_lactosa == "no") {
              if (flagelos == "sí") {
                if (esporas == "no") {
                  if (fermentadora_de_glucosa == "no") {
                    if (catalasa == "sí") {
                      print("La bacteria es Azotobacter chroococcum")
                      ADN_analisis()
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  } else if (gram == "NA") {genero <- readline(prompt = "¿La bacteria pretenece al genero Mycobacterium ? (sí/no): ")
  if (genero == "sí") {
    print("La bacteria es Mycobacterium tuberculosis:")
    ADN_analisis()
  } 
  }
}
}
  reinicio_juego()

}  

adivina_microorganismos(microorganismos)

########################################
#PARA REINICIAR EL JUEGO; ES UNA FUNCION APARTE.
reinicio_juego <- function() {
  readline(prompt = "¿Quieres intentarlo de nuevo? (si/no): ") -> respuesta
  while (respuesta != "si" & respuesta !="no") {
    readline(prompt = "¿Quieres intentarlo de nuevo? (si/no): ") -> respuesta  
  }
  if (respuesta == "si") {
    adivina_microorganismos(microorganismos) #Que active la funcion de nuevo----este seria el nombre de la funcion general
  } else {
    cat("¡Gracias por jugar! Adiós.\n")
  }
}
#################################################
ADN_analisis<- function( ){
  cat("¡Ahora podras conocer datos sobre la secuencia de tu microorganismo!\n")
  cat("Recuerda el nombre de tu microorganismo, lo necesitaras para esta parte !\n")
  
  secuencia_ADN <- readDNAStringSet( file.choose())
  
  tamaño <- width(secuencia_ADN) 
  reverso<- rev(secuencia_ADN) 
  reverso_complementario <- reverseComplement(secuencia_ADN)
  alfabeto<- alphabetFrequency(secuencia_ADN)
  traducida<- translate(secuencia_ADN)
  
  cat("El tamaño de la secuencia es: ", tamaño, " nucleótidos\n")
  cat("Frecuencia de los nucleótidos: \n")
  print(alfabeto)
  cat("Secuencia traducida es: \n")
  print(traducida)
  
  
  return(list(tamaño = tamaño, 
              reverso = reverso, 
              reverso_complementario = reverso_complementario, 
              alfabeto = alfabeto, 
              traducida=traducida))
}

ADN_analisis()
#################################################################
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
########################################################################33

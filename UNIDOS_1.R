###UNIDOS 1.
adivina_microorganismos <- function(microorganismos){
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  cat("En este juego podras repasar tu conocimiento en microorganismos !\n")
  cat("¡Estas listo, vamos a jugar!")
  readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial
  while(tolower(micro_inicial) != "bacterias" & tolower(micro_inicial) != "hongos" & tolower(micro_inicial) != "virus") {
    readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial  
  }



  
  
  if (micro_inicial == "bacterias") {
    identificar_bacteria <- function() {
      # Preguntas iniciales
      gram <- readline(prompt = "¿La bacteria es Gram positiva o Gram negativa? (positiva/negativa/NA): ")
      morfologia <- readline(prompt = "¿Cuál es la morfología de la bacteria? (coco/bacilo): ")
      respiracion <- readline(prompt = "¿La bacteria es aerobia o anaerobia? (aerobio/anaerobio): ")
      motilidad <- readline(prompt = "¿La bacteria es móvil? (sí/no): ")
      patogena <- readline(prompt = "¿La bacteria es patógena? (sí/no): ")
      fermentadora_de_lactosa <- readline(prompt = "¿La bacteria fermenta la lactosa? (sí/no): ")
      flagelos <- readline(prompt = "¿La bacteria tiene flagelos? (sí/no): ")
      esporas <- readline(prompt = "¿La bacteria forma esporas? (sí/no): ")
      fermentadora_de_glucosa <- readline(prompt = "¿La bacteria fermenta la glucosa? (sí/no): ")
      catalasa <- readline(prompt = "¿La bacteria es catalasa positiva? (sí/no): ")
      oxidasa <- readline (prompt= "La bacteria es oxidasa positiva? (sí/no)")
      
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
                        } else if (catalasa == "sí") {
                          print("La bacteria es Staphylococcus aureus")
                        }
                      }
                    }
                  }
                }
              }
            } else if (patogena== "no") {
              if (fermentadora_de_lactosa == "no") {
                if (flagelos == "sí") {
                  if (esporas == "no") {
                    if (fermentadora_de_glucosa == "sí") {
                      if (catalasa == "sí") {
                        print("La bacteria es Vibrio fisheri")}
                    }
                  }
                }
              }
            }
          }
        } else if (morfologia == "bacilo") {
          if (respiracion == "anaerobio"){
            if (motilidad == "no") {
              if (patogena == "no") {
                if (fermentadora_de_lactosa == "sí") {
                  if (flagelos == "no") {
                    if (esporas == "no") {
                      if (fermentadora_de_glucosa == "sí") {
                        if (catalasa == "no"){
                          casei<- readline(prompt = "La bacteria es Lactobacillus casei?") 
                          { if (casei == "sí")
                          {  print("La bacteria es Lactobacillus casei")
                          }  else if ( casei == "no") 
                          { print( "La bacteria es Lactobacillus acidophilus")}
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
                          if (catalasa == "no"){ 
                            botulinum<- readline(prompt = "La bacteria es Clostridium botulinum?") 
                            { if (botulinum == "sí")
                            {  print("La bacteria es Clostridium botulinum")
                            }  else if ( botulinum == "no") 
                            { print( "La bacteria es Clostridium tetani")}
                            }
                          } 
                        }
                      }
                    } else if (flagelos == "sí") {
                      if (esporas == "no") {
                        if (fermentadora_de_glucosa == "sí") {
                          if (catalasa == "sí") {
                            print("La bacteria es Listeria monocytogenes")
                          }
                        }
                      }
                    }
                  }
                }
              }
            } 
          } else if (respiracion == "aerobio"){
            if (motilidad == "no") {
              if (patogena == "sí") {
                if (fermentadora_de_lactosa == "no") {
                  if (flagelos == "sí") {
                    if (esporas == "sí") {
                      if (fermentadora_de_glucosa == "sí") {
                        if (catalasa == "sí") {
                          print("La bacteria es Bacillus anthracis")
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
                        } else if (catalasa == "no"){
                          print ("La bacteria es Neisseria gonorrhoeae")}
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
                            print ("La bacteria es Vibrio cholerae ")}
                          else if (oxidasa == "no"){
                            print("La bacteria es Salmonella enterica ")
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
                          print("La bacteria es Escherichia coli") }
                      }
                    }
                  }
                }
              }
            } else if (motilidad =="no"){ 
              print("La bacteria es Klebsiella pneumoniae")}
          } else if (respiracion == "aerobio") {
            if (motilidad == "sí") {
              if (patogena == "no") {
                if (fermentadora_de_lactosa == "no") {
                  if (flagelos == "sí") {
                    if (esporas == "no") {
                      if (fermentadora_de_glucosa == "no") {
                        if (catalasa == "sí") {
                          print("La bacteria es Azotobacter chroococcum")
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
        print("La bacteria es Mycobacterium tuberculosis:")}
      }
    }
    # Ejecutar la función
    identificar_bacteria() 
    
    #si funciona ?
  }
} 
  
adivina_microorganismos
#ya matenme 

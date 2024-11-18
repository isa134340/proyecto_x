identificar_bacteria <- function() {
  # Preguntas iniciales
  gram <- readline(prompt = "¿La bacteria es Gram positiva o Gram negativa? (positiva/negativa): ")
  morfologia <- readline(prompt = "¿Cuál es la morfología de la bacteria? (coco/bacilo): ")
  respiracion <- readline(prompt = "¿La bacteria es aerobia o anaerobia? (aerobio/anaerobio): ")
  motilidad <- readline(prompt = "¿La bacteria es móvil? (sí/no): ")
  patogena <- readline(prompt = "¿La bacteria es patógena? (sí/no): ")
  fermentadora_de_lactosa <- readline(prompt = "¿La bacteria fermenta la lactosa? (sí/no): ")
  flagelos <- readline(prompt = "¿La bacteria tiene flagelos? (sí/no): ")
  esporas <- readline(prompt = "¿La bacteria forma esporas? (sí/no): ")
  fermentadora_de_glucosa <- readline(prompt = "¿La bacteria fermenta la glucosa? (sí/no): ")
  catalasa <- readline(prompt = "¿La bacteria es catalasa positiva? (sí/no): ")
  
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
                      print("La bacteria es Lactobacillus casei")
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
                      print("La bacteria es Clostridium botulinum")
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
      } else if (respiracion == "aerobio") {
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
                if (esporas == "no") {
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
                      print("La bacteria es Vibrio cholerae")
                    }
                  }
                }
              }
            }
          }
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
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

# Ejecutar la función
identificar_bacteria()
###### 
#hola

##si funciona 
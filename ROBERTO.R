


los_virus<-function(){
  #para identificar que onda
  gen<-readline(prompt="que material genético tiene: \n dna/rna ")
  while(tolower(gen)!="dna" & tolower(gen)!="rna"){
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
  while(tolower(trans)!="sexual" & tolower(trans)!="contacto" & tolower!="saliva" & tolower!="sangre" & tolower!="fecal" & tolower!="vector" & tolower!="bacteria"){
  while(tolower(cadena)!="doble"&tolower(cadena)!="sencilla"){
    cadena<-readline(prompt="cuantas cadenas tiene: \n doble/sencilla ")
  }
  envoltura<-readline(prompt="tiene envoltura: \n si/no ")
  while(tolower(envoltura)!="si"& tolower(envoltura)!="no"){
    envoltura<-readline(prompt="tiene envoltura: \n si/no ")
  }
  vectores<-readline(prompt="necesita de vectores: \n si/no ")
  while(tolower(vectores)!="si"& tolower(vectores)!="no"){
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
  while(tolower(trans)!="sexual"& tolower(trans)!="contacto" & tolower(trans)!="saliva" & tolower(trans)!="sangre" & tolower(trans)!="fecal" & tolower(trans)!="vector" & tolower(trans)!="bacteria"){

    trans<-readline(prompt="cual es su forma principal de transmisión: \n sexual/contacto/saliva/sangre/fecal/vector/bacteria ")
  }
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
    }else{print("No hay un virus que coincida con tus características")}
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
          }else{print("No hay un virus que coincida con tus características")}
        }else{print("No hay virus que coincida con tu descripción")}
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
        }else{print("No hay virus que concuerde con tu descripción")}
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
    }
  }
}
los_virus()
###todavía falta resolver eso de que quedan preguntas con 2 virus ahí pero ya casi está listo :D
#ya está resuelto lo de los 2 virus en las preguntas






##todo esto ya funciona bien
los_virus<-function(){
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
              }
            }
          }
        }
      }else{print("No hay virus que coincida con tu descripción ")}
    }
  }else{#esto es cadena doble
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
        }else{print("No hay virus que coincida con tu descripción")}
      }
    }else{#esto es que SI tiene envoltura 
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
        }else if(huesped=="animal"){
          if(enzima=="no"){
            if(vacuna=="si"){
              if(trans=="contacto"){
                print("tienes el virus de la viruela símica")
              }
            }
          }
        }else{print("No hay virus que coincida con tu descripción")}
      }else{print("No hay virus que coincida con tu descripción")}
    }
  }
} else if(gen=="rna"){###VIRUS RNA
  if(cadena=="doble"){
    if(envoltura=="no"){
      if(vectores=="no"){
        if(huesped=="animal"){
          if(enzima=="no"){
            if(vectores=="si"){
              if(trans=="fecal"){print("tienes el rotavirus")}
            }
          }
        }else if(huesped=="bacteria"|huesped=="planta"|huesped=="humano"){print("No hay virus que coincida con tu descripción ")}
      }
    }
  }else {
    if(envoltura=="no"){
      if(vectores=="si"){
        if(huesped=="planta"){
          if(enzima=="no"){
            if(vacuna=="no"){
              if(trans=="vector"){print("tienes el virus del mosaico del tabaco")}
              }else{print("No hay virus que coincida con tu descripción")}
            }
          }
      } else{ 
        if(huesped=="humano"){
          if(enzima=="no"){
            if(vacuna=="si"){
              if(trans=="fecal"){print("tienes el virus de la polio")}
              }else{print("No hay virus que coincida con tu descripción")}
            }else{print("No hay virus que coincida con tu descripción")}
          }
        }
    }else{#esto quiere decir que si tiene envoltura RNA SENCILLA CON ENV
      if(vectores=="si"){
        if(huesped=="animal"){
          if(enzima=="no"){
            if(vacuna=="si"){
              if(trans=="saliva"){
                print("tu virus es el de la rabia, o sea lyssavirus")}
              }
            }
        }else if(huesped=="humano"){
          if(enzima=="no"){
            if(vacuna=="si"){
              if(trans=="vector"){
                viru3<-readline(prompt="tu virus pertenece al género de Arenavirus? :si/no ")
                                if(viru3=="si"){print("pensaste en arenavirus")}else{"pensaste en el virus del dengue"}}else{print("No hay virus que coincida con tu descripción")}
            }else{
              print("pensaste en el flavivirus")
            }
          }
        }else if(huesped=="planta"|huesped=="bacteria"){print("No hay virus que coincida con tu descripción")}
      }else{
        if(huesped=="humano"){
          if(enzima=="si"){
            if(vacuna=="no"){
              if(trans=="sangre"){print("tienes el VIH")}
            }else{print("No hay virus que coincida con tu descripción")}
          }else{
            if(vacuna=="no"){
              if(trans=="saliva"){print("tienes el pneumovirus")}else{print("No hay virus que coincida con tu descripción")}
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
}
}
los_virus()
###todo esto ya funciona bien 




##la según corrección 
#else{#esto quiere decir arn
 # if(cadena=="doble"){
  #  if(envoltura=="no"){
   #   if(vector=="no"){
    #    if(huesped=="animal"){
     #     if(enzima=="no"){
      #      if(vacuna=="si"){
       #       if(trans=="fecal"){print("tienes el rotavirus")}
        #  }
#        }
#      }
 #   }
  #}
#  }else{#esto quiere decir cadena sencilla
 #   if(envoltura=="no"){
  #    if(vector=="si"){
   ##       if(vacuna=="no"){
     #         if(trans=="vector"){print("tienes el virus del mosaico del tabaco, género Tobamovirus")}
      #      }
       #   }
#        }
 #     }else{
  #      if(huesped=="humano"){
   #       if(enzima=="no"){
    #        if(vacuna=="si"){
     ##      }
       #   }
        #}
#      }
 #   }else{#esto significa si envoltura
  #    if(vector=="si"){
   #     if(huesped=="animal"){
    #      if(enzima=="no"){
     #       if(vacuna=="si"){
      #        if(trans=="saliva"){print("tienes el virus de la rabia")}
       #     }
        #  }
        #}#else if(huesped=="humano"){
#          if(enzima=="no"){
 ##           if(vacuna=="no"){
   #           if(trans=="vector"){print("tienes el flavivirus")}
    #        }else{
     #         if(trans=="vector"){print("tienes el arenavirus")}
      #      }
       #   }
        #}
#      }
 #   }
  #}  
    
    
    
    
    
    
#    {
 #   if(envoltura=="no"){
  #    if(vectores=="si"){
   #     print("tienes el virus del mosaico del tabaco")
    #  } else{ 
     #   print("tienes el virus de la polio")}
#    }else{
 #     if(vectores=="si"){
  #      if(huesped=="animal"){
   #       print("tu virus es el de la rabia, o sea lyssavirus")
    #    }else if(huesped=="humano"){
     #     if(enzima=="no"){
      #      if(vacuna=="si"){
       #       print("pensaste en arenavirus")
        #    }else{
         #     print("pensaste en el flavivirus")
          #  }
 #         }
#        }
#      }else{
 #       if(huesped=="humano"){
  #        if(enzima=="si"){
   #         print("pensaste en el VIH, o sea lentivirus")
    #      }else{
     #       if(vacuna=="no"){
      #        print("tienes el pneumovirus")
       #     } else{
        #      if(trans=="sangre"){
         #       print("pensaste en el ébola")
          #    }else if(trans=="saliva"){
           #     viru2<-readline(prompt="tu virus pertenece al género influenzavirus?: si/no ")
            #    if(viru2=="no"){
             #     print("entonces pensaste en el coronavirus, no tuviste con la pandemia para dejar de pensar en el verdad?")
              #  } else{
               #   print("tu virus es el influenzavirus")
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

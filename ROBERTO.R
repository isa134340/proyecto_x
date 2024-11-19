

hongo_adivina <- function(microorganismo){
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  readline(prompt = "escoge una opccion (macroscopico o microscopico) ") -> inicial
  while (inicial !="macroscopico" & inicial !="microscopico")  #los !es para que si algo es diferente de 
    readline(prompt = "escoge la opccion macroscopico o microscopico: ")->inicial
  ####EMPEZAMOS CON MACROSCOPICO
  if (tolower(inicial) == "macroscopico") {
    # Segunda pregunta: ¿PRODUCE ANTIBIOTICO?
    antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ")
    while(antibiotico !="si" & antibiotico !="no")
      antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ") 
    if(antibiotico == "no"){
      #TERCERA PREGUNTA: ES COMESTIBLE 
      comestible <- readline(prompt = "¿El hongo es comestible (si/no): ")
      while(comestible !="si" & comestible !="no")
        comestible <- readline(prompt = "¿El hongo es comestible (si/no):  ") 
      if(comestible == "si"){
        medicinal <- readline(prompt = "¿El hongo es medicinal (si/no): ")
        while(medicinal !="si" & medicinal !="no")
          medicinal <- readline(prompt = "¿El hongo es medicinal (si/no):  ") 
        if (medicinal == "si"){
          print("Tu hongo puede pertencer al genero lycoperdon, lentinula o ganoderma")
        }
      }
    }
    else if(antibiotico == "si"){
      print("No hay ningun hongo que coincide con tu busqueda, intenta de nuevo")}
  }
}

adivina<-function(x){
  read.csv("roberto_cosa.csv")
  cat("ponte a jugar\n")
  readline(prompt("Escoge una opción de organismo: bacteria, hongo o virus"))->inicial
  if(tolower(inicial)=="bacteria"){
    gram<-readline(prompt("es gram positiva o negativa"))
    if(tolower(gram)=="positiva"){
      morfologia<-readline(prompt("es coco o bacilo"))
      if(tolower(morfologia)=="coco"){
        respiracion<-readline(prompt("es aerobia o anaerobia"))
        if(tolower(respiracion)=="anaerobia"){
          motilidad<-readline(prompt("es movil (si/no)"))
          if(tolower(motilidad)=="no"){
            patogena<-readline(prompt("es patogena si/no"))
            if(tolower(patogena)=="si"){
              
            }
          }
        }
      }
    }
  }
}
adivina(x)#ahí me sale el error que les decía que se crea un archivo por cada pregunta que se hace 
#hola
 

los_virus<-function(){
  #para identificar que onda
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
    }
}
los_virus()
###todavía falta resolver eso de que quedan preguntas con 2 virus ahí pero ya casi está listo :D
#ya está resuelto lo de los 2 virus en las preguntas
list(data.frame(virus=c("herpes","cytomegalovirus","coronavirus","pneumovirus","lyssavirus","influenza","VIH","rotavirus","flavivirus","viruela símica","Ébola","arenavirus","virus mosaico del tabaco","bacteriófago T4","hepatitis B","adenovirus","VPH","dengue","polio","virus mosaico de la coliflor","epstein-barr"),
           material_genetico=c("DNA","DNA","RNA","RNA","RNA","RNA","RNA","RNA","RNA","DNA","RNA","RNA","RNA","DNA","DNA","DNA","DNA","RNA","RNA","DNA","DNA"),
           Cadena=c("doble","doble","sencilla","sencilla","sencilla","sencilla","sencilla","doble","sencilla","doble","sencilla","sencilla","sencilla","doble","doble","doble","doble","sencilla","sencilla","sencilla","doble"),
           envoltura=c("si","si","si","si","si","si","si","no","si","si","si","si","no","no","si","no","no","si","no","no","si"),
           vector=   c("no","no","no","no","si","no","no","no","si","no","no","si","si","no","no","no","no","si","no","si","no"),
           huesped=c("humano","humano","humano","humano","animal","humano","humano","animal","humano","animal","humano","humano","planta","bacteria","humano","humano","humano","humano","humano","planta","humano"),
           retrotranscriptasa=c("no","no","no","no","no","no","si","no","no","no","no","no","no","no","no","no","no","no","no","no","no"),
           vacuna=c("no","no","si","no","si","si","no","si","no","si","si","si","no","no","si","no","si","si","si","no","no"),
           transmisión=c("sexual","contacto","saliva","saliva","saliva","saliva","sangre","fecal","vector","contacto","sangre","vector","vector","bacteria","sangre","saliva","sexual","vector","fecal","vector","contacto"),
           género=c("Simplexvirus","Cytomegalovirus","Betacoronavirus","Pneumovirus","Lyssavirus","Influenzavirus","Lentivirus","Rotavirus","Flavivirus","Orthopoxvirus","Ebolavirus","Arenavirus","Tobamovirus","Tequatrovirus","Hepadnovirus","Adenovirus","Aplhapapillomavirus","Orthoflavivirus","Enterovirus","Caulimovirus","Lymphocryptovirus")
           ))->nuestrosvirusitos#podríamos poner todos los data.frames al inicio así como una lista para que muestre los 3 juntos y que así escojan el que quieran 
nuestrosvirusitos


cat("Escoge un virus de los siguientes, NO lo escribas solo piénsalo y no lo cambies durante las preguntas ")
data.frame(virus=c("herpes","cytomegalovirus","coronavirus","pneumovirus","lyssavirus","influenza","VIH","rotavirus","flavivirus","viruela símica","Ébola","arenavirus","virus mosaico del tabaco","bacteriófago T4","hepatitis B","adenovirus","VPH","dengue","polio","virus mosaico de la coliflor","epstein-barr"),
                material_genetico=c("DNA","DNA","RNA","RNA","RNA","RNA","RNA","RNA","RNA","DNA","RNA","RNA","RNA","DNA","DNA","DNA","DNA","RNA","RNA","DNA","DNA"),
                Cadena=c("doble","doble","sencilla","sencilla","sencilla","sencilla","sencilla","doble","sencilla","doble","sencilla","sencilla","sencilla","doble","doble","doble","doble","sencilla","sencilla","sencilla","doble"),
                envoltura=c("si","si","si","si","si","si","si","no","si","si","si","si","no","no","si","no","no","si","no","no","si"),
                vector=   c("no","no","no","no","si","no","no","no","si","no","no","si","si","no","no","no","no","si","no","si","no"),
                huesped=c("humano","humano","humano","humano","animal","humano","humano","animal","humano","animal","humano","humano","planta","bacteria","humano","humano","humano","humano","humano","planta","humano"),
                retrotranscriptasa=c("no","no","no","no","no","no","si","no","no","no","no","no","no","no","no","no","no","no","no","no","no"),
                vacuna=c("no","no","si","no","si","si","no","si","no","si","si","si","no","no","si","no","si","si","si","no","no"),
                transmisión=c("sexual","contacto","saliva","saliva","saliva","saliva","sangre","fecal","vector","contacto","sangre","vector","vector","bacteria","sangre","saliva","sexual","vector","fecal","vector","contacto"),
                género=c("Simplexvirus","Cytomegalovirus","Betacoronavirus","Pneumovirus","Lyssavirus","Influenzavirus","Lentivirus","Rotavirus","Flavivirus","Orthopoxvirus","Ebolavirus","Arenavirus","Tobamovirus","Tequatrovirus","Hepadnovirus","Adenovirus","Aplhapapillomavirus","Orthoflavivirus","Enterovirus","Caulimovirus","Lymphocryptovirus")
)->nuestrosvirusitos#podríamos poner todos los data.frames al inicio así como una lista para que muestre los 3 juntos y que así escojan el que quieran 
nuestrosvirusitos
los_virus<-function(){
  #para identificar que onda
  cat("Escoge un virus de los siguientes, NO lo escribas solo piénsalo y no lo cambies durante las preguntas ")
  data.frame(virus=c("herpes","cytomegalovirus","coronavirus","pneumovirus","lyssavirus","influenza","VIH","rotavirus","flavivirus","viruela símica","Ébola","arenavirus","virus mosaico del tabaco","bacteriófago T4","hepatitis B","adenovirus","VPH","dengue","polio","virus mosaico de la coliflor","epstein-barr"),
             material_genetico=c("DNA","DNA","RNA","RNA","RNA","RNA","RNA","RNA","RNA","DNA","RNA","RNA","RNA","DNA","DNA","DNA","DNA","RNA","RNA","DNA","DNA"),
             Cadena=c("doble","doble","sencilla","sencilla","sencilla","sencilla","sencilla","doble","sencilla","doble","sencilla","sencilla","sencilla","doble","doble","doble","doble","sencilla","sencilla","sencilla","doble"),
             envoltura=c("si","si","si","si","si","si","si","no","si","si","si","si","no","no","si","no","no","si","no","no","si"),
             vector=   c("no","no","no","no","si","no","no","no","si","no","no","si","si","no","no","no","no","si","no","si","no"),
             huesped=c("humano","humano","humano","humano","animal","humano","humano","animal","humano","animal","humano","humano","planta","bacteria","humano","humano","humano","humano","humano","planta","humano"),
             retrotranscriptasa=c("no","no","no","no","no","no","si","no","no","no","no","no","no","no","no","no","no","no","no","no","no"),
             vacuna=c("no","no","si","no","si","si","no","si","no","si","si","si","no","no","si","no","si","si","si","no","no"),
             transmisión=c("sexual","contacto","saliva","saliva","saliva","saliva","sangre","fecal","vector","contacto","sangre","vector","vector","bacteria","sangre","saliva","sexual","vector","fecal","vector","contacto"),
             género=c("Simplexvirus","Cytomegalovirus","Betacoronavirus","Pneumovirus","Lyssavirus","Influenzavirus","Lentivirus","Rotavirus","Flavivirus","Orthopoxvirus","Ebolavirus","Arenavirus","Tobamovirus","Tequatrovirus","Hepadnovirus","Adenovirus","Aplhapapillomavirus","Orthoflavivirus","Enterovirus","Caulimovirus","Lymphocryptovirus")
  )->nuestrosvirusitos#podríamos poner todos los data.frames al inicio así como una lista para que muestre los 3 juntos y que así escojan el que quieran 
  nuestrosvirusitos 
  
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
  }
}
los_virus()
nuestrosvirusitos

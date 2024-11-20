


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





###ES A PARTIR DE AQUÍ, ESTÁ TAL CUAL COMO LO TENÍAS EN EL MARKDOWN :D

Para realizar el codigo utilizamos:\
Funciones.\
Condicionales IF.\
Ciclos while.

\*\*1.- Funciones.\*\* Las funciones son la parte del codigo que permite al usuario correr el juego sin estar corriendo el script cada que quiera jugar o volver a jugar. Se ocuparon cuatro funciones en total para la realizacion del juego.

La función principal "adivina_microorganismo" tiene como estructura una serie de condicionales IF que permiten seguir el flujo del juego. Esta función incluye todas las preguntas necesarias para llegar a un microorganismo con las características.

Además se utilizan elementos como cat(), readline() y ciclos while() para hacer el juego más visual, interactivo y a prueba de errores al momento de escribir las respuestas


```{r inicio}
cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
cat("En este juego podras repasar tu conocimiento en microorganismos !\n")
cat("¡Estas listo, vamos a jugar!")

readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial
while(tolower(micro_inicial) != "bacterias" & tolower(micro_inicial) != "hongos" & tolower(micro_inicial) != "virus") {
  readline(prompt = "Por favor escriba el nombre con el grupo de microrganismos que desea jugar (bacterias, virus o hongos): ") -> micro_inicial } 
```
La segunda función empleada es el reinicio del juego, llamada reinicio_juego(), para esta función utilizamos los mismos elementos: readline(), ciclo while() y condicionales IF.\
Esta función se coloca al final del codigo del juego para reiniciarlo.  

```{r}
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
```

Las dos últimas funciones son las que permiten al usuario colocar la secuencia de nucleótidos o de aminoácidos, del microorganismo que se adivinó.

Esta función va a imprimir el tamaño de la secuencia, la secuencia, el reverso de la secuencia y la frecuencia de los nucleótidos, en esta el elemento clave es la funcion file.choose(), que permite elegir la secuencia desde la carpeta con los archivos sin establecer una dirección fija y permite jugar desde otros equipos mientras se tenga descargada la carpeta de las secuencias.  

Además, en ambas funciones utilizamos cat() para hacer visualmente más presentables los resultados obtenidos del análisis.

```{r}
ADN_analisis<- function( ){
  library(Biostrings)
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
```

```{r warning=FALSE}
analisis_AA_2 <- function() {
  library(Biostrings)
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
```


install.packages("prettydoc")
library(prettydoc)

dir.create("nueva_Carpeta")
#hola

##AKINATOR 2.0

hongo_adivina <- function(microorganismos){
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  readline(prompt = "escoge una opccion (macroscopico o microscopico) ") -> inicial
  while(tolower(inicial) != "macroscopico" & tolower(inicial) != "microscopico") {
    inicial <- readline(prompt = "Escoge la opción 'macroscopico' o 'microscopico': ")
  }
  ####EMPEZAMOS CON MACROSCOPICO
  if (tolower(inicial) == "macroscopico") {
    # Segunda pregunta: ¿PRODUCE ANTIBIOTICO?
    antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ")
    while(antibiotico !="si" & antibiotico !="no"){
      antibiotico <- readline(prompt = "¿El hongo produce antibiotico (si/no): ")
    }
    if(tolower(antibiotico) == "no"){
      #TERCERA PREGUNTA: ES COMESTIBLE 
      comestible <- readline(prompt = "¿El hongo es comestible (si/no): ")
      while(comestible !="si" & comestible !="no"){
        comestible <- readline(prompt = "¿El hongo es comestible (si/no):  ") 
      }  
      if(comestible == "si"){
        medicinal <- readline(prompt = "¿El hongo es medicinal (si/no): ")
        while(medicinal !="si" & medicinal !="no"){
          medicinal <- readline(prompt = "¿El hongo es medicinal (si/no):  ")
        }
        if (medicinal == "si"){
          print("Tu hongo puede pertencer al genero lycoperdon, lentinula o ganoderma")
        }
      }else if (comestible == "no"){
        print("Tu hongo puede ser Russula emetica, Amanita gemmata o Amanita phalloides")
      }
    } else if(antibiotico == "si"){
      print("No hay ningun hongo que coincide con tu busqueda, intenta de nuevo")
    }
  }else if (tolower(inicial) == "microscopico") {
    # Aquí empiezas con la opción "microscopico"
    antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    while (tolower(antibiotico_2) != "si" & tolower(antibiotico_2) != "no") {
      antibiotico_2 <- readline(prompt = "¿El hongo produce antibiótico? (si/no): ")
    }
    
    if (tolower(antibiotico_2) == "si") {
      print("Tu microorganismo es Penicillium chrysogenum.")
    } 
  }
}



hongo_adivina(microorganismo)

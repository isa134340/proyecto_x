data.frame(organismo=c("bacteria","bacteria"),
          gram=c("+","-"),
          flagelos=c("si","no"),
          cilios=c("no","no"),
          biofilm=c("si","no"))->las_bacters
las_bacters

for(i in 50){
  print("hola buenas tardes")
}

# Definimos la base de datos de organismos
organismos <- data.frame(
  Nombre = c("E.coli", "Candida", "Influenza", "S.aureus", "Aspergillus", "HIV"),
  Tipo = c("Bacteria", "Hongo", "Virus", "Bacteria", "Hongo", "Virus"),
  Forma = c("Bacilo", "Levadura", "Esfera", "Esfera", "Filamentoso", "Esfera"),
  Gram = c("Negativo", NA, NA, "Positivo", NA, NA),
  Habitat = c("Intestinos", "Mucosa", "Respiratorio", "Piel", "Pulmones", "Sangre")
)

# Introducción al juego
cat("¡Bienvenido al juego 'Adivina quién: Edición Microorganismos'!\n")
cat("Piensa en un microorganismo y responde a las preguntas para que pueda adivinar.\n")

# Variables para controlar el flujo del juego
quedan <- organismos
seguir <- TRUE

while (seguir) {
  # Preguntar por el tipo de organismo
  if (nrow(quedan) > 1) {
    tipo <- readline(prompt = "¿Es una Bacteria, Hongo o Virus? ")
    quedan <- quedan[quedan$Tipo == tipo, ]
  }
  
  # Preguntar por la forma
  if (nrow(quedan) > 1) {
    forma <- readline(prompt = "¿Qué forma tiene (Bacilo, Levadura, Esfera, Filamentoso)? ")
    quedan <- quedan[quedan$Forma == forma, ]
  }
  
  # Preguntar por Gram (sólo para bacterias)
  if (nrow(quedan) > 1 && any(quedan$Tipo == "Bacteria")) {
    gram <- readline(prompt = "¿Es Gram Positivo o Negativo? (deja vacío si no aplica) ")
    if (gram != "") {
      quedan <- quedan[quedan$Gram == gram, ]
    }
  }
  
  # Preguntar por el hábitat
  if (nrow(quedan) > 1) {
    habitat <- readline(prompt = "¿Dónde vive (Intestinos, Mucosa, Respiratorio, Piel, Pulmones, Sangre)? ")
    quedan <- quedan[quedan$Habitat == habitat, ]
  }
  
  # Comprobamos si queda un solo organismo
  if (nrow(quedan) == 1) {
    cat("¡He adivinado! Es:", quedan$Nombre, "\n")
    seguir <- FALSE
  } else if (nrow(quedan) == 0) {
    cat("No he podido adivinar tu microorganismo. ¿Quieres intentarlo de nuevo?\n")
    seguir <- FALSE
  } else {
    cat("Aún quedan varias opciones. Sigamos preguntando...\n")
  }
}

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

adivina<-function(roberto_cosa){
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
adivina(roberto_cosa)
 


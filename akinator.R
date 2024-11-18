

cat("¡Bienvenido al juego 'Adivina quién: Edición Microorganismos'!\n")
cat("Piensa en un microorganismo y responde a las preguntas para que pueda adivinar.\n")

readline(prompt = "escoge una opccion (macroscopico o microscopico) ") -> variable
while (variable !="macroscopico" & variable !="microscopico")  #los !es para que si algo es diferente de 
  readline(prompt = "escoge la opccion macroscopico o microscopico: ")->variable

incio_preguta <- function(){
  readline(prompt = "escoge una opccion (macroscopico o microscopico) ") -> variable
  while (variable !="macroscopico" & variable !="microscopico")  #los !es para que si algo es diferente de 
    readline(prompt = "escoge la opccion macroscopico o microscopico: ")->variable
  if(variable == "macroscopico"){
    nuevo_datos <- datos_hongo[which(datos_hongo$tamaño == "macroscopico"), ]
    while (variable !="si" & variable !="no")  #los !es para que si algo es diferente de 
      readline(prompt = "el hongo produce antibiotico si/no: ")->antibiotico
        if(antibiotico == "si"){
    while (variable !="si" & variable !="no")  #los !es para que si algo es diferente de 
      readline(prompt = "el hongo es comestible si/no: ")->comestible
  while (variable !="si" & variable !="no")  #los !es para que si algo es diferente de 
    readline(prompt = "el hongo es comestible si/no: ")->comestible 
}

microorganismos <- data.frame(
  Nombre = c("Escherichia coli", "Staphylococcus aureus", "Candida albicans", 
             "Aspergillus niger", "Bacillus subtilis", "Penicillium sp."),
  Tipo = c("Bacteria", "Bacteria", "Hongo", "Hongo", "Bacteria", "Hongo"),
  Forma = c("Bacilo", "Coco", "Levadura", "Filamentoso", "Bacilo", "Filamentoso"),
  Gram = c("Gram negativa", "Gram positiva", NA, NA, "Gram positiva", NA),
  Ambiente = c("Intestino", "Piel", "Mucosas", "Aire", "Suelo", "Alimentos"),
  stringsAsFactors = FALSE
)

# Función principal para hacer preguntas
adivina_quien <- function(microorganismos) {
  cat("¡Bienvenido a 'Adivina quién' de microorganismos!\n")
  
  # Pregunta inicial: ¿Es bacteria o hongo?
  respuesta <- readline(prompt = "¿El microorganismo es una bacteria o un hongo? (bacteria/hongo): ")
  
  if (tolower(respuesta) == "bacteria") {
    # Segunda pregunta: ¿Es Gram positiva o Gram negativa?
    gram <- readline(prompt = "¿Es Gram positiva o Gram negativa? (positiva/negativa): ")
    if (tolower(gram) == "positiva") {
      # Tercera pregunta: ¿Tiene forma de bacilo o coco?
      forma <- readline(prompt = "¿Tiene forma de bacilo o coco? (bacilo/coco): ")
      if (tolower(forma) == "bacilo") {
        cat("El microorganismo es Bacillus subtilis.\n")
      } else if (tolower(forma) == "coco") {
        cat("El microorganismo es Staphylococcus aureus.\n")
      } else {
        cat("Forma no reconocida. Fin del juego.\n")
      }
    } else if (tolower(gram) == "negativa") {
      cat("El microorganismo es Escherichia coli.\n")
    } else {
      cat("Respuesta inválida. Fin del juego.\n")
    }
  } else if (tolower(respuesta) == "hongo") {
    # Segunda pregunta: ¿Es levadura o filamentoso?
    forma <- readline(prompt = "¿Es levadura o filamentoso? (levadura/filamentoso): ")
    if (tolower(forma) == "levadura") {
      cat("El microorganismo es Candida albicans.\n")
    } else if (tolower(forma) == "filamentoso") {
      # Tercera pregunta: ¿Se encuentra en aire o en alimentos?
      ambiente <- readline(prompt = "¿Se encuentra en aire o en alimentos? (aire/alimentos): ")
      if (tolower(ambiente) == "aire") {
        cat("El microorganismo es Aspergillus niger.\n")
      } else if (tolower(ambiente) == "alimentos") {
        cat("El microorganismo es Penicillium sp.\n")
      } else {
        cat("Ambiente no reconocido. Fin del juego.\n")
      }
    } else {
      cat("Forma no reconocida. Fin del juego.\n")
    }
  } else {
    cat("Tipo de microorganismo no reconocido. Fin del juego.\n")
  }
}

# Ejecutar el juego
adivina_quien(microorganismos)





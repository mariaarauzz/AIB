df <- read.csv('https://raw.githubusercontent.com/asalber/manual-r/master/datos/colesterol.csv')
df
print(summary(df))
head(df,5)
tail(df, 3)
head(df, 2)
df <- data.frame(asignatura = c("Matemáticas", "Física", "Economía"), nota = c(8.5, 7, 4.5))
Df
str(df)
df <- data.frame(asignatura = c("Matemáticas", "Física", "Economía"), nota = c(8.5, 7, 4.5))
Df
str(df)
# 1. Vectores
nombre <- c("Carlos", "Maria", "Carmen", "Pedro", "Luis", "Sara")
sexo   <- c("H", "M", "M", "H", "H", "M")
fisica  <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
quimica <- c(8.1, 9.5, 5.0, 4.5, 5.0, 4.0)

# 2. Factor
sexo <- factor(sexo)
levels(sexo)

# 3. Media (Mejor sin na.rm para que Pedro no apruebe con una sola nota)
media <- (fisica + quimica) / 2
media

# 4. Booleano
aprobado <- media >= 5
aprobado

# 5. Filtrar nombres (Añadimos limpieza de NAs para que sea perfecto)
nombre[aprobado & !is.na(aprobado)]

# 6. Data Frame
df <- data.frame(nombre, sexo, fisica, quimica)

# 7. Añadir media
df$media <- media

# 8. Filtrar mujeres aprobadas
# Usamos subset o el filtro directo asegurando que no entren NAs
df[df$sexo == "M" & df$media >= 5 & !is.na(df$media), c("nombre", "media")]
# --- 1. Definir los vectores ---
nombre <- c("Carlos", "Maria", "Carmen", "Pedro", "Luis", "Sara")
sexo   <- c("H", "M", "M", "H", "H", "M")
fisica  <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2) # NA para el hueco de Pedro
quimica <- c(8.1, 9.5, 5.0, 4.5, 5.0, 4.0)

# --- 2. Convertir el sexo en factor y mostrar niveles ---
sexo <- factor(sexo)
levels(sexo)

# --- 3. Calcular la nota media ---
# Nota: No usamos na.rm=TRUE para que si falta una nota (Pedro), la media sea NA.
media <- (fisica + quimica) / 2
media

# --- 4. Variable booleana 'aprobado' ---
aprobado <- media >= 5
aprobado

# --- 5. Filtrar nombres de alumnos aprobados ---
# Usamos !is.na para que no nos salga el nombre de Pedro como un valor vacío
nombre[aprobado & !is.na(aprobado)]

# --- 6. Crear el data frame ---
df <- data.frame(nombre, sexo, fisica, quimica)

# --- 7. Añadir la media al data frame ---
df$media <- media

# --- 8. Filtrar: Mujeres que han aprobado ---
# Filtramos por sexo "M", media >= 5 y quitamos los NAs por seguridad
resultado_final <- df[df$sexo == "M" & df$media >= 5 & !is.na(df$media) , c("nombre", "media")]

print(resultado_final)


nombre  <- c("Carlos", "Maria", "Carmen", "Pedro", "Luis", "Sara")
sexo    <- c("H", "M", "M", "H", "H", "M")
fisica  <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
quimica <- c(8.1, 9.5, 5.0, 4.5, 5.0, 4.0)


sexo <- factor(sexo)
levels(sexo)  


media <- (fisica + quimica) / 2 
media


aprobado <- media >= 5
aprobado


nombre[aprobado]

df <- data.frame(nombre, sexo, fisica, quimica)


df$media <- media


df[df$sexo == "M" & !is.na(df$media) & df$media >= 5, c("nombre", "media")]

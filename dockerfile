FROM node

#Ruta donde se encuentra el directorio de trabajo EN EL CONTENEDOR
WORKDIR /app/nuevacarpeta

#indicamos que se va a copar en el directorio de trabajo
COPY package*.json ./

#cuando tenga la copia ejecuta npm install para instalar todas las depencias del los json
RUN npm install

#Copia todos los archivos dentro del contenedor el primer parametro es donde se ubica en local, el segundo es la ruta donde se va a copiar en el contendor
COPY . /app/nuevacarpeta/ 

#para que el proyecto funcione hay que ejecutar node y luego el archivo indes.js que esta dentro de src
CMD [ "node","index.js" ]

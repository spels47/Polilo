FROM node:8.16.2-alpine AS build
ADD . /app/src/
WORKDIR /app/src/
RUN npm install -g http-server
COPY package*.json ./
RUN npm install
COPY . .

FROM build
COPY --from=build /app/src/ /prod/export
RUN npm install
RUN npm run build
EXPOSE 8080
CMD [ "http-server", "dist" ]
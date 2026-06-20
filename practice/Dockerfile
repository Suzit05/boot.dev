FROM node:18

WORKDIR /app/mynodeapp

COPY nodefile .

RUN npm ci

EXPOSE 3000

CMD ["npm" , "start"]

#docker build -t mynodeapp .

#docker run -p 3000:3000 mynodeapp:latest

#docker push suzit05/mynodeapp:latest

#docker logs containerid

docker ps
docker ps -a
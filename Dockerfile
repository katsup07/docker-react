# Production File

#Phase 1 - builder phase --- /app/build
# This command and everything below will be referred to as builder phase
FROM node:16-alpine as builder 

WORKDIR /app

COPY ./package.json ./
RUN npm install
COPY ./ ./

RUN npm run build


#Phase 2 --- /usr/share/nginx/html
FROM nginx
#Copy /app/build from builder phase to /usr/share/nginx/html
COPY --from=builder /app/build /usr/share/nginx/html

#nginx will take care of run command automatically, so no need to specifiy it here
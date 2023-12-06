# build a tiny docker image
FROM alpine:latest 

# create an /app dir
RUN mkdir /app

# copy our build to /app dir
COPY listenerApp /app

# run the application
CMD [ "/app/listenerApp" ]
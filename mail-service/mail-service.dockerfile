# build a tiny docker image
FROM alpine:latest 

# create an /app dir
RUN mkdir /app

# copy our build to /app dir
COPY mailServiceApp /app

# copy others files needed / templates
COPY templates /templates

# run the application
CMD [ "/app/mailServiceApp" ]
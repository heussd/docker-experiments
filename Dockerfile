# Timms Docker Image - Followed the tutorial from https://docs.docker.com/mac/step_four/ 

# The FROM keyword tells Docker which image your image is based on. You are basing your new work on the existing whalesay image.
FROM docker/whalesay:latest

# Now, add the fortunes program to the image.
RUN apt-get -y update && apt-get install -y fortunes

CMD /usr/games/fortune -a | cowsay

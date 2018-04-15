FROM golang:latest 
RUN go get github.com/alexanderte/simple-website
CMD simple-website

FROM gcc
RUN apt update
RUN apt-get install --yes cmake
WORKDIR /app
COPY . /app
RUN mkdir build
RUN cd build
RUN cmake ..
RUN cmake --build .
RUN cd build
CMD ["./Factorial","5"]
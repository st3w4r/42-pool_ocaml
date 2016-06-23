FROM debian

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install ocaml -y
RUN apt-get install rlwrap -y
RUN apt-get install make -y

RUN echo 'alias ocaml="rlwrap ocaml"' >> ~/.bashrc

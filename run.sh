#docker run --privileged -it --name dockerindocker -v $PWD/data:/var/lib/docker jpetazzo/dind
  #docker run -i -t -v /var/run/docker.sock:/docker.sock shipyard/deploy setup

#docker commit -a "Saulo Alves <sauloal@gmail.com>" dockerindocker sauloal/shipyard



#cd auto
  #docker build -t sauloal/shipyardauto .

#docker run --privileged -d -v $PWD/data:/var/lib/docker -p 127.0.1.1:8000:8000 sauloal/shipyardauto

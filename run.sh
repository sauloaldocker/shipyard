#docker run --privileged -it --name dockerindocker -v $PWD/data:/var/lib/docker jpetazzo/dind
  #docker run -i -t -v /var/run/docker.sock:/docker.sock shipyard/deploy setup

#docker commit -a "Saulo Alves <sauloal@gmail.com>" dockerindocker sauloal/shipyard



#cd auto
  #docker build -t sauloal/shipyardauto .

docker run --privileged --name shipyard -d -v $PWD/data:/var/lib/docker -p 127.0.1.1:8000:8000 sauloal/shipyardauto
#-p 127.0.1.1:4500:4500

sleep 5

SHIPIP=`docker inspect shipyard | grep IPAddress | perl -ne 'if( /(\d+\.\d+\.\d+\.\d+)/ ) { print $1; }'`

docker run -d --name shipagent -v /var/run/docker.sock:/docker.sock -e IP=127.0.0.1 -e URL=http://${SHIPIP}:8000 -p 4500:4500 shipyard/agent

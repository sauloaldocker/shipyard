#docker build -t sauloal/shipyardauto .

FROM sauloal/shipyard

ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]


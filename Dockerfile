FROM        jjmerelo/alpine-perl6
WORKDIR     /app

ENV         PATH="/root/.rakudobrew/bin:/root/.rakudobrew/moar-master/install/share/perl6/site/bin:${PATH}"
COPY        script.pl6 .
ENTRYPOINT  ["/bin/sh", "-c"]
CMD         ["./script.pl6", "run"]


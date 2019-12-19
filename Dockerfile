FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN apt-get update -yq && apt-get upgrade -yq && apt-get install -yq curl git nano \
&& curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -yq nodejs build-essential \
&& npm i -g yarn

RUN apt-get install python-pip python-dev build-essential -yq && pip install -U awscli

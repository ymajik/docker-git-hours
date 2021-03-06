FROM node:5

LABEL maintainer=ymajik@gmail.com

#   org.label-schema.name = "ymajik/docker-git-hours" \
#   org.label-schema.description = "Git-hours is a tool to estimate time spent on a git repository" \
#   org.label-schema.version="1.2.0" \
#   org.label-schema.vendor="ymajik" \
#   org.label-schema.docker.cmd="docker run --rm -v $(pwd):/code ymajik/git-hours" \
#   org.label-schema.url="https://github.com/ymajik/docker-git-hours" \
#   org.label-schema.vcs-url="https://github.com/ymajik/docker-git-hours.git" \
#   org.label-schema.schema-version="1.0"
   
RUN npm install -g  git-hours
WORKDIR /code

CMD git hours

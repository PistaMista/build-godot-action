FROM barichello/godot-ci:3.5.1

LABEL "com.github.actions.name"="Build Godot"
LABEL "com.github.actions.description"="Build a Godot project for multiple platforms"
LABEL "com.github.actions.icon"="loader"
LABEL "com.github.actions.color"="blue"

LABEL repository="https://github.com/josephbmanley/build-godot-action"
LABEL homepage="https://cloudsumu.com/"
LABEL maintainer="Joseph Manley <joseph@cloudsumu.com>"

USER root
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

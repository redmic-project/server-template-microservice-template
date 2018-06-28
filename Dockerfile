FROM redmic/redmic-server

COPY /dist/*.jar ./

EXPOSE port

ENTRYPOINT java $JAVA_OPTS \
	-Djava.security.egd=file:/dev/./urandom \
	-Dlogging.level.org.springframework=${LOG_LEVEL} \
	-jar ${DIRPATH}/template.jar

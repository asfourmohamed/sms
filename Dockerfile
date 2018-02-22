FROM java:8

ADD ./conf/ /home/conf/
ADD ./* /home/
RUN cd /home && \
    chmod +x ./smsc_test.jar && \
    chmod +x ./startsmsc.sh
EXPOSE 2775
WORKDIR /home/
#CMD sh startsmsc.sh -D
CMD java -jar smsc_test.jar 

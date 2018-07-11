FROM eeacms/elk-kibana:6.3.1-inspire

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

ENV KIBANA_VERSION 6.3.1

COPY plugins/  /opt/kibana/plugins/ 

RUN   yum -y install epel-release \ 
  && yum -y update \
  && yum -y install git curl npm \
  && npm install -g bower \
  && echo '{ "allow_root": true }' > /root/.bowerrc \
  && cd /opt/kibana/plugins/kibana-time-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install --force-latest && npm install \ 
  && cd /opt/kibana/plugins/computed-columns && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && cd /opt/kibana/plugins/kbn_network && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \ 
  && cd /opt/kibana/plugins/kibana-swimlane-vis && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && cd /opt/kibana/plugins/kibana-html-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install && npm install \
  && cd /opt/kibana/plugins/kibana-enhanced-table && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && cd /opt/kibana/plugins/ob-kb-percent && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && cd /opt/kibana/plugins/kibana-xlsx-import && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && cd /opt/kibana/plugins/kibana-search-widget && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install \
  && yum remove -y epel-release npm \
  && yum clean all \
  &&  rm -rf /var/cache/yum


FROM ubuntu:18.04
MAINTAINER cyny666 1468578931@qq.com
RUN apt-get  update && apt-get install -y git
CMD ["/bin/bash"] 
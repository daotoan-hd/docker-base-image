FROM docker:20.10.11

RUN apk update && apk upgrade &&\
  apk add --no-cache python2 python3 bash git git-subtree openssh-client openssl ca-certificates tar wget curl libxml2-utils unzip py3-pip gettext moreutils coreutils findutils openjdk11&& \
  pip3 install --upgrade pip

ENV ANSIBLE_VERSION="2.12.3"
ENV HELM_VERSION="2.12.0"
ENV TERRAFORM_VERSION="1.3.5"
COPY src /src
RUN /src/linux-utils/run.sh
RUN /src/ansible/run.sh
RUN /src/gcloud/run.sh
RUN /src/aws/run.sh
RUN /src/helm/run.sh
RUN /src/istioctl/run.sh
RUN /src/kube/run.sh
RUN /src/terraform/run.sh
# RUN /src/vault/run.sh
RUN  rm -rf /src

ENV PATH $PATH:/root/google-cloud-sdk/bin
# COPY entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
# CMD /bin/bash
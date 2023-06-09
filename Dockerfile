FROM koji/image-build

LABEL maintainer="Red Hat, Inc."

LABEL com.redhat.component="ubi8-minimal-container" \
      name="ubi8-minimal" \
      version="8.8"

#label for EULA 
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"

#labels for container catalog
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 8."
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
LABEL io.k8s.display-name="Red Hat Universal Base Image 8 Minimal"
LABEL io.openshift.expose-services=""
LABEL io.openshift.tags="minimal rhel8"

ENV container oci
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD ["/bin/bash"]

RUN rm -rf /var/log/*

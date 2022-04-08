FROM amazonlinux:2.0.20220316.0
LABEL maintainer="Anatolii Pedchenko"
ENV container=docker

RUN yum -y update; yum clean all

# Install requirements
RUN yum makecache fast \
 && yum -y install epel-release initscripts \
 && yum -y update \
 && yum -y install \
      sudo \
      which \
      crontabs \
      openssh-server \
      openssh-clients \
      python3 \
      python3-pip \
      selinux-policy-targeted \
 && yum clean all

# Remove unnecessary getty and udev targets that can result in high CPU usage when using
# multiple containers with Molecule (https://github.com/ansible/molecule/issues/1104)
RUN rm -f /lib/systemd/system/systemd*udev* \
  && rm -f /lib/systemd/system/getty.target

# Disable requiretty.
RUN sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/lib/systemd/systemd"]

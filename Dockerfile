FROM centos:7

RUN yum install git -y && \
    yum install python-setuptools -y && \
    git clone https://github.com/openstack/masakari && \
    cd masakari && \
    python setup.py build && \
    python setup.py install

CMD hui

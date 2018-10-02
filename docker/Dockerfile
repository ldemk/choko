FROM shadowrobot/build-tools:xenial-kinetic-ide

MAINTAINER "ATP"

LABEL Description="This ROS Kinetic image containes all dependencies for TurtleBot3" Vendor="Lyubomyr" Version="1.0"

ENV remote_deploy_script="https://raw.githubusercontent.com/shadow-robot/sr-build-tools/$toolset_branch/ansible/deploy.sh"

RUN set -x && \
    \
    echo "Removing workspace folder" && \
    rm -rf /home/$MY_USERNAME/workspace && \
    \    
    echo "Running one-liner" && \
    wget -O /tmp/oneliner "$( echo "$remote_deploy_script" | sed 's/#/%23/g' )" && \
    chmod 755 /tmp/oneliner && \
    gosu $MY_USERNAME /tmp/oneliner -o ldemk -r choko -i Docker/turtlebot3.rosinstall -b master -v kinetic && \
    \
    echo "Sourcing workspace in .bashrc" && \
    echo 'source /home/$MY_USERNAME/workspace/turtlebot3/base/devel/setup.bash' >> /home/$MY_USERNAME/.bashrc && \
    \
    echo "Removing cache" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /home/$MY_USERNAME/.ansible /home/$MY_USERNAME/.gitconfig

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/usr/bin/terminator"]

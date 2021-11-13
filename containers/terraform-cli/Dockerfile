## Docker file for creating a centos docker container with terraform CLI installed ##
## A Dockerfile is an image file which is consumed to create a container ##
## 
## Create by Karan Chhabra (c) 13/11/2021 ##
## 
## This Dockerfile:
# 1. Pulls centos container image
# 2. Installs open-ssh server
# 3. Add a user "remote_user"
# 4. Give password to the created remote_user
# 5. Create a .ssh directory under the /home/remote_user for storing remote connectin information.
# 6. Ensure ONLY remote_user can access /home/remote_user/.ssh
# 7. Generate a ssh keypair remote_key to establish connection with the created container
# 8. Copy the generated remote_key.pub to /home/remote_user/.ssh/authorized_keys
# 9. remote_user should be owner of /home/remote_user/.ssh
# 10. Create global keys
# 11. Instruct docker on how the service should be started 
# 12. Install terraform CLI and verify installation
#-----------------------------------------------------------------------------------------------------#

#--Distribution--#
FROM centos:latest

##################
# Run command/s--#
#################

#--Update the downloaded OS--#
RUN yum update -y

#--Install open-ssh server--#
RUN yum install openssh-server -y

#--Add user remote_user and setup ssh connection--#
RUN useradd remote_user && \
	echo "remote_user:redhat" | chpasswd && \
	mkdir /home/remote_user/.ssh && \
	chmod 700 /home/remote_user/.ssh

COPY test-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
	chmod 600 /home/remote_user/.ssh/authorized_keys

#--Created global keys--#
RUN ssh-keygen -A
EXPOSE 22

#--Remove /run/nologin file--#
# /run/nologin is created by systemd-tmpfiles-setup.service #
RUN rm -rf /run/nologin

#--Install wget and unzip--#
RUN yum install wget -y && \
	yum install unzip -y

#--Download terraform CLI package and unzip it--#
RUN	cd /home/remote_user && \
	wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip && \
	unzip terraform_1.0.11_linux_amd64

#--Verify terraform version and add terraform binary to path variable--#
RUN mv /home/remote_user/terraform /usr/local/bin && \
	terraform --version 

#--Command that needs to be executed on the container--#
CMD /usr/sbin/sshd -D


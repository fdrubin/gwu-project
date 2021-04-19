# Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
Note: The following image link needs to be updated. Replace diagram_filename.png with the name of your diagram image file.

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:

- Description of Topology
- Azure diagram
- Access policies
- Elk Configuration

Description of the Topologu
Access Policies
ELK Configuration

# Description of the Topology

![Screen Shot 2021-04-18 at 9 06 39 PM](https://user-images.githubusercontent.com/60769973/115169385-d76bda00-a08b-11eb-8b81-fa9745c02212.png)

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly available, in addition to restricting inbound access/control to the network.

Jumpbox: The jumpbox acts as a gateway router that is exposed to the public internet. It sits in front of all other machines that are not exposed to the internet. Directing all traffic through this one node drastically reduces the attack surface. We can implement strong access controls to this single machine, instead of on every VM.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file system and system metrics.

The configuration details of each machine may be found below.
Note: Use the Markdown Table Generator to add/remove values from the table.





Web-3	Web Server	10.0.0.7	Linux
ELK-Server	Monitoring	10.1.0.4	Linux


<img width="296" alt="Elk-VM" src="https://user-images.githubusercontent.com/60769973/115308688-1c9a1580-a139-11eb-94c7-f5b3b1a1377d.png">


# Access Policies
The machines on the internal network are not exposed to the public Internet.
Only the jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 52.249.188.220
			

Machines within the network can only be accessed by eachother.

A summary of the access policies in place can be found in the table below.

Name	    Publicly Accessible	Allowed IP Addresses	
ChipotleAdmin Yes	            52.249.188.220	
Web-1	        No	            10.0.0.1-254	
Web-2	        No	            10.0.0.1-254	
Web-3	        No	            10.0.0.1-254	
ELK-Server    Yes	            91.39.72.23	
			


# Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because ansible allows for a smooth and manuel-less automation. Not only can it be easily duplicated, but also expanded on. 

The https://github.com/fdrubin/gwu-project/blob/main/elk.yml_install playbook implements the following tasks:

- Installs python3
- Installs docker
- Loades and launches docker
- Expands capacity

The following screenshot displays the result of running https://github.com/fdrubin/gwu-project/blob/main/docker_install.yml after successfully configuring the ELK instance.

![Elk Configuration](https://user-images.githubusercontent.com/60769973/115309095-c7123880-a139-11eb-84be-80360f98a6ed.png)

# Beats 
Following beats were installed into the servers.

- Metricbeat https://github.com/fdrubin/gwu-project/blob/main/metricbeat_install
- Filebeat https://github.com/fdrubin/gwu-project/blob/main/filebeat_install.yml

# Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.4
- 10.0.0.5
- 10.0.0.6

We have installed the following Beats on these machines:

These Beats allow us to collect the following information from each machine:

- Metricbeat monitors and documents the machine's metrics like memory & cpu usages.
- Filebeat records events inside of the terminsals, such as users' activity logs and any changes. 

# Using the Ansible Build

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:

- Copy the "elk.yml_install" file to /etc/ansible
Update the hosts file to include IP addresses of all VMs to run the playbook
Run the playbook, and navigate to http://[your.Elk.VM.IP]:5601/app/kibana to check that the installation worked as expected.



**Discussing about some issues which you may face**
<br><br/>
After creation of SonarQube-Server, Nexus-Server, Jenkins-Master and Jenkins-Slave you may face the issue that you are unable to telnet or netcat the Jenkins-Master, Nexus or SonarQube URL which you created using Route53 record set from the any of the EC2 Instance. If you face this issue then check the /etc/resolv.conf file. 
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project/assets/56765895/1e5be04b-7d59-44e1-ac40-cddf9fa8ed13)
<br><br/>
If you face the issue as discussed above then check the entry of /etc/resolv.conf file and if it is as shown above then please do the below changes.
<br><br/>
Either change your /etc/resolv.conf file or create a DHCP Option Set with your domain name and google public DNS Server 8.8.8.8 as shown below. My suggestion is to create a DHCP Option set and attach it to your VPC which you have used for creation of SonarQube-Server, Nexus-Server, Jenkins-Master and Jenkins-Slave. You can refer below screenshot.
<br><br/>
![image](https://github.com/singhritesh85/DevOps-Project/assets/56765895/c2365e46-fbd4-477a-9eef-4bdc236eccf3)
![image](https://github.com/singhritesh85/DevOps-Project/assets/56765895/4bba32f0-fe7e-48ed-8d95-bd9442c0287b)
<br><br/>
Reboot the EC2 Instances for changes to take effect.
<br><br/>
Now you will not face this issue again.
![image](https://github.com/singhritesh85/DevOps-Project/assets/56765895/697c00f2-0903-4554-bd86-2fc42478e2a4)
<br><br/>
**Another way to resolve this issue**
<br><br/>
You can add nameserver 8.8.8.8 in your /etc/resolv.conf file but when you reboot you EC2 Instance then these changes will not be reflected in your EC2 Instance. To bring these changes in effect even after you rebooted your EC2 Instance add the entry **supersede domain-name-servers 8.8.8.8;** in file **/etc/dhcp/dhclient.conf**.
<br><br/>
If you are getting notification in Nexus regarding File Descriptors then first of all stop the nexus service as **/opt/nexus/bin/nexus** stop then start nexus as a service using **sudo systemctl start nexus && sudo systemctl enable nexus && sudo systemctl status nexus**. I had discussed how to create nexus as a service at the time of it's installation in Project-1. Then again start nexus using **/opt/nexus/bin/nexus start** and check it's status using **/opt/nexus/bin/nexus status**.
<br><br/>


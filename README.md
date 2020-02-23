## Cellulant Terraform deployment

This repo contains terraform modules and templates used for deployment on AWS and on premise(KVM).
The top directory structure for this Terraform deployments is as below.

 - **KVM**: Contains terraform modules for KVM hypervisor
 - **Modules**: Contains re-usable modules used for AWS deployments
 - **Prod**: Terraform templates and code for Production Environment
 - **Staging**: Terraform templates and code for Staging Environment


**Prod Environment**
The production environment Terraform deployment isolation is based on service. These services has been categorised into:
 - **analytics**         --> Data Warehouse 
 - **cde**                  --> PCI Environment 
 - **hosting**           --> Hosting Servers E.g Cpanel
 - **messaging**      --> VAS Tools and Apps 
 - **payments**        --> Client Apps and Tools 
 - **wallets**             --> Wallet Servers

**Staging Environment**
The Staging  environment.
This is the set of resources deployed in  the staging Environments. The current staging environments are Frankfurt and Ohio regions.

 - **analytics**         --> Data Warehouse
 - **cde**               --> PCI Environment
 - **hosting**           --> Hosting Servers E.g Cpanel
 - **messaging**         --> VAS Tools and Apps
 - **payments**          --> Client Apps and Tools
 - **wallets**           --> Wallet Servers



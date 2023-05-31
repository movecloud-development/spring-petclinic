# Configurations for spring-petclinic application

This directory contains the configurations of the spring-petclinic environments given as a helm chart.

# Setup
 The current defined branches:

* master -> production environment
* staging -> staging environment
* development -> development environment

## Parameters

The following table lists the configurable parameters of the chart and their default values:

| Parameter              | Description                                                                                                      | Default                                                                                    |
|------------------------|------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| projectName                | Name of the project                                                                                          | N/A                                                                                        |
| customerName               | the name of the customer                                                                                     | "N/A"                                                                                      |
| replicaCount               | Number of initial replicas to run (>= 2)                                                                     | 3                                                                                          |
| image.repository           | The full repository path of the image to deploy.                                                             | `<artifactory-docker-registry>/image-name` |
| image.tag                  | The tag of the image to deploy.                                                                              | `v0.0.0` |
| cpuLimit                   | The CPU limit for the php container                                                                          | 400m                                                                                       |
| memoryLimit                | The memory limit for the php container                                                                       | 600Mi                                                                                      |
| cronjobIntervalMinutes     | how often should the cronjob be triggered                                                                    | 10                                                                                         |
| persistentStorageSize      | The size of the persistent volume                                                                            | "1Gi"                                                                                      |
| persistentStorageMountPath | The mount path of the persistent volume                                                                      | `/var/uploads`                                                                             |
| baseDomain                 | the base domain for the default route                                                                        | `apps-customer.nonprod.pge.com`                                                                      |
| ingress.createDefault      | Creates the default ingress that looks like `<customer-name>-<project-name>-<environment>.apps-customer.nonprod.pge.com` | true                                                                                       |
| ingress.additional         | additional ingress hostnames we should set up for this project given as an array                             | []                                                                                         |
| environment                | The environment for which we deploy (like staging or production)                                             | "N/A"                                                                                      |

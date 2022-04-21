# kvc-open-cas-kmod
Load [Open-CAS kernel modules](https://github.com/Open-CAS/open-cas-linux) using
[kmods-via-containers](https://github.com/kmods-via-containers/kmods-via-containers) framework

The initial implementation is targeted at Openshift clusters with Special Resource Operator (SRO)
 installed and Local Image Registry running. To deploy Open-CAS kernel modules either download
 open-cas-kmod.yaml and call `oc create -f open-cas-kmod.yaml` or using web console go to Special
 Resource Operator > Create SpecialResource and paste contents of open-cas-kmod.yaml in the YAML
 view.

## Notes
To deploy the open-cas-kmod in your cluster, there needs to be a Local Image Registry configured.
 A quick solution on how to configure an ephemeral Image Registry is described
 [here](https://serverfault.com/questions/1082295/how-to-enable-local-image-registry-on-openshift-single-node-cluster-installation).

open-cas-kmod-\*.tgz contains packaged files from the directory open-cas-kmod-\* using
 [`helm package`](https://helm.sh/docs/helm/helm_package/) command.
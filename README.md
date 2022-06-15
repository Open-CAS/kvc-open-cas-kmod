# kvc-open-cas-kmod
Load [Open-CAS kernel modules](https://github.com/Open-CAS/open-cas-linux) using
[kmods-via-containers](https://github.com/kmods-via-containers/kmods-via-containers) framework

The initial implementation is targeted at Openshift clusters with Special Resource Operator (SRO)
 installed and Local Image Registry running.
To deploy Open CAS kernel modules you must first create a config map with helm repository. Clone
this repository or copy files from cm directory.
```
git clone https://github.com/Open-CAS/kvc-open-cas-kmod
cd kvc-open-cas-kmod/cm
oc create namespace open-cas-kmod
oc create cm open-cas-kmod-chart --from-file=index.yaml --from-file=open-cas-kmod-0.0.1.tgz -n open-cas-kmod
```

Then either download open-cas-kmod.yaml and call `oc create -f open-cas-kmod.yaml` or using web
 console go to Special Resource Operator > Create SpecialResource and paste the contents of the
 open-cas-kmod.yaml in the YAML view.

## Notes
To deploy the open-cas-kmod in your cluster, there needs to be a Local Image Registry configured.
 A quick solution on how to configure an ephemeral Image Registry is described
 [here](https://serverfault.com/questions/1082295/how-to-enable-local-image-registry-on-openshift-single-node-cluster-installation).

cm\open-cas-kmod-\*.tgz contains packaged files from the directory open-cas-kmod-\* using
 [`helm package`](https://helm.sh/docs/helm/helm_package/) command.
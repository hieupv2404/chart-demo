# Install PostgreSQL Helm chart

1. Create a PVC, the PV will be dynamically provisioned by nfs-client-provisioner
2. Change the reclaim policy of persistent volume

    Default reclaim policy is `Delete`, which means the PV will be deleted after the PVC is deleted. In that case, we have to update the PV reclaim policy to `Retain`. See [here](https://kubernetes.io/docs/tasks/administer-cluster/change-pv-reclaim-policy/)
    for more information.
3. Apply application
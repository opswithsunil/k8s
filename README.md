### Check Permissions of current User
Ensure that your user has the necessary permissions for creating RoleBindings in the kube-system namespace. You can check your permissions by running the following command:

```bash
kubectl auth can-i create rolebindings --namespace=kube-system
```
# GCP CSI Driver

### CSI Driver:

This retrieves information about the CSI (Container Storage Interface) Driver objects in the cluster.
Use case: Useful for verifying the installation or health of a CSI driver, such as the Google Cloud Storage (GCS) Fuse CSI Driver in this case. The CSI driver enables Kubernetes to use GCS buckets as storage volumes.

### Deployment:

Retrieves details about Deployments in the specified namespace.
Use case: Deployments manage stateless applications and ensure that a specified number of pod replicas are running. This command is used to check the status, availability, and replicas of applications running as deployments in the gcs-fuse-csi-driver namespace.

### DaemonSet:

Retrieves details about DaemonSets in the specified namespace.
Use case: DaemonSets ensure that a copy of a pod runs on all (or specific) nodes in the cluster. This is particularly relevant for components like storage drivers, which may need to run on every node. In the context of the GCS Fuse CSI driver, this can be used to verify that the driver is running on all necessary nodes.

### Pods:

Retrieves information about Pods in the specified namespace.
Use case: Pods are the smallest deployable units in Kubernetes. Listing the pods helps you check the status (e.g., Running, Pending, or Failed) of the individual pods that make up the CSI driver, Deployments, and DaemonSets. This is crucial for diagnosing any issues in the components of the CSI driver.

### Use Case:

This command is typically used by Kubernetes administrators or engineers to:

Verify the status and health of the GCS Fuse CSI Driver components in the cluster.
Diagnose and troubleshoot issues with deployments, daemonsets, or pods related to the CSI driver.
Ensure that the necessary components of the CSI driver are properly running on the correct nodes (using DaemonSets).
Inspect resource utilization, configuration, and replication of pods for storage drivers and related applications.

```bash
kubectl get CSIDriver,Deployment,DaemonSet,Pods -n gcs-fuse-csi-driver
```


## Enable the Cloud Storage Fuse CSI driver using CLi

```bash
gcloud services enable storage.googleapis.com
```
```bash
gcloud container clusters update <cluster name> --workload-pool=<project id>.svc.id.goog --zone <region>
```
```bash
gcloud container clusters update <cluster_name> --zone <region> --update-addons=GcsFuseCsiDriver=ENABLED
```

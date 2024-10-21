# Check Permissions
Ensure that your user has the necessary permissions for creating RoleBindings in the kube-system namespace. You can check your permissions by running the following command:

    kubectl auth can-i create rolebindings --namespace=kube-system

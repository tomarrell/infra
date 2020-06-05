# Postgres
This directory contains the files necessary to configure and deploy a Postgres
instance to my personal cluster.

# Deployment
This is deployed as a Kustomize application. Before the kustomization can be
applied, the env file must first be decrypted.

To decrypt the env file, run the following command:
```bash
age -d -i ~/.ssh/tomssh.pem -o ./postgres.env ./postgres.env.encrypted
```

Then you can apply the customization to the cluster.

```bash
kubectl apply -k .
```

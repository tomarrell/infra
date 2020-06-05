# Postgres
This directory contains the files necessary to configure and deploy Postgres to
my personal cluster.

# Deployment
The resources should be applied in the following order:

1. ConfigMap: This should be applied while replacing the `$PASSWORD` variable
   with the intended value.
2. PVC: Will create and attach a Digital Ocean block storage volume. This volume
   is unfortunately only writable from a single node however due to their
   limitations.
3. Deployment
4. Service

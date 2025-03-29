# Measuring Energy Consumption in Virtualized Kubernetes Clusters

This repository contains the material used to create my (Master thesis)[./thesis.pdf], including the implementation described in the thesis, as well as the raw results data used to generate the results section.

The repository structure is as follows:

- `implementation/`:
  - `dashboards/`: Grafana Dashboards used for gathering results data
  - `deployment/`: Manifests and Ansible playbooks to deploy implementation
  - `kepler/`: (Submodule) Modified Kepler codebase used for the implementation
  - `scaphandre`: (Submodule) Scaphandre codebase, modified with the thesis' attribution model
- `results/`: CSV-formatted results data from test runs, gathered through Grafana

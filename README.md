# Microscalers Infra: Terminal-Grade AI Compute on Kubernetes

[![CI](https://github.com/microscalers/microscalers-infra/actions/workflows/deploy.yaml/badge.svg)](https://github.com/microscalers/microscalers-infra/actions)
[![Discord](https://img.shields.io/discord/1234567890?logo=discord)](https://discord.gg/microscalers) <!-- Update with your Discord -->

Powering AI innovation with verified RTX 5090 GPU rigs. Bridge scalers, brokers, and clients via blockchain-trusted Kubernetes clusters for workloads like Monai.io MRI training and LLM serving.

## Quick Start
1. Clone: `git clone git@github.com:microscalers/microscalers-infra.git && cd microscalers-infra`
2. Provision Cluster: `./scripts/provision-rig.sh --gpus=5090 --nodes=5`
3. Deploy LLM: `helm install llm manifests/llm-chart --set model=huggingface/meta-llama/Llama-2-7b-hf`
4. SSH Onboard: `./scripts/onboard-client.sh --user=client@domain.com --rig=om0423`

## Sections
| Feature | Description | Guide |
|---------|-------------|-------|
| Kubernetes Setup | Multi-node cluster with GPU sharing | [docs/kubernetes-setup.md](docs/kubernetes-setup.md) |
| SSH/Docker Onboarding | Secure client access with root/Docker | [docs/ssh-docker-onboard.md](docs/ssh-docker-onboard.md) |
| Rig Customization | Client-specific configs (e.g., Monai.io) | [docs/rig-customization.md](docs/rig-customization.md) |
| LLM/HF Integration | Deploy Hugging Face models | [See LLM Path](#path-to-compute-models) |

## Path to Compute Models
1. **Pull Model**: `docker pull huggingface/transformers-pytorch-gpu`
2. **Fine-Tune**: `kubectl apply -f manifests/kubeflow-job.yaml`
3. **Serve**: `kubectl port-forward svc/llm 8080:80`
4. **Verify**: Chainlink oracle for hardware specs (e.g., GPU TFLOPS).

## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md). Join our bounty board on Discord to earn USDC for PRs!

## License
MIT. Questions? Hit us on [@microscalers on X](https://x.com/microscalers) (265+ community).

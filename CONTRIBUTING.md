# Contributing to Microscalers Infra

Welcome to the Microscalers Guild! Build with us to power AI innovation on our RTX 5090 GPU Kubernetes cluster. Whether you're a young dev tackling bounties or a seasoned scaler optimizing rigs, your contributions drive our mission to democratize AI compute.

## How to Contribute
1. **Find a Bounty**: Check [GitHub Issues](https://github.com/microscalers/microscalers-infra/issues) for tasks (e.g., #42: Add Monai.io support) or join our [Discord](https://discord.gg/microscalers) for the latest bounty board.
2. **Fork & PR**:
   - Fork: `gh repo fork microscalers/microscalers-infra --clone`
   - Create a branch: `git checkout -b feature/your-bounty`
   - Commit: `git commit -m "Add Monai.io support for #42"`
   - Push & PR: `git push origin feature/your-bounty && gh pr create`
3. **Test**: Run `make test` (lints YAML with `kubeval`, checks scripts).
4. **Collaborate**: Use [Discord](https://discord.gg/microscalers) for mentorship or [GitHub Discussions](https://github.com/microscalers/microscalers-infra/discussions) for Q&A. Try `kubectl-ai "deploy LLM"` for AI-assisted Kubernetes ops.
5. **Earn Rewards**: Merged PRs earn USDC via Chainlink-verified payments. Check Discord for payout details.

## Tools
- **GitHub Projects**: Track bounties in our [Bounty Board](https://github.com/microscalers/microscalers-infra/projects).
- **Codespaces**: Spin up a dev environment with `kubectl`, `helm`, and `docker` pre-installed.
- **Jupyter Notebooks**: Run `kubectl apply -f manifests/jupyter.yaml` for shared AI/ML notebooks.
- **AI Assist**: Install `kubectl-ai` via `kubectl krew install ai` for smarter ops.

## Code Style
- **YAML**: Follow Kubernetes best practices (use `kubeval`).
- **Scripts**: Bash with `set -euo pipefail` for safety.
- **Dockerfiles**: Minimal, multi-stage builds.

## Questions?
Hit us on [Discord](https://discord.gg/microscalers) or [@microscalers on X](https://x.com/microscalers) (265+ strong). Let’s build the future of AI compute together!

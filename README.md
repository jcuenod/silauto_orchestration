# Usage

```
ssh-keygen -t ed25519 -f ~/.ssh/container_key -N ""
cat ~/.ssh/container_key.pub >> ~/.ssh/authorized_keys
git clone --recurse-submodules <orch-repo-url>
docker compose up -d
```

**Forget to recursive clone?**

```
git submodule update --init --recursive
```

**Update submodules**

git submodule update --remote --merge
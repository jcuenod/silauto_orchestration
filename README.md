# Usage

```
ssh-keygen -t ed25519 -f ~/.ssh/container_key -N ""
git clone --recurse-submodules <orch-repo-url>
docker-compose up -d
```

**Forget to recursive clone?**

```
git submodule update --init --recursive
```

**Update submodules**

git submodule update --remote --merge
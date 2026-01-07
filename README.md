# nixos-config
My NixOS configuration

**Initial Setup**

# Clone your configuration (if in git)
git clone <your-repo> ~/nixos-config
cd ~/nixos-config

# Generate hardware config (on target machine)
sudo nixos-generate-config --dir .

# Build and switch to new configuration
sudo nixos-rebuild switch --flake .

# Or for just home-manager changes (as user)
home-manager switch --flake .

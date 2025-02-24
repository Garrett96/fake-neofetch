# Fake Neofetch

Fake Neofetch is a customizable script that mimics the behavior of Neofetch but allows users to modify displayed system information, including CPU, RAM, disk, OS, virtualization type, hostname, and even the Neofetch ASCII image.

## Features
- **Customizable system specs**: Change CPU, RAM, disk, OS, and other displayed details.
- **Virtualization detection spoofing**: Set a custom virtualization type like KVM or PowerEdge.
- **Over 40+ ASCII images**: Choose different ASCII images for customization.
- **Easy to run**: Simple bash script with arguments for customization.
- **Lightweight and fast**: Runs quickly without dependencies.

## Installation
1. Clone or download the script:
   ```bash
   git clone https://github.com/yourrepo/fake-neofetch.git
   cd fake-neofetch
   ```
2. Make the script executable:
   ```bash
   chmod +x fake_neofetch.sh
   ```

## Usage
Run the script with default settings:
```bash
./fake_neofetch.sh
```

### Customizing Output
You can override system specs using command-line arguments:
```bash
./fake_neofetch.sh --cpu "Intel i9-14900K" --ram "64GB DDR5" --disk "8TB SSD" --os "Arch Linux" --image "tux"
```

### Available Arguments
- `--cpu "Your CPU Model"`
- `--ram "Your RAM Specs"`
- `--disk "Your Disk Storage"`
- `--virt "KVM/QEMU/PowerEdge"`
- `--hostname "Custom Hostname"`
- `--os "Operating System"`
- `--kernel "Kernel Version"`
- `--uptime "Custom Uptime"`
- `--image "ASCII Image"` (Choose from available Neofetch images)

## Customizing ASCII Images
To add more ASCII images, edit the `show_ascii_image` function inside the script and include new artwork.

## License
This script is open-source and available under the MIT License.

## Contributing



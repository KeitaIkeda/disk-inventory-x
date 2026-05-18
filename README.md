# Disk Inventory X (Apple Silicon Fork)

A macOS disk usage visualizer using treemaps. This fork adds Apple Silicon (arm64) and macOS Tahoe (26) support.

Original project by Tjark Derlien: https://gitlab.com/tderlien/disk-inventory-x

![License](https://img.shields.io/badge/license-GPL--3.0-blue)

## Changes from upstream

- Removed OmniFrameworks dependency (OmniBase, OmniFoundation, OmniAppKit)
- Removed Carbon framework dependency
- Builds as Universal Binary (arm64 + x86_64)
- Minimum deployment target: macOS 11.0 (Big Sur)
- Tested on macOS Tahoe (26) with Apple Silicon

## Download

Pre-built binary is available on the [Releases](https://github.com/KeitaIkeda/disk-inventory-x/releases) page.

> **Note:** This app is not signed with an Apple Developer ID.
> macOS will block it on first launch. To open:
> 1. Right-click the app → "Open" → "Open" in the dialog
> 2. Or: System Settings → Privacy & Security → "Open Anyway"
> 3. Or run: `xattr -cr "Disk Inventory X.app"`

## Building

1. Clone this repository
2. Open `Disk Inventory X.xcodeproj` in Xcode
3. Build and run

TreeMapView.framework (Universal Binary) is included in the `Frameworks/` directory.
To rebuild TreeMapView from source, see [treemapview-framework](https://github.com/KeitaIkeda/treemapview-framework).

## License

GPL-3.0 — see [COPYING](COPYING)

## Original Author

Tjark Derlien

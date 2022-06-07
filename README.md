# android_pe_vendor_xiaomi_venus

Proprietary vendor blobs for the Xiaomi Mi 11 (`venus`), including Qualcomm diag driver blobs.

Heavily based off the PixelExperience vendor repository: https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_venus

## Usage in your own build process

Create a new manifest in `.repo/local_manifests` (e.g., `pixel_with_diag.xml`).

Copy the contents of the code block below into this new file. This will remove PE's own venus vendor repo and use this repo instead.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project name="vendor_xiaomi_venus" />
  <project name="davwheat/android_pe_vendor_xiaomi_venus" path="vendor/xiaomi/venus" remote="github" revision="twelve" />
</manifest>
```

After this, you can sync this project to pull this repo in.

```
repo sync vendor/xiaomi/venus

// If you've already synced this project before, you'll need to use the `--force-sync` flag to override the existing repo
repo sync --force-sync vendor/xiaomi/venus
```

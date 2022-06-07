# android_pe_vendor_xiaomi_venus

Proprietary vendor blobs for the Xiaomi Mi 11 (`venus`), including Qualcomm diag driver blobs.

Heavily based off the PixelExperience vendor repository: https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_venus

## Usage in your own build process

Create a new manifest in `.repo/local_manifests` (e.g., `pixel_with_diag.xml`). **The filename must be alphabetically after the existing** `pixel.xml` **manifest.**

Copy the contents of the code block below into this new file. This will remove PE's own `venus` vendor and device repos and use this repo and my device repo instead.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <!--
    Remove projects added by `pixel.xml`

    If you haven't synced the `venus` projects from PE, you may
    need to comment these lines out of the manifest.
  -->
  <remove-project name="vendor_xiaomi_venus" />
  <remove-project name="device_xiaomi_venus" />

  <!-- 
    Add our own custom repos which include Qualcomm diag drivers
    for venus.
   -->
  <project name="davwheat/android_pe_vendor_xiaomi_venus" path="vendor/xiaomi/venus" remote="github" revision="twelve" />
  <project name="davwheat/android_pe_device_xiaomi_venus" path="device/xiaomi/venus" remote="github" revision="twelve" />
</manifest>

```

After this, you can sync this project to pull my repos in.

```
repo sync vendor/xiaomi/venus device/xiaomi/venus

// If you've already synced this project before, you'll need to use the `--force-sync` flag to override the existing repo
repo sync --force-sync vendor/xiaomi/venus device/xiaomi/venus
```

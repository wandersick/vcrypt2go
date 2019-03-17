# vCrypt2Go – DIY Your Own Easy-to-Use Encrypted Portable Disk Based on VeraCrypt
Named after VeraCrypt and 'BitLocker To Go', vCrypt2Go – a set of lock-and-unlock utilities on top of VeraCrypt to DIY your own encrypted USB thumb drive or hard disk which functions like a purchased encrypted external storage solution in the market – simplifies the user experience of VeraCrypt Portable on removable media/external hard disks by hiding the complexities of VeraCrypt and its options from users, making it easy to lock and unlock an encrypted USB thumb drive or hard disk with as few steps as possible.

With this set of tools, anyone can turn any existing unsecured USB stick or hard disk into one that is a more secure, as well as using it with ease and convenience.

Download the latest release at Microsoft TechNet Gallery:
- https://gallery.technet.microsoft.com/tCrypt2Go-and-vCrypt2Go-7cd92f42

**Looking for TrueCrypt?** tCrypt2Go based on TrueCrypt is available at https://github.com/wandersick/tcrypt2go/

---

## Introduction

Are you a security-aware person? Have you got a USB thumb drive or external hard drive you wish to use that does not have any built-in encryption features? You could turn it into one that does, with the cross-platform open-source alternative to BitLocker – TrueCrypt (succeeded by VeraCrypt) – but it is not as easy or intuitive to unlock or use as a purchased encrypted external storage solution in the market, because of its feature-rich nature; unlocking is done via an advanced user interface that is more meant for the technically inclined.

## Solution – tCrypt2Go &amp; vCrypt2Go to Simplify and Speed Up Drive Unlocking

 ![](https://lh3.googleusercontent.com/-C6as-jneCKk/WpMFQ-I1zvI/AAAAAAAAB0A/u32KleYXfM0B2ZGY9R-wXRbrViLRaXLxgCHMYCw/s1600/image4)

Named after TrueCrypt and &#39;BitLocker To Go&#39;, tCrypt2Go – a set of open-source and cross-platform lock-and-unlock utilities on top of TrueCrypt enabling users to DIY their own encrypted portable storage which is simple to use as a purchased solution in the market – simplifies the user experience of TrueCrypt Portable on removable media/external hard disks by hiding the complexities of TrueCrypt and its options from users, making it easy to lock and unlock an encrypted USB thumb drive or hard disk with as few steps as possible.

(Likewise, the same applies for the successor of TrueCrypt – VeraCrypt – after which vCrypt2Go is named.)

## List of Features

- Optimize use of portable drives encrypted by TrueCrypt and VeraCrypt
- Easily unlock and lock portable drives with a simplified process, hiding complexities from users
  - To unlock, double-click &#39;unlock&#39;, enter password in a simple user interface, then the unlocked drive is presented to the user; to lock, double-click &#39;lock&#39;, no further action required
  - Easily identify executable icons which look like a lock (unlocked or locked)
- A set of step-by-step installation guides available for encrypting different types of portable drives
- Supports both encrypted partitions and containers (virtual disk files)
- Handles different scenarios – admin or standard user account; with or without TrueCrypt/VeraCrypt preinstalled
- Portable and cross-platform – Windows and Mac OS X (beta)
- Automatic User Account Control elevation to highest privileges available on Windows Vista and later

(Refer to [Technical Overview](https://wandersick.blogspot.com/2018/02/technical-overview-how-tcrypt2go-and.html) article for limitations.)

## Seeing It in Action

 ![](https://lh3.googleusercontent.com/-jTsk97Y31dM/WpMFT-h-s4I/AAAAAAAAB0I/rtql9AL-joIE7dI0t1Xz351V7iN-lFQLQCHMYCw/s1600/tcrypt2go-vcrypt2go-demo7)

As demonstrated, the goal of tCrypt2Go/vCrypt2Go is to make it seamless and convenient for users to secure and use their portable drive with the provided set of lock-and-unlock utilities. There will be no dialog shown to users other than entering the password for unlocking the protected area (which is a virtual disk file, or container, in the case of a USB thumb drive of removable media type as demonstrated below, or a partition in the case of an external hard disk of a fixed disk type). It works on Windows (stable) and Mac (beta) depending on which file system is chosen (FAT32, NTFS, exFAT) for formatting the protected partition. (For further details, read the Technical Overview article.)

## Requirements

- Hardware: Any unused portable storage (e.g. USB thumb drives, memory cards, external hard disks…)
- Operating System: Any Windows and Mac operating systems supported by TrueCrypt and VeraCrypt, including Windows XP and later, Mac OS 10.6.5 (10.7 for VeraCrypt) and later
  - tCrypt2Go and vCrypt2Go on Windows are stable, but for Mac OS X they are currently in beta as they have yet to be tested in newer OS X versions

## Getting Started

If you are a user who has been offered a USB drive with tCrypt2Go or vCrypt2Go utilities, read the User Guide below to understand how to use it. Put simply, double-click &#39;unlock&#39;, enter password, done; to lock, double-click &#39;lock&#39;, done.

If you are looking for how to set up a drive for use with tCrypt2Go or vCrypt2Go, read ones of the Installation Guides below. There are two options depending on whether you have a  **thumb drive**  or a  **hard disk**.

 ![](https://lh3.googleusercontent.com/-l4r0vdMMGpM/WpMFW9NZYYI/AAAAAAAAB0Q/b6mD3frOOgYkKUu27hMRMKl5QlbmlTfVACHMYCw/s1600/image5)

To learn more about the technical details behind, read the Technical Overview article. Otherwise, feel free to skip to the Installation Guides to implement immediately.

## List of Articles on tCrypt2Go/vCrypt2Go

- **\*You Are Here\***  Introducing tCrypt2Go and vCrypt2Go – Lock-and-Unlock Utilities for TrueCrypt and VeraCrypt Portable
- [Technical Overview – How tCrypt2Go and vCrypt2Go work](https://wandersick.blogspot.com/2018/02/technical-overview-how-tcrypt2go-and.html)
- [Installation Guide – Setting up tCrypt2Go and vCrypt2Go to Encrypt Portable ](https://wandersick.blogspot.com/2018/02/installation-guide-setting-up-tcrypt2go_26.html)[**Hard Disks**](https://wandersick.blogspot.com/2018/02/installation-guide-setting-up-tcrypt2go_26.html)
- [Installation Guide – Setting up tCrypt2Go and vCrypt2Go to Encrypt USB ](https://wandersick.blogspot.com/2018/02/installation-guide-setting-up-tcrypt2go.html)[**Thumb Drives**](https://wandersick.blogspot.com/2018/02/installation-guide-setting-up-tcrypt2go.html)
- [User Guide – How to Unlock and Lock Encrypted Drives using tCrypt2Go or vCrypt2Go](https://wandersick.blogspot.com/2018/02/user-guide-how-to-unlock-and-lock.html)
- [Enhancing and Troubleshooting Common Issues with tCrypt2Go or vCrypt2Go](https://wandersick.blogspot.com/2018/02/enhancing-and-troubleshooting-common.html)

## Release History

| Ver | Date | Update Description |
| --- | --- | --- |
| 2.1 | 20180302 | Corrected 64-bit executables to 32-bit for better compatibility |
| 2.0 | 20180225 | Added support for VeraCrypt. Change UAC elevation to HighestAvailable. First public release (Mac support is beta) |
| 1.8 | 20130809 | Improved error messages |
| 1.7 | 20130624 | Fixed a use for standard users under XP while TrueCrypt driver is installed - a bug introduced by new code |
| 1.6 | 20130509 | Added more meaningful error messages |
| 1.5 | 20130320 | Fixed an issue for non-admin users where TrueCrypt device driver is installed and UAC is enabled, a UAC prompt would be triggered but users cannot authenticate as they are not admins. They are now redirected to TrueCrypt installation prompt |
| 1.4 | 20130118 | Improved Mac and Windows executables. Checks for admin right and whether TrueCrypt is installed. Prompts user for TrueCrypt setup if required |
| 1.3 | 20130117 | Added hidden file support of Mac OS X |
| 1.2 | 20121211 | New version which uses AutoHotkey (for Windows) |
| 1.1  | 20121105 | Adds Mac OS X support using AppleScript and shell script |
| 1.0  | 20121105 | First private release using Windows batch script |

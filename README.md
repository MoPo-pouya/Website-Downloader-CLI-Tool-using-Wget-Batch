# Website-Downloader-CLI-Tool-using-Wget-Batch

<p align="right">
  <a href="https://github.com/MoPo-pouya">
    <i class="fab fa-github"></i>
  </a>
</p>


# 🌐 Website Downloader CLI Tool

A lightweight command-line tool (written in pure `.bat`) that allows you to:

- Install Chocolatey & Wget automatically
- Choose a website URL to download
- Select what to download: only HTML, HTML+CSS, with Images, or Full Page (HTML + CSS + JS + Images)
- Choose the output directory where all files will be saved

No need for external tools — just run the installer and go!

## 📁 Files

- `installer.bat`: Installs Chocolatey (if missing) and Wget
- `downloader.bat`: Main script that prompts for:
  - Website URL
  - Output folder path
  - Download type

## ✅ Requirements

- Windows OS (tested on Windows 10+)
- Admin access (for first-time Chocolatey install)

## 🚀 How to Use

1. Run `installer.bat` as Administrator (only once to install Chocolatey and Wget)
2. Run `downloader.bat`
3. Enter:
   - The URL of the website you want to download
   - The folder where you want to save the files
   - Your desired download type (HTML, CSS, JS, Images)

## 🧠 Notes

- This tool is intended for educational or backup purposes.
- Always make sure you have permission to download the site contents.

## 💡 License

MIT — Use it freely and modify as you wish.


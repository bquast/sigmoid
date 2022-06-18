# Test environments
- local Windows 10 install, R 4.2.0
- local Linux (Arch) install, R 4.2.0
- local MacOS install, R 4.1.2
- GitHub Actions
   - Windows Server, R release
   - MacOS, R release
   - MacOS, R dev
   - Ubuntu, R release
- win-builder
   - devel
   - release

── R CMD check results ─────────────────────────────────────────────────────────────────────────────── sigmoid 1.4.0 ────
Duration: 19.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

R CMD check succeeded

and on win-builder:

Possibly mis-spelled words in DESCRIPTION:
  Sigmoid (2:8)
  SoftMax (5:97)
  preprocessing (5:105)
  sigmoid (5:32)

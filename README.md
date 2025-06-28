# ⚡ Deep Windows Performance Optimization Tool

A real tool for real performance — not just surface tweaks.

This project strips Windows down to its essentials, removing unnecessary noise from kernel-level services, scheduler bloat, DPC latency spikes, and more. The result: **lower input delay**, **faster response times**, and a **clean system baseline** for gaming or latency-critical work.

---

## 🚀 What This Actually Does

Unlike the usual "FPS boost" scripts that disable Xbox Game Bar and call it a day — this tool goes deeper:

- 🧠 **Reduces system services** to under **60 total running** (vs 120+ on stock Windows)
- ⚙️ **Kills unused scheduled tasks**, high-latency drivers, and telemetry that can cause CPU hitches
- 🎯 **Strips Layered Interrupt Latency Paths** in Windows to cut DPC/ISR stack interruptions
- ⚡ **Applies a custom power profile** designed for **absolute input responsiveness**, not just high performance
- 🛠️ **Disables synthetic timers** (HPET, TSC fallback modes) depending on platform behavior
- 🧹 Offers **selective debloat** with critical awareness — not blind app removal

> All tweaks are **reversible** and tested on Windows 10 & 11.

---

## 📋 Summary of Included Tweaks

| Component               | Included? | Notes |
|------------------------|-----------|-------|
| Service Reduction      | ✅        | Clean baseline with 55–60 services |
| HPET / Timers Control  | ✅        | Optional timer reconfiguration (reg only) |
| Game Bar & DVR Kill    | ✅        | Fully removed from registry and scheduled tasks |
| Scheduled Task Purge   | ✅        | Removes Xbox, Feedback, DiagTrack, UWP triggers |
| Network Throttle Kill  | ✅        | Removes Ndu.sys background sampling |
| Cortana / Telemetry    | ✅        | Fully disabled |
| Input Latency Tweaks   | ✅        | USB Polling, mouse filter removals |
| Low-Latency Power Plan | ✅        | Balanced for latency, not just frequency |
| Debloat Script         | ✅        | Selective + full modes available |

---

## 💻 How to Use

1. Download or clone the repo
2. Run each tweak script **as Administrator**
3. Optional: reboot after each group of changes for best effect
4. Use `latencymon` or `inputlagtest` to verify changes

---

## 🧠 Why This Tool Matters

Most “FPS boost” scripts floating around just toggle basic UI features.  
This tool goes deeper:

- Built around **real latency testing tools** (`xperf`, `latencymon`, `DPC latency checker`)
- Based on configs used by **low-level Windows tuning experts** for competitive gaming
- Avoids placebo tweaks (like `NagleAlgorithm`, `LargeSystemCache`, etc.) that don’t actually improve anything

---

## ⚠️ Disclaimer

This is a power user tool. It will reduce features in favor of latency.  
If you’re not comfortable restoring Windows features, create a backup first.

---

## 🔥 Built For:

- eSports competitors
- 240Hz+ and sub-10ms latency target users
- Streamers needing maximum scheduling efficiency
- Anyone tired of noisy, bloated Windows installs

---

## 📁 What's Included

| File                    | Purpose                                |
|-------------------------|----------------------------------------|
| `apply-tweaks.bat`      | Main batch script to apply tweaks      |
| `restore-defaults.bat`  | Restores all removed features          |
| `debloat-windows.ps1`   | Safe, selective system debloater       |
| `low-latency.reg`       | Registry tweaks for input latency      |
| `services-trim.reg`     | Cuts system services to <60            |
| `README.md`             | Full documentation                     |

---

## 💬 Questions? Contributions?

Open a GitHub issue or submit a pull request if you have deeper tweaks to contribute.  
This tool will only ever focus on **real impact, not fluff.**

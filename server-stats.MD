
# 🖥️ Server Stats Script

A simple and portable Bash script to monitor essential Linux server performance metrics. This tool helps you quickly get an overview of your system's CPU, memory, disk usage, running processes, and login attempts — all from the command line.

---

## 📜 Features

- ✅ OS version info  
- ✅ Uptime and load average  
- ✅ Currently logged in users  
- ✅ Total CPU usage  
- ✅ Memory usage (used, free, percentage)  
- ✅ Disk usage (used, free, percentage)  
- ✅ Top 5 processes by CPU usage  
- ✅ Top 5 processes by memory usage  
- ✅ Recent failed SSH login attempts  

---

## 🧰 Requirements

- Linux OS  
- Bash shell  
- Utilities: `top`, `free`, `df`, `ps`, `awk`, `who`, `journalctl`  
  *(These are available by default on most Linux distributions)*

---

## 🛠️ Usage

1. Clone or download the repository.

2. Make the script executable:

   ```bash
   chmod +x server-stats.sh
````

3. Run the script:

   ```bash
   ./server-stats.sh
   ```

4. ℹ️ For failed login attempts section, run the script with `sudo` to ensure access to system logs:

   ```bash
   sudo ./server-stats.sh
   ```

---

## 📌 Sample Output

```bash
=========================
 SERVER PERFORMANCE STATS
=========================

--- OS Version ---
Ubuntu 22.04.4 LTS

--- Uptime & Load Average ---
 14:02:13 up 2 days,  3:21,  2 users,  load average: 0.18, 0.22, 0.24

--- Logged In Users ---
user1  pts/0        2024-06-04 10:25 (:0)

--- Total CPU Usage ---
CPU Usage: 17.4%

--- Memory Usage ---
Used: 1.8Gi | Free: 830Mi | Total: 3.7Gi | Usage: 48.65%

--- Disk Usage ---
Used: 8.4G | Free: 12G | Total: 20G | Usage: 42%

--- Top 5 Processes by CPU Usage ---
  PID COMMAND         %CPU %MEM
 1331 apache2         7.2  1.5
 1302 mysqld          5.8  2.1
 1655 php-fpm         3.9  1.8
 ...

--- Failed Login Attempts ---
Jun 04 09:10:55 sshd[1023]: Failed password for invalid user admin from 192.168.1.10 port 58762 ssh2
...
```

---

## 📂 File Structure

```
.
├── server-stats.sh    # Main script
└── README.md          # This file
```

---

## 📝 License

This project is licensed under the MIT License.
Feel free to use, modify, and distribute it.

---

## 🙋‍♂️ Contributing

Pull requests and suggestions are welcome!
If you find a bug or want to add a new feature, feel free to [open an issue](https://github.com/) or submit a PR.
https://roadmap.sh/projects/server-stats
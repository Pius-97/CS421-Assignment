# CS421 Assignment 1 – API Development & Deployment

A **Spring Boot** REST API with a **PostgreSQL** backend, deployed on an **AWS EC2 Ubuntu instance** with **Nginx** as a reverse proxy.

---

## 📌 Features

- `GET /students` → Retrieves a list of student data.
- `GET /subjects` → Retrieves available Software Engineering subjects.

---
## Access Live API Endpoints

- `/students` : [http://34.227.56.110:4300/api/students/get-all-students](http://34.227.56.110:4300/api/students/get-all-students)
- `/subjects` : [http://34.227.56.110:4300/api/students/get-subjects-by-program](http://34.227.56.110:4300/api/students/get-subjects-by-program)

---

## 🛠️ Technologies Used

- **Backend:** Spring Boot (Java)
- **Database:** PostgreSQL
- **Deployment:** AWS EC2 (Ubuntu), Nginx
- **Version Control:** Git, GitHub

---

## ⚙️ Setup Instructions

1. **Install Requirements**
   - Java 17+
   - PostgreSQL database

2. **Clone the Repository**
   ```bash
   git clone https://github.com/Pius-97/CS421-Assignment.git
   cd CS421-Assignment
   ```

3. **Configure Database**
   - Open `src/main/resources/application.properties`
   - Set your PostgreSQL database credentials:
     ```
     spring.datasource.url=jdbc:postgresql://localhost:5432/your_database
     spring.datasource.username=your_username
     spring.datasource.password=your_password
     ```

4. **Run the Application**
   ```bash
   mvn spring-boot:run
   ```

---

## 🚀 Deployment Overview

- Hosted on an **AWS EC2 Ubuntu instance**
- **Nginx** configured as a reverse proxy to forward requests to the Spring Boot application
- **PostgreSQL** database running on the same EC2 instance or a separate managed service
- Server management and API health handled via custom **Bash scripts** and **cron jobs**

---

## 📂 Bash Scripts for Server Management

| Script             | Purpose                                                                |
|:------------------|:-----------------------------------------------------------------------|
| `health_check.sh`  | Monitors system health and the API's status, logging results to `/var/log/server_health.log`. |
| `backup_api.sh`    | Creates backups of project files and the PostgreSQL database, stored in `/home/ubuntu/backups`. Old backups are automatically removed. |
| `update_server.sh` | Updates the server with the latest security patches, pulls the latest repository changes, and restarts necessary services. Logs to `/var/log/update.log`. |

---

## 🧪 Running the Scripts

```bash
chmod +x script_name.sh      # Grant executable permissions
./script_name.sh             # Execute the script
```

---

## ⏲️ Cron Job Configuration

To ensure these scripts run at the correct intervals, the following cron jobs are set up:

```
# Run health check every 6 hours
0 */6 * * * /home/ubuntu/health_check.sh

# Run backup daily at 2 AM
0 2 * * * /home/ubuntu/backup_api.sh

# Run server update every 3 days at 3 AM
0 3 */3 * * * /home/ubuntu/update_server.sh
```

---

## 🧠 Backup Strategies

The project implements the following backup types to ensure data integrity:

| Type        | Description                                                                 |
|:------------|:----------------------------------------------------------------------------|
| Full        | Backups everything. ✅ Reliable recovery, ❌ Uses more storage.               |
| Incremental | Backups only changes since the last backup. ✅ Efficient, ❌ Slower restore.  |
| Differential| Backups changes since the last full backup. ⚖️ Good balance between speed and recovery time. |

---

## 🧑‍💻 Dependencies

- `curl` (used by `health_check.sh` to check API endpoints)
- `pg_dump` (used by `backup_api.sh` to backup the PostgreSQL database)
- `cron` (used to schedule the scripts)

---

## 📌 Author

**Pius-97** | University of Dodoma  
CS421 – Application Deployment and Management

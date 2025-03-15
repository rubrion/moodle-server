# Moodle Server

This repository contains configuration files and setup scripts for our Moodle server.

## File Structure

- **config.php**: Moodle configuration file (remove sensitive info before use)
- **nginx.conf**: Nginx configuration file for Moodle
- **php.ini**: PHP configuration snippet (e.g., max_input_vars setting)
- **moodle-cron**: Cron job file for running Moodle cron
- **setup-server.sh**: Bash script to set up the server environment
- **docker-compose.yml**: (Optional) Docker Compose file for containerized setup
- **.gitignore**: Excludes sensitive files like moodledata, database dumps, etc.
- **README.md**: This file

## How to Use

1. **Clone this repository**:
   \`\`\`
   git clone https://github.com/rubrion/moodle-server.git
   \`\`\`

2. **Review and update the configuration files** (remove sensitive data from config.php).

3. **Run the setup script** on your server:
   \`\`\`
   cd moodle-server
   ./setup-server.sh
   \`\`\`
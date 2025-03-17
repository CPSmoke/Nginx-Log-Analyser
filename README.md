## Nginx-Log-Analyser
https://roadmap.sh/projects/nginx-log-analyser
## Instructions for Using
1. Clone the Repository
First, you need to clone the repository containing your script:

    ```bash
    git clone <URL_of_your_repository>
    cd <repository_folder>
Replace <URL_of_your_repository> with the link to your GitHub repository.

2. Make the File Executable
Now, you need to make the file executable using the following command:

    ```bash
    chmod +x nginx-log-analyser-awk.sh
    chmod +x nginx-log-analyser-grep-sed.sh
    chmod +x nginx-log-analyser-cut.sh
5. Run the Script
Now you can run the script by passing it the path to the log file. For example:

    ```bash
    ./nginx-log-analyser-awk.sh access.log

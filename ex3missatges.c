#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    openlog(NULL, 0, LOG_USER);

    syslog(LOG_INFO, "MORTACCI TUA!!!");
	
    closelog();
    return 0;
}

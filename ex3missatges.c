#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    openlog("Pràctica 3 AMSA 20-21", 0, LOG_USER);

    syslog(LOG_INFO, "Missatge 1: :)");
    syslog(LOG_INFO, "Missatge 2: :(");
    syslog(LOG_INFO, "Missatge 3: >:)");
	
    closelog();
    return 0;
}

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    const char *dev = (argc > 1) ? argv[1] : "/dev/rpmsg0";
    const char *msg = (argc > 2) ? argv[2] : "hello from rpmsgclientsample\n";
    int fd;
    ssize_t written;

    fd = open(dev, O_RDWR | O_NONBLOCK);
    if (fd < 0) {
        fprintf(stderr, "open(%s) failed: %s\n", dev, strerror(errno));
        return 1;
    }

    written = write(fd, msg, strlen(msg));
    if (written < 0) {
        fprintf(stderr, "write(%s) failed: %s\n", dev, strerror(errno));
        close(fd);
        return 1;
    }

    printf("sent %zd bytes to %s\n", written, dev);
    close(fd);
    return 0;
}

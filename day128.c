// Print the UTC start of the 128th day of 2015 using the local timezone.
#include <stdio.h>
#include <time.h>

int main()  {
	struct tm jan1 = {
		.tm_mon = 0,
	   	.tm_mday = 1,
	   	.tm_year = 115,
	   	.tm_isdst = -1
	};
	const int seconds_per_day = 60 * 60 * 24;
	time_t day128 = timegm(&jan1) + 127 * seconds_per_day;
	printf("%s", ctime(&day128));
}

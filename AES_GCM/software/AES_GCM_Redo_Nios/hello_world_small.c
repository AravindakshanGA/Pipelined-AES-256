#include "sys/alt_stdio.h"

#include "io.h"
#include "system.h"
#include "stdio.h"
#include "time.h"

void send_word_data (int * arr) {
	unsigned int arr_iter, status;
	for(arr_iter = 0; arr_iter < 4; arr_iter++){
		IOWR(REG32_AVALON_INTERFACE_0_BASE , 3, *(arr+arr_iter));
		printf("%x , ",*(arr+arr_iter));
		usleep(1000000);
	}
	printf("\n=====SEND COMMAND WORD========\n") ;
	IOWR(REG32_AVALON_INTERFACE_0_BASE , 1, 1);
	usleep(1000000);

	printf("=====WAIT FOR SETUP========\n") ;
	do {
		status = (int)  IORD(REG32_AVALON_INTERFACE_0_BASE,2);
		usleep(1000000);
	} while ( status == 0 );

	printf("=====RESET STATUS========\n") ;
	IOWR(REG32_AVALON_INTERFACE_0_BASE , 2, 0);
	usleep(1000000);
}

void read_word_data (int * recv_arr, int command_number) {
	unsigned int arr_iter, status, recvd_data;

	printf("\n=====SEND READ_DATA WORD========\n") ;
	IOWR(REG32_AVALON_INTERFACE_0_BASE , 1, command_number);
	usleep(1000000);

	printf("=====WAIT FOR SETUP========\n") ;
	do {
		status = (int)  IORD(REG32_AVALON_INTERFACE_0_BASE,2);
		usleep(1000000);
	} while ( status != 1 );

	printf("=====RESET STATUS========\n") ;
	IOWR(REG32_AVALON_INTERFACE_0_BASE , 2, 0);
	usleep(1000000);

	for(arr_iter = 4; arr_iter < 8; arr_iter++){
		recvd_data = (int) IORD(REG32_AVALON_INTERFACE_0_BASE, arr_iter);
		usleep(1000000);
		printf("%x , ", recvd_data);
		*(recv_arr+arr_iter-4) = recvd_data;
	}
}

int main() {
    int cipher_key[8] = {0xfeffe992, 0x8665731c, 0x6d6a8f94, 0x67308308,
    						0xfeffe992, 0x8665731c, 0x6d6a8f94, 0x67308308} ;
    int plain_text[16] = {0xd9313225, 0xf88406e5, 0xa55909c5, 0xaff5269a,
    						0x86a7a953, 0x1534f7da, 0x2e4c303d, 0x8a318a72,
							0x1c3c0c95, 0x95680953, 0x2fcf0e24, 0x49a6b525,
							0xb16aedf5, 0xaa0de657, 0xba637b39, 0x00000000} ;
    int aad_data [8] = {0xfeedface, 0xdeadbeef, 0xfeedface, 0xdeadbeef,
    						0xabaddad2, 0x00000000, 0x00000000, 0x00000000};
    int IV [4] = {0xcafebabe, 0xfacedbad, 0xdecaf888, 0x00000000};
    int size_word [4] = {0x00000000, 0x000000a0, 0x00000000,0x000001e0};
    int output_text[16];
    int tag_value [4];

    printf("\n====SEND CIPHER KEY - 1=====\n") ;
    send_word_data(&cipher_key[0]);

    printf("\n====SEND CIPHER KEY - 2=====\n") ;
    send_word_data(&cipher_key[4]);

//    printf("\n====IV=====\n") ;
//    send_word_data(IV);
//
//    printf("\n====SIZE WORD=====\n") ;
//    send_word_data(size_word);
//
//    printf("\n====AAD - 1=====\n") ;
//    send_word_data(&aad_data[0]);
//
//    printf("\n====AAD - 2=====\n") ;
//    send_word_data(&aad_data[4]);

    printf("\n====SEND PLAIN TEXT - 1=====\n") ;
    send_word_data(&plain_text[0]);

	printf("\n====SEND PLAIN TEXT - 2=====\n") ;
	send_word_data(&plain_text[4]);

	printf("\n====SEND PLAIN TEXT - 3=====\n") ;
	send_word_data(&plain_text[8]);

	printf("\n====SEND PLAIN TEXT - 4=====\n") ;
	send_word_data(&plain_text[12]);

	printf("\n=====SEND START SIGNAL========\n") ;
	IOWR(REG32_AVALON_INTERFACE_0_BASE , 1, 3);
	usleep(1000000);

	printf("\n====READ CIPHER TEXT - 1=====\n") ;
	read_word_data(&output_text[0], 2);

	printf("\n====READ CIPHER TEXT - 2=====\n") ;
	read_word_data(&output_text[4], 2);

	printf("\n====READ CIPHER TEXT - 3=====\n") ;
	read_word_data(&output_text[8], 2);

	printf("\n====READ CIPHER TEXT - 4=====\n") ;
	read_word_data(&output_text[12], 2);

	printf("\n====READ TAG=====\n") ;
	read_word_data(&tag_value[0], 3);

    while (1) ; return 0;
}

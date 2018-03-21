#include "isogram.h"
#include <string.h>

bool is_isogram(const char phrase[]){

	int l = strlen(phrase);
	for(int i=0;i<l;i++){

		for(int j=i+1;j<l;j++){

			if(phrase[i]==phrase[j])
			{
				return false;
			}
		}
	}

	return true;
}
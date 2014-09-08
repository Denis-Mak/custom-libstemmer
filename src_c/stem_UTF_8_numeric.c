#include "../runtime/header.h"

#ifdef __cplusplus
extern "C" {
#endif
extern int numeric_UTF_8_stem(struct SN_env * z){
    int i;
    //Check if the word have letters i.e. it isn't a number
    for(i = 0; i < z->l; i++){
        int charCode = z->p[i];
        if (charCode < 0x20 || charCode > 0x3F){
            return 0;
        }
    }
    
    //If it is a number replace all digits with '#'
    for(i = 0; i < z->l; i++){
        int charCode = z->p[i];
        if (charCode >= 0x30 && charCode <= 0x39){
            z->p[i] = '#';
        }
    }
    return 1;
}

extern struct SN_env * numeric_UTF_8_create_env(void) { return SN_create_env(0, 3, 0); }

extern void numeric_UTF_8_close_env(struct SN_env * z) { SN_close_env(z, 0); }

#ifdef __cplusplus
}
#endif

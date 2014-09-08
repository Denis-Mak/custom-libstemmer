/* 
 * File:   stem_UTF_numeric.h
 * Author: denis_000
 *
 * Created on September 5, 2014, 10:36 AM
 */

#ifndef STEM_UTF_NUMERIC_H
#define	STEM_UTF_NUMERIC_H

#ifdef	__cplusplus
extern "C" {
#endif

extern struct SN_env * numeric_UTF_8_create_env(void);
extern void numeric_UTF_8_close_env(struct SN_env * z);

extern int numeric_UTF_8_stem(struct SN_env * z);


#ifdef	__cplusplus
}
#endif

#endif	/* STEM_UTF_NUMERIC_H */


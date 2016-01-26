/*
 * Copyright (C) 2001 Peter Harris <peter.harris@hummingbird.com>
 * Copyright (C) 2001 Edmund Grimley Evans <edmundo@rano.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/*
 * Convert a string between UTF-8 and the locale's charset.
 */

#include <stdlib.h>
#include <string.h>

#include "utf8.h"


	/* Thanks to Peter Harris <peter.harris@hummingbird.com> for this win32
	 * code.
	 */

#include <stdio.h>

#ifdef _WIN32
#include <windows.h>
#endif

static unsigned char *make_utf8_string(const wchar_t *unicode)
{
    int size = 0, index = 0, out_index = 0;
    unsigned char *out;
    unsigned short c;

    /* first calculate the size of the target string */
    c = unicode[index++];
    while(c) {
        if(c < 0x0080) {
            size += 1;
        } else if(c < 0x0800) {
            size += 2;
        } else {
            size += 3;
        }
        c = unicode[index++];
    }	

    out = (unsigned char*)malloc(size + 1);
    if (out == NULL)
        return NULL;
    index = 0;

    c = unicode[index++];
    while(c)
    {
        if(c < 0x080) {
            out[out_index++] = (unsigned char)c;
        } else if(c < 0x800) {
            out[out_index++] = 0xc0 | (c >> 6);
            out[out_index++] = 0x80 | (c & 0x3f);
        } else {
            out[out_index++] = 0xe0 | (c >> 12);
            out[out_index++] = 0x80 | ((c >> 6) & 0x3f);
            out[out_index++] = 0x80 | (c & 0x3f);
        }
        c = unicode[index++];
    }
    out[out_index] = 0x00;

    return out;
}

static wchar_t *make_unicode_string(const unsigned char *utf8)
{
    int size = 0, index = 0, out_index = 0;
    wchar_t *out;
    unsigned char c;

    /* first calculate the size of the target string */
    c = utf8[index++];
    while(c) {
        if((c & 0x80) == 0) {
            index += 0;
        } else if((c & 0xe0) == 0xe0) {
            index += 2;
        } else {
            index += 1;
        }
        size += 1;
        c = utf8[index++];
    }	

    out = (wchar_t*)malloc((size + 1) * sizeof(wchar_t));
    if (out == NULL)
        return NULL;
    index = 0;

    c = utf8[index++];
    while(c)
    {
        if((c & 0x80) == 0) {
            out[out_index++] = c;
        } else if((c & 0xe0) == 0xe0) {
            out[out_index] = (c & 0x1F) << 12;
	        c = utf8[index++];
            out[out_index] |= (c & 0x3F) << 6;
	        c = utf8[index++];
            out[out_index++] |= (c & 0x3F);
        } else {
            out[out_index] = (c & 0x3F) << 6;
	        c = utf8[index++];
            out[out_index++] |= (c & 0x3F);
        }
        c = utf8[index++];
    }
    out[out_index] = 0;

    return out;
}

#ifndef _WIN32
int utf8_encode(const char *from, char **to)
{
	wchar_t unicode[4096];

	mbstowcs( unicode, from, sizeof(unicode) / sizeof(unicode[0]) );

	/* On NT-based windows systems, we could use WideCharToMultiByte(), but 
	 * MS doesn't actually have a consistent API across win32.
	 */
	*to = (char*)make_utf8_string(unicode);

	return 0;
}
#else
int utf8_encode(const char *from, char **to)
{
	wchar_t *unicode;
	int wchars, err;

	wchars = MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, from,
			strlen(from), NULL, 0);

	if(wchars == 0)
	{
		fprintf(stderr, "Unicode translation error %d\n", GetLastError());
		return -1;
	}

	unicode = calloc(wchars + 1, sizeof(unsigned short));
	if(unicode == NULL) 
	{
		fprintf(stderr, "Out of memory processing string to UTF8\n");
		return -1;
	}

	err = MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, from, 
			strlen(from), unicode, wchars);
	if(err != wchars)
	{
		free(unicode);
		fprintf(stderr, "Unicode translation error %d\n", GetLastError());
		return -1;
	}

	/* On NT-based windows systems, we could use WideCharToMultiByte(), but 
	 * MS doesn't actually have a consistent API across win32.
	 */
	*to = make_utf8_string(unicode);

	free(unicode);
	return 0;
}
#endif

#ifndef _WIN32
int utf8_decode(const char *from, char **to)
{
    wchar_t *unicode;

    /* On NT-based windows systems, we could use MultiByteToWideChar(CP_UTF8), but 
     * MS doesn't actually have a consistent API across win32.
     */
    unicode = make_unicode_string((const unsigned char*)from);

	if(unicode == NULL) 
    {
        fprintf(stderr, "Out of memory processing string from UTF8 to UNICODE16\n");
        return -1;
    }

	*to = (char*)malloc( strlen(from)*2 );

	wcstombs( *to, unicode, strlen(from)*2 );

    free(unicode);
    return 0;
}
#else
int utf8_decode(const char *from, char **to)
{
    wchar_t *unicode;
    int chars, err;

    /* On NT-based windows systems, we could use MultiByteToWideChar(CP_UTF8), but 
     * MS doesn't actually have a consistent API across win32.
     */
    unicode = make_unicode_string(from);
    if(unicode == NULL) 
    {
        fprintf(stderr, "Out of memory processing string from UTF8 to UNICODE16\n");
        return -1;
    }

    chars = WideCharToMultiByte(CP_ACP, WC_COMPOSITECHECK, unicode,
            -1, NULL, 0, NULL, NULL);

    if(chars == 0)
    {
        fprintf(stderr, "Unicode translation error %d\n", GetLastError());
        free(unicode);
        return -1;
    }

    *to = calloc(chars + 1, sizeof(unsigned char));
    if(*to == NULL) 
    {
        fprintf(stderr, "Out of memory processing string to local charset\n");
        free(unicode);
        return -1;
    }

    err = WideCharToMultiByte(CP_ACP, WC_COMPOSITECHECK, unicode, 
            -1, *to, chars, NULL, NULL);
    if(err != chars)
    {
        fprintf(stderr, "Unicode translation error %d\n", GetLastError());
        free(unicode);
        free(*to);
        *to = NULL;
        return -1;
    }

    free(unicode);
    return 0;
}
#endif

/* Quick and dirty UTF-8 validation: */


/* check the first "count" bytes of "s" to make
   sure they are all valid UTF-8 "continuation" bytes */
static int checknext(const char *s, int count)
{
    int i;
    for (i = 0; i < count; i++) {
	if ((s[i] & 0xc0) != 0x80)
	    return 0;
    }
    return 1;
}

static struct {
    char mask;
    char value;
    unsigned after;
} test[] = {
    { 0x80,    0, 0 }, /* 7-bit ASCII - One byte sequence */
    { 0xe0, 0xc0, 1 }, /* Two byte sequence */
    { 0xf0, 0xe0, 2 }, /* Three byte sequence */
    { 0xf8, 0xf0, 3 }, /* Four byte sequence */
    { 0xfc, 0xf8, 4 }, /* Five byte sequence */
    { 0xfe, 0xfc, 5 }, /* Six byte sequence */
    /* All other values are not valid UTF-8 */
};

#define NUM_TESTS (sizeof(test)/sizeof(test[0]))

/* Returns true if the C-string is a valid UTF-8 sequence
   Returns false otherwise */
int utf8_validate(const char *s)
{
    size_t len = strlen(s);

    while (len) {
	int i;
	for (i = 0; i < NUM_TESTS; i++) {
	    if ((s[0] & test[i].mask) == test[i].value) {
		unsigned after = test[i].after;

		if (len < after + 1)
		    return 0;

		if (!checknext(s+1, after))
		    return 0;

		s += after + 1;
		len -= after + 1;
		goto next;
	    }
	}
	/* If none of the tests match, invalid UTF-8 */
	return 0;
next:   ;
    }

    /* Zero bytes left, and all test pass. Valid UTF-8. */
    return 1;
}

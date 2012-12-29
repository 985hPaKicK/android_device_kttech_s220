/*
 * Copyright (C) 2011 CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <hardware_legacy/vibrator.h>
#include "qemu.h"

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>

#define LOG_TAG "VibratorHW"
#include "cutils/log.h"
#include <sys/ioctl.h>
#include "tspdrv.h"

#define TSPDRV_DEVICE "/dev/tspdrv"

int vibrator_exists()
{
    return 1;
}

int sendit(int timeout_ms)
{
    int ret, tspd, tspret;
    char value[20];

    tspd = open(TSPDRV_DEVICE, O_RDWR);
    if(tspd < 0) {
        ALOGE("failed on opening /dev/tspdrv\n");
        close(tspd);
	return -1;
    } else {
        ALOGV("opened device /dev/tspdrv\n");
    }

    if(timeout_ms > 0) {
        /* enable tspdrv amp */
        tspret = ioctl(tspd, TSPDRV_ENABLE_AMP, 1);
        if(tspret != 0) {
            ALOGE("TSPDRV_ENABLE_AMP error\n");
        } else {
            ALOGV("TSPDRV_ENABLE_AMP success\n");
        }
    }

    ALOGV("timeout_ms: %d\n", timeout_ms);

    if(timeout_ms == 0) {
        /* disable tspdrv amp */
        tspret = ioctl(tspd, TSPDRV_DISABLE_AMP, 1);
        if(tspret != 0) {
            ALOGE("TSPDRV_DISABLE_AMP error\n");
        } else {
            ALOGV("TSPDRV_DISABLE_AMP success\n");
        }
    }

    close(tspd);

    return 0;
}

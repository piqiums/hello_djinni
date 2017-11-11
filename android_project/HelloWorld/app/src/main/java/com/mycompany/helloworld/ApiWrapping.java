package com.mycompany.helloworld;

import android.telephony.TelephonyManager;
import android.content.Context;

public class ApiWrapping {

    public static String getDeviceId(Context context) {
        TelephonyManager telephonyManager;
        telephonyManager = ( TelephonyManager )context.getSystemService( Context.TELEPHONY_SERVICE );
        return telephonyManager.getDeviceId();
    }
}

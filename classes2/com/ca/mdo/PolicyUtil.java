package com.ca.mdo;

import android.content.Context;

public class PolicyUtil {
  public static String mProfileUrl;
  
  private static PolicyManager policyManager;
  
  public static boolean refreshPolicy = false;
  
  private static PolicyManager getNewPolicy(Context paramContext) {
    policyManager = new PolicyManager(paramContext, mProfileUrl);
    policyManager.init();
    return policyManager;
  }
  
  public static PolicyManager getPolicyManager(Context paramContext) {
    if (refreshPolicy) {
      policyManager = getNewPolicy(paramContext);
      return policyManager;
    } 
    if (policyManager == null)
      policyManager = new PolicyManager(paramContext, mProfileUrl); 
    return policyManager;
  }
  
  public static void refreshPolicy() {
    refreshPolicy = true;
    getPolicyManager((Context)SDK.getApp());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\PolicyUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
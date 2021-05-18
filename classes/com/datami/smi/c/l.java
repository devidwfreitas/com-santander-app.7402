package com.datami.smi.c;

public final class l {
  private static final byte[] B = new byte[] { 
      89, 82, 85, -98, -2, 1, 3, -12, 3, 0, 
      7, 2, -17, 21, -2, -3, 5, -10, 5, -15, 
      2, -6, 14, -13, -4, 13, 6, -2, -14, -12, 
      -6, 7, -6, 2, -7, -10, 3, -14, -1, 11, 
      -13, 17, -19, 5, -3, 0, -2, -10, 4, -6, 
      10, -10, 15, -10, 15, -5, -5, -10, 16, -12, 
      -7, 17, -13, -7, 14, 2, -18, 3, 13, 1, 
      -12, 3, 0, 7, 2, -17, 5, -3, 3, -1, 
      11, 6, -6, -7, 7, -18, 11, 9, -22, 12, 
      5, 7, -5, 7, -9, 13, -1, -10, 7, 1, 
      -1, -11, 4, -3, -10, 12, 8, -9, -6, 3, 
      14, -12, 4, -5, 7, 2, 14, 6, -20, 5, 
      5, 10, 0, 0, 12, 5, -1, -17, 13, 6, 
      -2, 6, -20, 14, -14, 0, 10, -6, 1, 15, 
      -22, 3, 6, 3, 17, -12, 2, -9, 9, -13, 
      17, -11 };
  
  private static int C = 202;
  
  public static final String a = "services";
  
  public static final String b = "mgmt";
  
  public static final String c = "use_sni";
  
  public static final String d = "secured";
  
  public static final String e = "gd";
  
  public static final String f = "oms";
  
  public static final String g = "uram";
  
  public static final String h = "aacmi";
  
  public static final String i = "rtsp";
  
  public static final String j = "collector";
  
  public static final String k = "mcc";
  
  public static final String l = "mnc";
  
  public static final String m = "deployment";
  
  public static final String n = "country";
  
  public static final String o = "ping";
  
  public static final String p = "dr";
  
  public static final String q = "msisdn_discovery";
  
  public static final String r = "enabled";
  
  public static final String s = "device_session_url";
  
  public static final String t = "general";
  
  public static final String u = "collect_ad_ids";
  
  public static final String v = "hash_uid";
  
  public static final String w = "uuid";
  
  public static final String x = "roaming";
  
  public static final String y = "isp";
  
  public static final String z = "operator";
  
  private l(e parame) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = 117 - paramInt2;
    byte[] arrayOfByte1 = B;
    paramInt1 += 4;
    int k = 18 - paramInt3;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      j = paramInt1;
      paramInt3 = paramInt1;
    } else {
      paramInt3 = 0;
      paramInt2 = i;
      j = paramInt3 + 1;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
    } 
    paramInt1 = j + 1;
    i += -paramInt3;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int j = paramInt3 + 1;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
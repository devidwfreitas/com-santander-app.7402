package com.datami.smi.d;

import android.os.Build;
import com.datami.smi.b.m;
import com.datami.smi.c.e;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a {
  public static final String a = "1.0";
  
  public static final String b = "[dmi]EventRegisterService";
  
  public static final String c = "[dmi]SmiSdkTimers";
  
  public static final String d = "SdApp";
  
  private static final byte[] k = new byte[] { 
      42, -86, -74, -98, 32, 4, 10, 8, 15, -2, 
      22, 7, -8, 14, 8, 24, -6, 1, 9, -2, 
      22, 10, 33, 3, -15, 24, 14, -54, 76, -8, 
      14, -31, 56, -10, 16, 13, 6, -76, -7, 24, 
      19, 5, 10, 6, 6, -2, 16, 13, 24, 14, 
      -21, 5, 45, 24, -10, 16, 13, -41, 40, 22, 
      -12, 15, 10, 14, 23, -7, 20, 11, -6, 1, 
      9, -4, 11, -1, 19, 6, 7, 12, -2, -4, 
      9, -4, 8, 14, 2, 24, -28, 54, 7, 44, 
      10, -6, 6, 18, -33, 44, 17, -9, 19, 14, 
      -10, 20, 14, 39, 9, 17, 3, 16, 16, 3, 
      -5, -3, 33, 3, -15, 24, 14, -16, 28, 11, 
      -1, 20, 8, 22, 2, 2, 3, 1, 16, 36, 
      -10, 19, 4, 26, -12, 56, -10, 16, 13, -27, 
      26, 9, 9, 17, 8, -8, 20, -3, 7, 17, 
      8, -4, -10, 20, 24, 14, -35, 52, -6, 18, 
      20, 2, -4, 1, 23, 33, 3, -15, 24, 14, 
      -54, 62, 24, -10, 16, 13, 6, -76, 4, 9, 
      4, 3, 10, 8, 20, 16, 16, 3, -5, -17, 
      56, -10, 16, 13, -27, 26, 9, 9, 17, 8, 
      -8, 20, -24, 25, 20, 11, -6, 1, 9, -5, 
      17, 1, 8 };
  
  private static int l = 171;
  
  private String e = "";
  
  private String f = "";
  
  private HashMap g;
  
  private String h = "";
  
  private String i = "";
  
  private boolean j = true;
  
  public a(String paramString1, String paramString2, HashMap paramHashMap, String paramString3) {
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramHashMap;
    this.h = paramString3;
  }
  
  public a(String paramString1, String paramString2, HashMap paramHashMap, String paramString3, String paramString4, boolean paramBoolean) {
    this.e = paramString1;
    this.g = paramHashMap;
    this.f = paramString2;
    this.h = paramString3;
    this.i = paramString4;
    this.j = paramBoolean;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 += 48;
    int k = paramInt1 + 1;
    byte[] arrayOfByte1 = k;
    paramInt1 = 212 - paramInt2;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      i = paramInt1;
      j = paramInt1;
    } else {
      paramInt2 = paramInt3;
      paramInt3 = 0;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
      i = paramInt3 + 1;
    } 
    int j = paramInt3 + j - 7;
    paramInt1 = i + 1;
    paramInt3 = paramInt2;
    paramInt2 = j;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
    int i = paramInt3 + 1;
  }
  
  public static String a(c paramc) {
    switch (b.b[paramc.ordinal()]) {
      default:
        i = k[17] - 1;
        return a(i, i | 0xC8, k[17] - 1);
      case 1:
        i = k[17] - 1;
        return a(i, i | 0xC8, k[84]);
      case 2:
        i = k[17] - 1;
        return a(i, i | 0xC8, k[5]);
      case 3:
        break;
    } 
    int i = k[17] - 1;
    return a(i, i | 0xC8, k[41]);
  }
  
  public static String a(d paramd) {
    byte b;
    switch (b.a[paramd.ordinal()]) {
      default:
        return a(k[36], 208, k[129] + 1);
      case 1:
        return a(k[13], 123, k[64]);
      case 2:
        b = k[23];
        return a(b, b | 0x50, k[129] + 1);
      case 3:
        b = k[5];
        return a(b, b | 0x69, k[96]);
      case 4:
        b = k[77];
        return a(b, b | 0x41, -k[50]);
      case 5:
        return a(k[84], 89, k[10]);
      case 6:
        return a(k[17], 148, k[64]);
      case 7:
        return a(k[41], 164, -k[156]);
      case 8:
        break;
    } 
    return a(k[67], 58, -k[156]);
  }
  
  public static JSONObject a() {
    JSONObject jSONObject2 = new JSONObject();
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject3 = new JSONObject();
    jSONObject3.put(a(k[17], l & 0x3C0, k[32] + 1), e.b);
    byte b = k[84];
    jSONObject1.put(a(b, b | 0xC8, 49), jSONObject3);
    jSONObject3 = new JSONObject();
    b = k[17];
    int i = b - 1;
    jSONObject3.put(a(b, i, i | 0x3F), e.d);
    jSONObject3.put(a(k[41], 65, 61), e.c);
    jSONObject1.put(a(k[23], 193, k[171]), jSONObject3);
    jSONObject3 = new JSONObject();
    jSONObject3.put(a(k[17], l & 0x3C0, k[32] + 1), e.e);
    b = k[23];
    jSONObject3.put(a(b, b, k[171] - 1), Build.MANUFACTURER);
    b = k[5];
    jSONObject3.put(a(b, b | 0x80, k[171] - 1), Build.MODEL);
    jSONObject1.put(a(k[41], 198, k[157]), jSONObject3);
    jSONObject2.put(a(k[41], k[4], k[32]), jSONObject1);
    JSONArray jSONArray = new JSONArray();
    a(k[15], -k[139], l & 0x7F);
    StringBuilder stringBuilder = new StringBuilder();
    b = k[34];
    stringBuilder.append(a(b, b | 0xAE, -k[156])).append(m.i);
    for (a a1 : m.i) {
      JSONObject jSONObject4 = new JSONObject();
      String str = a(k[84], 60, 70);
      b = k[84];
      jSONObject4.put(str, a(b, b | 0x20, k[17]));
      str = a(k[36], 147, 67);
      b = k[5];
      jSONObject4.put(str, a(b, b | 0x7B, -k[156]));
      b = k[7];
      jSONObject4.put(a(b, b | 0xA4, k[157] - 1), a(k[84], 200, 67));
      b = k[23];
      jSONObject4.put(a(b, b | 0x84, 68), a1.f);
      jSONObject4.put(a(k[23], 141, 68), a1.e);
      JSONObject jSONObject5 = new JSONObject();
      if (a1.g != null) {
        JSONArray jSONArray1 = new JSONArray();
        HashMap hashMap = a1.g;
        b = k[84];
        if (hashMap.containsKey(a(b, b | 0xAC, 67))) {
          b = k[84];
          String str1 = a(b, b | 0xAC, 67);
          b = k[84];
          jSONObject4.put(str1, hashMap.get(a(b, b | 0xAC, 67)));
          b = k[84];
          hashMap.remove(a(b, b | 0xAC, 67));
        } 
        for (String str1 : hashMap.keySet()) {
          JSONObject jSONObject = new JSONObject();
          int j = k[17] - 1;
          jSONObject.put(a(j, j | 0xAC, k[171]), str1);
          j = k[17] - 1;
          jSONObject.put(a(j, j | 0xA4, 70), hashMap.get(str1));
          jSONArray1.put(jSONObject);
        } 
        b = k[67];
        jSONObject5.put(a(b, b | 0x94, k[87] - 1), jSONArray1);
      } 
      if (!a1.h.isEmpty()) {
        b = k[5];
        i = b | 0x53;
        jSONObject5.put(a(b, i, i & 0x1EC), a1.h);
      } else {
        String str1;
        String str2 = a(k[23], l & 0x3DE, k[157] - 1);
        if (a1.j) {
          int j = k[17] - 1;
          str1 = a(j, j | 0xA4, 71);
        } else {
          int j = k[17] - 1;
          str1 = a(j, j | 0xAE, k[157] - 1);
        } 
        jSONObject5.put(str2, str1);
      } 
      jSONObject4.put(a(k[23], 80, k[157]), jSONObject5);
      jSONArray.put(jSONObject4);
      jSONObject2.put(a(k[23], 80, k[157]), jSONArray);
    } 
    return jSONObject2;
  }
  
  public static JSONObject b() {
    JSONObject jSONObject2 = new JSONObject();
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject3 = new JSONObject();
    jSONObject3.put(a(k[17], l & 0x3C0, k[32] + 1), e.b);
    byte b = k[84];
    jSONObject1.put(a(b, b | 0xC8, 49), jSONObject3);
    jSONObject3 = new JSONObject();
    b = k[17];
    int i = b - 1;
    jSONObject3.put(a(b, i, i | 0x3F), e.d);
    jSONObject3.put(a(k[41], 65, 61), e.c);
    jSONObject1.put(a(k[23], 193, k[171]), jSONObject3);
    jSONObject3 = new JSONObject();
    jSONObject3.put(a(k[17], l & 0x3C0, k[32] + 1), e.e);
    b = k[23];
    jSONObject3.put(a(b, b, k[171] - 1), Build.MANUFACTURER);
    b = k[5];
    jSONObject3.put(a(b, b | 0x80, k[171] - 1), Build.MODEL);
    jSONObject1.put(a(k[41], 198, k[157]), jSONObject3);
    jSONObject2.put(a(k[41], k[4], k[32]), jSONObject1);
    JSONArray jSONArray = new JSONArray();
    a(k[15], -k[139], l & 0x7F);
    StringBuilder stringBuilder = new StringBuilder();
    b = k[35];
    stringBuilder.append(a(b, b | 0x22, -k[156])).append(m.h);
    for (a a1 : m.h) {
      JSONObject jSONObject4 = new JSONObject();
      String str = a(k[84], 60, 70);
      b = k[84];
      jSONObject4.put(str, a(b, b | 0x20, k[17]));
      str = a(k[36], 147, 67);
      b = k[5];
      jSONObject4.put(str, a(b, b | 0x7B, -k[156]));
      b = k[7];
      str = a(b, b | 0xA4, k[157] - 1);
      b = k[84];
      jSONObject4.put(str, a(b, b | 0xC8, 49));
      b = k[23];
      jSONObject4.put(a(b, b | 0x84, 68), a1.f);
      jSONObject4.put(a(k[23], 141, 68), a1.e);
      b = k[84];
      jSONObject4.put(a(b, b | 0xAC, 67), a(c.a));
      JSONObject jSONObject5 = new JSONObject();
      if (a1.g != null) {
        JSONArray jSONArray1 = new JSONArray();
        HashMap hashMap = a1.g;
        for (String str1 : hashMap.keySet()) {
          JSONObject jSONObject = new JSONObject();
          int j = k[17] - 1;
          jSONObject.put(a(j, j | 0xAC, k[171]), str1);
          j = k[17] - 1;
          jSONObject.put(a(j, j | 0xA4, 70), hashMap.get(str1));
          jSONArray1.put(jSONObject);
        } 
        b = k[67];
        jSONObject5.put(a(b, b | 0x94, k[87] - 1), jSONArray1);
      } 
      if (!a1.h.isEmpty()) {
        b = k[5];
        i = b | 0x53;
        jSONObject5.put(a(b, i, i & 0x1EC), a1.h);
      } else {
        String str1;
        String str2 = a(k[23], l & 0x3DE, k[157] - 1);
        if (a1.j) {
          int j = k[17] - 1;
          str1 = a(j, j | 0xA4, 71);
        } else {
          int j = k[17] - 1;
          str1 = a(j, j | 0xAE, k[157] - 1);
        } 
        jSONObject5.put(str2, str1);
      } 
      jSONObject4.put(a(k[23], 80, k[157]), jSONObject5);
      jSONArray.put(jSONObject4);
      jSONObject2.put(a(k[23], 80, k[157]), jSONArray);
    } 
    return jSONObject2;
  }
  
  private String c() {
    return this.e;
  }
  
  private String d() {
    return this.f;
  }
  
  private HashMap e() {
    return this.g;
  }
  
  private String f() {
    return this.h;
  }
  
  private String g() {
    return this.i;
  }
  
  private boolean h() {
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
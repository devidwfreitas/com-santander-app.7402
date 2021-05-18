package com.datami.smi.c;

import org.json.JSONObject;

public final class n {
  private static final byte[] e = new byte[] { 
      10, -116, -40, 26, 0, 12, -12, 18, -18, 6, 
      -2, 0, 12, 0, -10, 5, -2, -9, 13, 9, 
      -8, -5, 11, 1 };
  
  private static int f = 161;
  
  private String a = "";
  
  private String b = "";
  
  private String c = "";
  
  private String d = "";
  
  public n() {}
  
  public n(JSONObject paramJSONObject) {
    if (paramJSONObject != null) {
      if (paramJSONObject.has(a(e[7], e[4], -e[10])) && !paramJSONObject.isNull(a(e[7], e[4], -e[10])))
        this.a = paramJSONObject.getString(a(e[7], e[4], -e[10])); 
      if (paramJSONObject.has(a(e[9] + 1, e[4], -e[10])) && paramJSONObject.isNull(a(e[9] + 1, e[4], -e[10])))
        this.b = paramJSONObject.getString(a(e[9] + 1, e[4], -e[10])); 
      if (paramJSONObject.has(a(e[4], e[15], e[4])) && !paramJSONObject.isNull(a(e[4], e[15], e[4])))
        this.c = paramJSONObject.getString(a(e[4], e[15], e[4])); 
      byte b = e[19];
      if (paramJSONObject.has(a(b, b - 2, e[22]))) {
        b = e[19];
        if (!paramJSONObject.isNull(a(b, b - 2, e[22]))) {
          b = e[19];
          this.d = paramJSONObject.getString(a(b, b - 2, e[22]));
        } 
      } 
    } 
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt2 + 3;
    byte[] arrayOfByte2 = e;
    paramInt2 = paramInt1 + 4;
    byte[] arrayOfByte1 = new byte[i];
    int k = i - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      i = paramInt2;
      paramInt3 = k;
      j = paramInt2;
    } else {
      paramInt1 = 0;
      i = 111 - paramInt3;
      paramInt3 = paramInt1;
      paramInt1 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
      i = paramInt3 + 1;
    } 
    int j = -j;
    paramInt2 = i + 1;
    i = j + paramInt3 + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
    i = paramInt3 + 1;
  }
  
  private void a(String paramString) {
    this.a = paramString;
  }
  
  private void a(JSONObject paramJSONObject) {
    if (paramJSONObject.has(a(e[7], e[4], -e[10])) && !paramJSONObject.isNull(a(e[7], e[4], -e[10])))
      this.a = paramJSONObject.getString(a(e[7], e[4], -e[10])); 
    if (paramJSONObject.has(a(e[9] + 1, e[4], -e[10])) && paramJSONObject.isNull(a(e[9] + 1, e[4], -e[10])))
      this.b = paramJSONObject.getString(a(e[9] + 1, e[4], -e[10])); 
    if (paramJSONObject.has(a(e[4], e[15], e[4])) && !paramJSONObject.isNull(a(e[4], e[15], e[4])))
      this.c = paramJSONObject.getString(a(e[4], e[15], e[4])); 
    byte b = e[19];
    if (paramJSONObject.has(a(b, b - 2, e[22]))) {
      b = e[19];
      if (!paramJSONObject.isNull(a(b, b - 2, e[22]))) {
        b = e[19];
        this.d = paramJSONObject.getString(a(b, b - 2, e[22]));
      } 
    } 
  }
  
  private void b(String paramString) {
    this.b = paramString;
  }
  
  private void c(String paramString) {
    this.c = paramString;
  }
  
  private String d() {
    return this.d;
  }
  
  private void d(String paramString) {
    this.d = paramString;
  }
  
  public final String a() {
    return this.a;
  }
  
  public final String b() {
    return this.b;
  }
  
  public final String c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
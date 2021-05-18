package com.datami.smi.c;

import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONObject;

public final class o {
  private static final String a = "[dmi]MGMT";
  
  private static final String b = "http://";
  
  private static final String c = "https://";
  
  private static final String d = "://";
  
  private static final byte[] u = new byte[] { 
      124, 4, -24, -29, -25, -13, -9, 41, -2, -13, 
      -22, -22, -9, -1, 3, -7, -19, -20, -25, -10, 
      -13, -6, -11, -30, 8, -15, -16, -8, -23, -8, 
      -28, -11, -19, -13, -15, -23, -9, -25, -13, -9, 
      -19, -3, -23, 2, -23, 2, -18, -18, -23, 3, 
      -25, -20, 4, -26, -20, 1, -11, -31, -10, 0, 
      -12, -25, -10, -13, -6, -11, -30, -8, -16, -25, 
      -13, -9, -16, 44, -2, -13, -10, -25, -13, -9, 
      -16, -6, -31, -2, -4, -35, -1, -8, -6, -18, 
      -6, -22, 0, -14, -23, -6, -12, -64, 8, -15, 
      -24, -17, -2, -19, -12, 65, -39, 13, -11, 1, 
      -7, -33, -8, -8, -14, -30, 0, -7, -15, -7, 
      -33, 1, -27, -13, -3, -19, -12, 2, -35, -10, 
      -7, -2, -13, -10, 4, -25, -11, -22, -4, -26, 
      4, -24 };
  
  private static int v = 3;
  
  private boolean e;
  
  private boolean f;
  
  private boolean g;
  
  private boolean h;
  
  private boolean i;
  
  private boolean j;
  
  private boolean k;
  
  private boolean l;
  
  private boolean m;
  
  private q n;
  
  private boolean o;
  
  private boolean p;
  
  private boolean q;
  
  private boolean r;
  
  private boolean s;
  
  private p t;
  
  public o() {
    g();
  }
  
  public o(JSONObject paramJSONObject) {
    g();
    if (paramJSONObject != null) {
      byte b1 = -u[93];
      byte b2 = u[59];
      if (paramJSONObject.has(a(b1, b2, b2 | 0x47))) {
        boolean bool1;
        this.o = true;
        b1 = -u[93];
        b2 = u[59];
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(b1, b2, b2 | 0x47));
        b1 = u[59];
        int i = b1 + 5;
        String str = a(b1, i, i | 0x62);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.e = bool1;
        b1 = u[43];
        str = a(b1, b1 + 3, 50);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.f = bool1;
      } 
      if (paramJSONObject.has(a(u[59], u[43], 128))) {
        boolean bool1;
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(u[59], u[43], 128));
        b1 = u[43];
        String str = a(b1, b1 + 3, 50);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.g = bool1;
      } 
      if (paramJSONObject.has(a(-u[17], v, -u[30]))) {
        boolean bool1;
        this.p = true;
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[17], v, -u[30]));
        b1 = u[59];
        int i = b1 + 5;
        String str = a(b1, i, i | 0x62);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.h = bool1;
        b1 = u[43];
        str = a(b1, b1 + 3, 50);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.i = bool1;
      } 
      if (paramJSONObject.has(a(-u[46], -u[15], 56))) {
        boolean bool1;
        this.r = true;
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[46], -u[15], 56));
        b1 = u[59];
        int i = b1 + 5;
        String str = a(b1, i, i | 0x62);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.j = bool1;
        b1 = u[43];
        str = a(b1, b1 + 3, 50);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.k = bool1;
      } 
      if (paramJSONObject.has(a(-u[21], u[55], -u[53]))) {
        this.q = true;
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[21], u[55], -u[53]));
        b1 = u[59];
        int i = b1 + 5;
        String str = a(b1, i, i | 0x62);
        if (jSONObject.has(str)) {
          bool1 = jSONObject.getBoolean(str);
        } else {
          bool1 = false;
        } 
        this.l = bool1;
        b1 = u[43];
        str = a(b1, b1 + 3, 50);
        boolean bool1 = bool;
        if (jSONObject.has(str))
          bool1 = jSONObject.getBoolean(str); 
        this.m = bool1;
      } 
      if (paramJSONObject.has(a(-u[93], v + 2, v | 0x80))) {
        JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[93], v + 2, v | 0x80));
        if (jSONObject.has(a(-u[46], -u[60], u[107])))
          this.s = jSONObject.getBoolean(a(-u[46], -u[60], u[107])); 
        if (jSONObject.has(a(u[107], -u[21], 76))) {
          int i = jSONObject.getInt(a(u[107], -u[21], 76));
          if (1 == i) {
            this.t = p.b;
          } else if (2 == i) {
            this.t = p.c;
          } else {
            this.t = p.a;
          } 
        } 
      } 
      if (paramJSONObject.has(a(u[24], -u[93], -u[85]))) {
        paramJSONObject = paramJSONObject.getJSONObject(a(u[24], -u[93], -u[85]));
        boolean bool1 = paramJSONObject.getBoolean(a(-u[26], v + 2, 86));
        int i = v;
        b2 = u[43];
        i = paramJSONObject.getInt(a(i + 2, b2, b2 | 0x51));
        this.n = new q(bool1, paramJSONObject.getString(a(-u[101], -u[26], 109)), this.t, i);
      } 
    } 
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt3 + 4;
    paramInt2 += 2;
    byte[] arrayOfByte2 = u;
    paramInt3 = 117 - paramInt1;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int j = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      paramInt2 = i;
      i = j;
    } else {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      int m = i + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = -paramInt3 + i - 13;
    i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  private static String a(boolean paramBoolean, String paramString) {
    String str2 = null;
    String str1 = str2;
    if (paramString != null) {
      str1 = str2;
      if (!paramString.isEmpty()) {
        str1 = str2;
        if (!paramString.contains(a(v | 0x38, u[55], 126))) {
          if (paramBoolean)
            return new String(a(u[107], -u[21], -u[97]) + paramString); 
        } else {
          return str1;
        } 
      } else {
        return str1;
      } 
    } else {
      return str1;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    byte b = u[107];
    return new String(stringBuilder.append(a(b, b & 0x17, u[13])).append(paramString).toString());
  }
  
  private static String a(boolean paramBoolean, String paramString1, String paramString2) {
    if (paramBoolean) {
      uRL = new URL(a(u[107], v, 72), paramString1, paramString2);
      return uRL.toString();
    } 
    URL uRL = new URL(a(u[107], u[43], 32), (String)uRL, paramString2);
    return uRL.toString();
  }
  
  private static String a(boolean paramBoolean1, boolean paramBoolean2, String paramString) {
    if ((paramString == null || paramString.isEmpty() || paramString.contains(a(v | 0x38, u[55], 126))) && !paramBoolean2)
      return paramString; 
    try {
      URL uRL = new URL(paramString);
      String str1 = uRL.getHost();
      String str2 = uRL.getPath();
      uRL.getQuery();
      if (paramBoolean1) {
        uRL = new URL(a(u[107], v, 72), str1, str2);
        return uRL.toString();
      } 
      uRL = new URL(a(u[107], u[43], 32), str1, str2);
      return uRL.toString();
    } catch (MalformedURLException malformedURLException) {
      paramString = a(paramBoolean1, paramString);
      byte b1 = -u[53];
      byte b2 = -u[15];
      a(b1, b2, b2 - 2);
      (new StringBuilder()).append(a(48, -u[19], 92)).append(malformedURLException);
      return paramString;
    } 
  }
  
  private void a(JSONObject paramJSONObject) {
    boolean bool = false;
    byte b1 = -u[93];
    byte b2 = u[59];
    if (paramJSONObject.has(a(b1, b2, b2 | 0x47))) {
      boolean bool1;
      this.o = true;
      b1 = -u[93];
      b2 = u[59];
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(b1, b2, b2 | 0x47));
      b1 = u[59];
      int i = b1 + 5;
      String str = a(b1, i, i | 0x62);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.e = bool1;
      b1 = u[43];
      str = a(b1, b1 + 3, 50);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.f = bool1;
    } 
    if (paramJSONObject.has(a(u[59], u[43], 128))) {
      boolean bool1;
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(u[59], u[43], 128));
      b1 = u[43];
      String str = a(b1, b1 + 3, 50);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.g = bool1;
    } 
    if (paramJSONObject.has(a(-u[17], v, -u[30]))) {
      boolean bool1;
      this.p = true;
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[17], v, -u[30]));
      b1 = u[59];
      int i = b1 + 5;
      String str = a(b1, i, i | 0x62);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.h = bool1;
      b1 = u[43];
      str = a(b1, b1 + 3, 50);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.i = bool1;
    } 
    if (paramJSONObject.has(a(-u[46], -u[15], 56))) {
      boolean bool1;
      this.r = true;
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[46], -u[15], 56));
      b1 = u[59];
      int i = b1 + 5;
      String str = a(b1, i, i | 0x62);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.j = bool1;
      b1 = u[43];
      str = a(b1, b1 + 3, 50);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.k = bool1;
    } 
    if (paramJSONObject.has(a(-u[21], u[55], -u[53]))) {
      this.q = true;
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[21], u[55], -u[53]));
      b1 = u[59];
      int i = b1 + 5;
      String str = a(b1, i, i | 0x62);
      if (jSONObject.has(str)) {
        bool1 = jSONObject.getBoolean(str);
      } else {
        bool1 = false;
      } 
      this.l = bool1;
      b1 = u[43];
      str = a(b1, b1 + 3, 50);
      boolean bool1 = bool;
      if (jSONObject.has(str))
        bool1 = jSONObject.getBoolean(str); 
      this.m = bool1;
    } 
    if (paramJSONObject.has(a(-u[93], v + 2, v | 0x80))) {
      JSONObject jSONObject = paramJSONObject.getJSONObject(a(-u[93], v + 2, v | 0x80));
      if (jSONObject.has(a(-u[46], -u[60], u[107])))
        this.s = jSONObject.getBoolean(a(-u[46], -u[60], u[107])); 
      if (jSONObject.has(a(u[107], -u[21], 76))) {
        int i = jSONObject.getInt(a(u[107], -u[21], 76));
        if (1 == i) {
          this.t = p.b;
        } else if (2 == i) {
          this.t = p.c;
        } else {
          this.t = p.a;
        } 
      } 
    } 
    if (paramJSONObject.has(a(u[24], -u[93], -u[85]))) {
      paramJSONObject = paramJSONObject.getJSONObject(a(u[24], -u[93], -u[85]));
      boolean bool1 = paramJSONObject.getBoolean(a(-u[26], v + 2, 86));
      int i = v;
      b2 = u[43];
      i = paramJSONObject.getInt(a(i + 2, b2, b2 | 0x51));
      this.n = new q(bool1, paramJSONObject.getString(a(-u[101], -u[26], 109)), this.t, i);
    } 
  }
  
  private static boolean a(String paramString, JSONObject paramJSONObject) {
    boolean bool = false;
    if (paramJSONObject.has(paramString))
      bool = paramJSONObject.getBoolean(paramString); 
    return bool;
  }
  
  public static String b(String paramString) {
    return a(false, false, paramString);
  }
  
  private String e(String paramString) {
    return a(this.m, this.q, paramString);
  }
  
  private void g() {
    this.e = false;
    this.f = false;
    this.g = false;
    this.h = false;
    this.i = false;
    this.j = false;
    this.k = false;
    this.m = false;
    this.l = false;
    this.o = false;
    this.p = false;
    this.q = false;
    this.r = false;
    this.s = false;
    this.t = p.a;
    this.n = new q(false, "", p.a, -1);
  }
  
  private boolean h() {
    return this.l;
  }
  
  private p i() {
    return this.t;
  }
  
  public final q a() {
    return this.n;
  }
  
  public final String a(String paramString) {
    return a(this.f, this.o, paramString);
  }
  
  public final boolean b() {
    return this.e;
  }
  
  public final String c(String paramString) {
    return a(this.i, this.p, paramString);
  }
  
  public final boolean c() {
    return this.g;
  }
  
  public final String d(String paramString) {
    return a(this.k, this.r, paramString);
  }
  
  public final boolean d() {
    return this.h;
  }
  
  public final boolean e() {
    return this.j;
  }
  
  public final boolean f() {
    return this.s;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
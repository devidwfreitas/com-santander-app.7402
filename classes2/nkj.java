import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.EventListener;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public abstract class nkj {
  protected static final boolean a = true;
  
  protected static final boolean b = true;
  
  protected static final String c = null;
  
  protected static final String d = null;
  
  protected static final String e = null;
  
  private final Application f;
  
  private final String g;
  
  private final String h;
  
  private final String i;
  
  private final nin j;
  
  private final List<nkd> k;
  
  private final List<EventListener> l;
  
  private final File m;
  
  private final nhc n;
  
  private final String o;
  
  private boolean p;
  
  private boolean q;
  
  private String r;
  
  private String s;
  
  private String t;
  
  private String u;
  
  private nkj(Application paramApplication, String paramString1, String paramString2, String paramString3) {
    this.f = paramApplication;
    if (paramApplication != null) {
      this.g = paramString1;
      if (!TextUtils.isEmpty(paramString1)) {
        this.h = paramString2;
        if (!TextUtils.isEmpty(paramString2)) {
          this.i = paramString3;
          if (!TextUtils.isEmpty(paramString3)) {
            this.o = (new Uri.Builder()).scheme("https").authority("tags.tiqcdn.com").appendPath("utag").appendPath(this.g).appendPath(this.h).appendPath(this.i).appendPath("mobile.html").appendQueryParameter("platform", "android").appendQueryParameter("device_os_version", Build.VERSION.RELEASE).appendQueryParameter("library_version", "5.2.0").build().toString();
            this.m = new File(String.format(Locale.ROOT, "%s%ctealium%c%s%c%s%c%s", new Object[] { paramApplication.getFilesDir(), Character.valueOf(File.separatorChar), Character.valueOf(File.separatorChar), paramString1, Character.valueOf(File.separatorChar), paramString2, Character.valueOf(File.separatorChar), paramString3 }));
            this.m.mkdirs();
            this.l = new LinkedList<EventListener>();
            this.p = true;
            this.q = true;
            this.t = e;
            this.r = c;
            this.s = d;
            this.k = new LinkedList<nkd>();
            this.j = nks.a(this.m);
            this.n = new nhc((Context)this.f, this.i);
            return;
          } 
        } 
      } 
    } 
    throw new IllegalArgumentException("All parameters must non-null; and account, profile, environment must be provided.");
  }
  
  private nkj(nkj paramnkj) {
    this.g = paramnkj.g;
    this.f = paramnkj.f;
    this.l = b(paramnkj.j());
    this.o = paramnkj.o;
    this.k = b(paramnkj.k);
    this.i = paramnkj.i;
    this.t = paramnkj.t;
    this.s = paramnkj.s;
    this.r = paramnkj.r;
    this.u = paramnkj.u;
    this.h = paramnkj.h;
    this.j = paramnkj.j;
    this.p = paramnkj.p;
    this.q = paramnkj.q;
    this.m = paramnkj.m;
    this.n = paramnkj.n;
  }
  
  private static String a(List<?> paramList) {
    int j = paramList.size() - 1;
    String str = "[";
    for (int i = 0; i <= j; i++) {
      StringBuilder stringBuilder = (new StringBuilder()).append(str).append(paramList.get(i));
      if (i == j) {
        str = "";
      } else {
        str = ", ";
      } 
      str = stringBuilder.append(str).toString();
    } 
    return str + "]";
  }
  
  public static nkj a(Application paramApplication, String paramString1, String paramString2, String paramString3) {
    return new nkl(paramApplication, paramString1, paramString2, paramString3);
  }
  
  static nkj a(nkj paramnkj) {
    return new nkk(paramnkj);
  }
  
  private static <T> List<T> b(List<T> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new java/util/ArrayList
    //   9: dup
    //   10: aload_0
    //   11: invokeinterface size : ()I
    //   16: invokespecial <init> : (I)V
    //   19: astore_1
    //   20: aload_0
    //   21: invokeinterface iterator : ()Ljava/util/Iterator;
    //   26: astore_0
    //   27: aload_0
    //   28: invokeinterface hasNext : ()Z
    //   33: ifeq -> 58
    //   36: aload_0
    //   37: invokeinterface next : ()Ljava/lang/Object;
    //   42: astore_2
    //   43: aload_2
    //   44: ifnull -> 27
    //   47: aload_1
    //   48: aload_2
    //   49: invokeinterface add : (Ljava/lang/Object;)Z
    //   54: pop
    //   55: goto -> 27
    //   58: aload_1
    //   59: invokestatic unmodifiableList : (Ljava/util/List;)Ljava/util/List;
    //   62: areturn
  }
  
  public final File a() {
    return this.m;
  }
  
  public nkj a(String paramString) {
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = null; 
    this.u = str;
    return this;
  }
  
  public nkj a(boolean paramBoolean) {
    this.p = paramBoolean;
    return this;
  }
  
  public final Application b() {
    return this.f;
  }
  
  public nkj b(String paramString) {
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = null; 
    this.t = str;
    return this;
  }
  
  public nkj b(boolean paramBoolean) {
    this.q = paramBoolean;
    return this;
  }
  
  public final String c() {
    return this.g;
  }
  
  public nkj c(String paramString) {
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = null; 
    this.s = str;
    return this;
  }
  
  public final String d() {
    return this.h;
  }
  
  public nkj d(String paramString) {
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = null; 
    this.r = str;
    return this;
  }
  
  public final String e() {
    return this.i;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof nkj) {
      paramObject = paramObject;
      if (this.g.equals(((nkj)paramObject).g) && this.h.equals(((nkj)paramObject).h) && this.i.equals(((nkj)paramObject).i) && this.k.equals(((nkj)paramObject).k) && this.l.equals(((nkj)paramObject).l) && this.p == ((nkj)paramObject).p && this.q == ((nkj)paramObject).q && TextUtils.equals(this.r, ((nkj)paramObject).r) && TextUtils.equals(this.s, ((nkj)paramObject).s) && TextUtils.equals(this.t, ((nkj)paramObject).t))
        return true; 
    } 
    return false;
  }
  
  public final String f() {
    return this.o;
  }
  
  public final String g() {
    return this.r;
  }
  
  public final String h() {
    return this.s;
  }
  
  public final List<nkd> i() {
    return this.k;
  }
  
  public final List<EventListener> j() {
    return this.l;
  }
  
  public final boolean k() {
    return this.p;
  }
  
  public final boolean l() {
    return this.q;
  }
  
  public final ngm m() {
    return nks.b(this.m);
  }
  
  public final String n() {
    return this.t;
  }
  
  public final nhc o() {
    return this.n;
  }
  
  public final String p() {
    return this.u;
  }
  
  public final nin q() {
    return this.j;
  }
  
  public String toString() {
    String str5 = System.getProperty("line.separator");
    String str3 = this.f.getString(nkf.enabled);
    String str4 = this.f.getString(nkf.disabled);
    String str2 = this.f.getString(nkf.config_account_name);
    String str15 = this.f.getString(nkf.config_profile_name);
    String str16 = this.f.getString(nkf.config_environment_name);
    String str14 = this.f.getString(nkf.config_override_dispatch_url);
    String str13 = this.f.getString(nkf.config_override_publish_settings_url);
    String str12 = this.f.getString(nkf.config_override_publish_url);
    String str11 = this.f.getString(nkf.config_override_s2s_legacy_url);
    String str8 = this.f.getString(nkf.config_dispatch_validators);
    String str9 = this.f.getString(nkf.config_event_listeners);
    String str10 = this.f.getString(nkf.config_remote_commands);
    String str6 = this.f.getString(nkf.config_cookie_manager_enabled);
    StringBuilder stringBuilder3 = (new StringBuilder()).append(this.f.getString(nkf.config_publish_settings));
    if (this.j.h() == null) {
      str1 = "(default)";
    } else {
      str1 = "(cached)";
    } 
    String str7 = stringBuilder3.append(str1).toString();
    str2 = "{" + str5 + "    " + str2 + ": " + this.g + str5 + "    " + str15 + ": " + this.h + str5 + "    " + str16 + ": " + this.i + str5;
    String str1 = str2;
    if (this.t != null)
      str1 = str2 + "    " + str14 + ": " + this.t + str5; 
    str2 = str1;
    if (this.s != null)
      str2 = str1 + "    " + str13 + ": " + this.s + str5; 
    str1 = str2;
    if (this.r != null)
      str1 = str2 + "    " + str12 + ": " + this.r + str5; 
    str2 = str1;
    if (this.u != null)
      str2 = str1 + "    " + str11 + ": " + this.u + str5; 
    StringBuilder stringBuilder2 = (new StringBuilder()).append(str2).append("    ").append(str8).append(": ").append(a(this.k)).append(str5).append("    ").append(str9).append(": ").append(a(this.l)).append(str5).append("    ").append(str10).append(": ");
    if (this.p) {
      str1 = str3;
    } else {
      str1 = str4;
    } 
    StringBuilder stringBuilder1 = stringBuilder2.append(str1).append(str5).append("    ").append(str6).append(": ");
    if (!this.q)
      str3 = str4; 
    return stringBuilder1.append(str3).append(str5).append("    ").append(str7).append(": ").append(this.j.a("    ")).append(str5).append("}").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
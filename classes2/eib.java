import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public final class eib {
  private final String a;
  
  private final String b;
  
  private final String c;
  
  private final String d;
  
  private final String e;
  
  private final String f;
  
  private eib(@NonNull String paramString1, @NonNull String paramString2, @Nullable String paramString3, @Nullable String paramString4, @Nullable String paramString5, @Nullable String paramString6) {
    boolean bool;
    if (!cwg.a(paramString1)) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "ApplicationId must be set.");
    this.b = paramString1;
    this.a = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
  }
  
  public static eib a(Context paramContext) {
    csv csv = new csv(paramContext);
    String str = csv.a("google_app_id");
    return TextUtils.isEmpty(str) ? null : new eib(str, csv.a("google_api_key"), csv.a("firebase_database_url"), csv.a("ga_trackingId"), csv.a("gcm_defaultSenderId"), csv.a("google_storage_bucket"));
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String d() {
    return this.e;
  }
  
  public String e() {
    return this.f;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof eib) {
      paramObject = paramObject;
      if (csg.a(this.b, ((eib)paramObject).b) && csg.a(this.a, ((eib)paramObject).a) && csg.a(this.c, ((eib)paramObject).c) && csg.a(this.d, ((eib)paramObject).d) && csg.a(this.e, ((eib)paramObject).e) && csg.a(this.f, ((eib)paramObject).f))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.b, this.a, this.c, this.d, this.e, this.f });
  }
  
  public String toString() {
    return csg.a(this).a("applicationId", this.b).a("apiKey", this.a).a("databaseUrl", this.c).a("gcmSenderId", this.e).a("storageBucket", this.f).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public class coi {
  private static final Lock a = new ReentrantLock();
  
  private static coi b;
  
  private final Lock c = new ReentrantLock();
  
  private final SharedPreferences d;
  
  coi(Context paramContext) {
    this.d = paramContext.getSharedPreferences("com.google.android.gms.signin", 0);
  }
  
  public static coi a(Context paramContext) {
    csp.a(paramContext);
    a.lock();
    try {
      if (b == null)
        b = new coi(paramContext.getApplicationContext()); 
      return b;
    } finally {
      a.unlock();
    } 
  }
  
  private String b(String paramString1, String paramString2) {
    String str = String.valueOf(":");
    return (new StringBuilder(String.valueOf(paramString1).length() + String.valueOf(str).length() + String.valueOf(paramString2).length())).append(paramString1).append(str).append(paramString2).toString();
  }
  
  public GoogleSignInAccount a() {
    return a(c("defaultGoogleSignInAccount"));
  }
  
  GoogleSignInAccount a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      paramString = c(b("googleSignInAccount", paramString));
      if (paramString != null)
        try {
          return GoogleSignInAccount.a(paramString);
        } catch (JSONException jSONException) {
          return null;
        }  
    } 
    return null;
  }
  
  void a(GoogleSignInAccount paramGoogleSignInAccount, GoogleSignInOptions paramGoogleSignInOptions) {
    csp.a(paramGoogleSignInAccount);
    csp.a(paramGoogleSignInOptions);
    String str = paramGoogleSignInAccount.l();
    a(b("googleSignInAccount", str), paramGoogleSignInAccount.o());
    a(b("googleSignInOptions", str), paramGoogleSignInOptions.j());
  }
  
  protected void a(String paramString1, String paramString2) {
    this.c.lock();
    try {
      this.d.edit().putString(paramString1, paramString2).apply();
      return;
    } finally {
      this.c.unlock();
    } 
  }
  
  public GoogleSignInOptions b() {
    return b(c("defaultGoogleSignInAccount"));
  }
  
  GoogleSignInOptions b(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      paramString = c(b("googleSignInOptions", paramString));
      if (paramString != null)
        try {
          return GoogleSignInOptions.a(paramString);
        } catch (JSONException jSONException) {
          return null;
        }  
    } 
    return null;
  }
  
  public void b(GoogleSignInAccount paramGoogleSignInAccount, GoogleSignInOptions paramGoogleSignInOptions) {
    csp.a(paramGoogleSignInAccount);
    csp.a(paramGoogleSignInOptions);
    a("defaultGoogleSignInAccount", paramGoogleSignInAccount.l());
    a(paramGoogleSignInAccount, paramGoogleSignInOptions);
  }
  
  protected String c(String paramString) {
    this.c.lock();
    try {
      paramString = this.d.getString(paramString, null);
      return paramString;
    } finally {
      this.c.unlock();
    } 
  }
  
  public void c() {
    String str = c("defaultGoogleSignInAccount");
    e("defaultGoogleSignInAccount");
    d(str);
  }
  
  void d(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return; 
    e(b("googleSignInAccount", paramString));
    e(b("googleSignInOptions", paramString));
  }
  
  protected void e(String paramString) {
    this.c.lock();
    try {
      this.d.edit().remove(paramString).apply();
      return;
    } finally {
      this.c.unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
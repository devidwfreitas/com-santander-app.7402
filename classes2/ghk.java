import android.app.Activity;

public class ghk implements ghp {
  private Activity a;
  
  private gkw b;
  
  public ghk(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  public void a(gkw paramgkw, ghq paramghq) {
    this.b = paramgkw;
    (new ghn(this.a, new ghl(this, paramgkw))).execute((Object[])new ghq[] { paramghq });
  }
  
  public void a(gkw paramgkw, ghr paramghr) {
    this.b = paramgkw;
    (new gho(this.a, new ghm(this, paramgkw))).execute((Object[])new ghr[] { paramghr });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
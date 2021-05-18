import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;

public final class dlj {
  private final String b;
  
  private final boolean c;
  
  private boolean d;
  
  private boolean e;
  
  public dlj(dlh paramdlh, String paramString, boolean paramBoolean) {
    csp.a(paramString);
    this.b = paramString;
    this.c = paramBoolean;
  }
  
  @WorkerThread
  private void b() {
    if (this.d)
      return; 
    this.d = true;
    this.e = dlh.a(this.a).getBoolean(this.b, this.c);
  }
  
  @WorkerThread
  public void a(boolean paramBoolean) {
    SharedPreferences.Editor editor = dlh.a(this.a).edit();
    editor.putBoolean(this.b, paramBoolean);
    editor.apply();
    this.e = paramBoolean;
  }
  
  @WorkerThread
  public boolean a() {
    b();
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
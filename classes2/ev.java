import java.util.Locale;

public class ev {
  private final ex a;
  
  ev(ex paramex) {
    this.a = paramex;
  }
  
  public ew a(Runnable paramRunnable) {
    return this.a.a(paramRunnable);
  }
  
  public boolean a() {
    return this.a.a();
  }
  
  public void b() {
    this.a.d();
  }
  
  public String toString() {
    return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", new Object[] { getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.a.a()) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
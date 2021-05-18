import android.os.Bundle;

class ddm implements Runnable {
  ddm(ddl paramddl, ddj paramddj, String paramString) {}
  
  public void run() {
    if (ddl.a(this.c) >= 1) {
      Bundle bundle;
      ddj ddj1 = this.a;
      if (ddl.b(this.c) != null) {
        bundle = ddl.b(this.c).getBundle(this.b);
      } else {
        bundle = null;
      } 
      ddj1.a(bundle);
    } 
    if (ddl.a(this.c) >= 2)
      this.a.a(); 
    if (ddl.a(this.c) >= 3)
      this.a.b(); 
    if (ddl.a(this.c) >= 4)
      this.a.g(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
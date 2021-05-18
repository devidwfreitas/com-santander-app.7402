import android.util.Log;

public class cmk implements Runnable {
  protected long a = 0L;
  
  public cmk(cmh paramcmh) {}
  
  private void a() {
    if (this.a == 0L) {
      this.a = 1000L;
      return;
    } 
    this.a = Math.min(this.a * 2L, 60000L);
  }
  
  public void run() {
    try {
      cmh.b(this.b, true);
      while (true) {
        synchronized (cmh.a(this.b)) {
          while (cmh.f(this.b).isEmpty()) {
            cmh.a(this.b, false);
            cmh.a(this.b).wait();
          } 
        } 
        cmh.a(this.b, true);
        cmg cmg = cmh.f(this.b).remove(0);
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
        if (cmg != null) {
          if (!cmn.a(cmh.c(this.b), cmg.e, cmg.f, cmg.b)) {
            cmh.e(this.b).a(cmg);
            continue;
          } 
          int i = this.b.a(cmg);
          if (i == 2) {
            cmh.e(this.b).a(cmg);
            this.a = 0L;
            continue;
          } 
          if (i == 0) {
            cmh.e(this.b).c(cmg);
            a();
            Thread.sleep(this.a);
            continue;
          } 
          cmh.e(this.b).c(cmg);
          this.a = 0L;
        } 
      } 
    } catch (InterruptedException interruptedException) {
      Log.w("GoogleConversionReporter", "Dispatch thread is interrupted.");
      cmh.b(this.b, false);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
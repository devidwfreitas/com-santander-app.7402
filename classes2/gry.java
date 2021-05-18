import android.util.Log;

class gry implements Runnable {
  private static final long a = 240000L;
  
  private static boolean b = false;
  
  private static boolean c = false;
  
  private gry() {}
  
  public void a() {
    b = true;
  }
  
  public void b() {
    c = true;
  }
  
  public void run() {
    while (!c && miq.C().l()) {
      try {
        Thread.sleep(240000L);
      } catch (Exception exception) {}
      if (b && miq.C().l() && miq.C().j() != null) {
        Log.d("SessionControl", "refreshSession");
        b = false;
        try {
          if (hat.b().c() == null)
            b(); 
        } catch (Exception exception) {}
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
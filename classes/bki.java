import android.preference.PreferenceManager;
import android.util.Log;
import java.util.concurrent.locks.ReentrantReadWriteLock;

class bki {
  private static final String a = bki.class.getSimpleName();
  
  private static final String b = "com.facebook.appevents.AnalyticsUserIDStore.userID";
  
  private static ReentrantReadWriteLock c = new ReentrantReadWriteLock();
  
  private static String d;
  
  private static volatile boolean e = false;
  
  public static void a() {
    if (e)
      return; 
    bla.k().execute(new bkj());
  }
  
  public static void a(String paramString) {
    blz.a();
    if (!e) {
      Log.w(a, "initStore should have been called before calling setUserID");
      f();
    } 
    bla.k().execute(new bkk(paramString));
  }
  
  public static String b() {
    if (!e) {
      Log.w(a, "initStore should have been called before calling setUserID");
      f();
    } 
    c.readLock().lock();
    try {
      return d;
    } finally {
      c.readLock().unlock();
    } 
  }
  
  private static void f() {
    if (e)
      return; 
    c.writeLock().lock();
    try {
      boolean bool = e;
      if (bool)
        return; 
      d = PreferenceManager.getDefaultSharedPreferences(bhv.h()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
      e = true;
      return;
    } finally {
      c.writeLock().unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
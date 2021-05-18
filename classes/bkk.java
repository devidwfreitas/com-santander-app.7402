import android.content.SharedPreferences;
import android.preference.PreferenceManager;

final class bkk implements Runnable {
  bkk(String paramString) {}
  
  public void run() {
    bki.d().writeLock().lock();
    try {
      bki.b(this.a);
      SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(bhv.h()).edit();
      editor.putString("com.facebook.appevents.AnalyticsUserIDStore.userID", bki.e());
      editor.apply();
      return;
    } finally {
      bki.d().writeLock().unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
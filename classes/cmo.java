import android.content.SharedPreferences;
import java.util.Iterator;
import java.util.List;

final class cmo implements Runnable {
  cmo(SharedPreferences paramSharedPreferences, List paramList, cmr paramcmr, String paramString) {}
  
  public void run() {
    SharedPreferences.Editor editor = this.a.edit();
    Iterator<String> iterator = this.b.iterator();
    while (iterator.hasNext())
      editor.remove(iterator.next()); 
    editor.putString(cmr.a(this.c), this.d);
    editor.commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
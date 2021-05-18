import android.util.Log;
import java.util.List;

class hnd implements gkv<hld> {
  hnd(hnc paramhnc, List paramList, hna paramhna) {}
  
  public void a(hld paramhld) {
    if (paramhld != null)
      try {
        if (paramhld.a() != null)
          this.a.addAll(paramhld.a()); 
        this.b.a(true, this.a);
        return;
      } catch (Exception exception) {
        Log.e(hnc.class.getSimpleName(), exception.getMessage());
        this.b.a(false, this.a);
        return;
      }  
    this.b.a(true, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
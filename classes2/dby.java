import android.support.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.Iterator;

class dby extends dcc {
  private final ArrayList<cph> c;
  
  public dby(dbs paramdbs, ArrayList<cph> paramArrayList) {
    super(paramdbs, null);
    this.c = paramArrayList;
  }
  
  @WorkerThread
  public void a() {
    (dbs.d(this.a)).i.f = dbs.g(this.a);
    Iterator<cph> iterator = this.c.iterator();
    while (iterator.hasNext())
      ((cph)iterator.next()).a(dbs.h(this.a), (dbs.d(this.a)).i.f); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
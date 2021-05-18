import android.app.Activity;
import android.support.annotation.MainThread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ehs extends ddj {
  private final List<WeakReference<ehp<?>>> a = new ArrayList<WeakReference<ehp<?>>>();
  
  private ehs(ddk paramddk) {
    super(paramddk);
    this.d.a("TaskOnStopCallback", this);
  }
  
  public static ehs b(Activity paramActivity) {
    ddk ddk = a(paramActivity);
    ehs ehs2 = ddk.<ehs>a("TaskOnStopCallback", ehs.class);
    ehs ehs1 = ehs2;
    if (ehs2 == null)
      ehs1 = new ehs(ddk); 
    return ehs1;
  }
  
  public <T> void a(ehp<T> paramehp) {
    synchronized (this.a) {
      this.a.add(new WeakReference<ehp<?>>(paramehp));
      return;
    } 
  }
  
  @MainThread
  public void b() {
    synchronized (this.a) {
      Iterator<WeakReference<ehp<?>>> iterator = this.a.iterator();
      while (iterator.hasNext()) {
        ehp ehp = ((WeakReference<ehp>)iterator.next()).get();
        if (ehp != null)
          ehp.a(); 
      } 
    } 
    this.a.clear();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
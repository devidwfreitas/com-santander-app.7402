import android.util.Log;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

public class fca implements Runnable {
  public fca(SlidingMenu paramSlidingMenu, int paramInt) {}
  
  public void run() {
    boolean bool;
    StringBuilder stringBuilder = (new StringBuilder()).append("changing layerType. hardware? ");
    if (this.a == 2) {
      bool = true;
    } else {
      bool = false;
    } 
    Log.v("SlidingMenu", stringBuilder.append(bool).toString());
    this.b.a().setLayerType(this.a, null);
    this.b.b().setLayerType(this.a, null);
    if (this.b.c() != null)
      this.b.c().setLayerType(this.a, null); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
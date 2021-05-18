import com.adjust.sdk.ActivityHandler;

public class aum implements Runnable {
  public aum(ActivityHandler paramActivityHandler) {}
  
  public void run() {
    if (ActivityHandler.access$2500(this.a) != null && (ActivityHandler.access$2500(this.a)).onAttributionChangedListener != null) {
      (ActivityHandler.access$2500(this.a)).onAttributionChangedListener.onAttributionChanged(ActivityHandler.access$2600(this.a));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
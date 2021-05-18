import com.adjust.sdk.TimerOnce;

public class awf implements Runnable {
  public awf(TimerOnce paramTimerOnce) {}
  
  public void run() {
    TimerOnce.access$100(this.a).verbose("%s fired", new Object[] { TimerOnce.access$000(this.a) });
    TimerOnce.access$200(this.a).run();
    TimerOnce.access$302(this.a, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
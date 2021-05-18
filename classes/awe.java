import com.adjust.sdk.TimerCycle;

public class awe implements Runnable {
  public awe(TimerCycle paramTimerCycle) {}
  
  public void run() {
    TimerCycle.access$100(this.a).verbose("%s fired", new Object[] { TimerCycle.access$000(this.a) });
    TimerCycle.access$200(this.a).run();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
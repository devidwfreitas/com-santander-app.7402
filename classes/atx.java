import com.adjust.sdk.ActivityHandler;

public class atx implements Runnable {
  public atx(ActivityHandler paramActivityHandler) {}
  
  public void run() {
    ActivityHandler.access$100(this.a);
    ActivityHandler.access$200(this.a);
    ActivityHandler.access$300(this.a);
    ActivityHandler.access$400(this.a).verbose("Subsession start", new Object[0]);
    ActivityHandler.access$500(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
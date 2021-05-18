import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public class doq extends dmu {
  private boolean a;
  
  private final AlarmManager b = (AlarmManager)n().getSystemService("alarm");
  
  private final dkf c;
  
  protected doq(dlv paramdlv) {
    super(paramdlv);
    this.c = new dor(this, paramdlv);
  }
  
  private PendingIntent y() {
    Intent intent = new Intent();
    Context context = n();
    w().V();
    intent = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
    intent.setAction("com.google.android.gms.measurement.UPLOAD");
    return PendingIntent.getBroadcast(n(), 0, intent, 0);
  }
  
  private void z() {
    Intent intent = new Intent();
    Context context = n();
    w().V();
    intent = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
    intent.setAction("com.google.android.gms.measurement.UPLOAD");
    n().sendBroadcast(intent);
  }
  
  protected void a() {
    this.b.cancel(y());
  }
  
  public void a(long paramLong) {
    R();
    w().V();
    if (!dlm.a(n(), false))
      u().C().a("Receiver not registered/enabled"); 
    w().V();
    if (!dog.a(n(), false))
      u().C().a("Service not registered/enabled"); 
    x();
    long l = m().b();
    this.a = true;
    if (paramLong < w().ap() && !this.c.b())
      this.c.a(paramLong); 
    this.b.setInexactRepeating(2, l + paramLong, Math.max(w().aq(), paramLong), y());
  }
  
  public void x() {
    R();
    this.a = false;
    this.b.cancel(y());
    this.c.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\doq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;

public final class eri implements SensorEventListener {
  private static final float a = 45.0F;
  
  private static final float b = 450.0F;
  
  private fej c;
  
  private fel d;
  
  private Sensor e;
  
  private Context f;
  
  private Handler g;
  
  public eri(Context paramContext, fej paramfej, fel paramfel) {
    this.f = paramContext;
    this.c = paramfej;
    this.d = paramfel;
    this.g = new Handler();
  }
  
  private void a(boolean paramBoolean) {
    this.g.post(new erj(this, paramBoolean));
  }
  
  public void a() {
    if (this.d.i()) {
      SensorManager sensorManager = (SensorManager)this.f.getSystemService("sensor");
      this.e = sensorManager.getDefaultSensor(5);
      if (this.e != null)
        sensorManager.registerListener(this, this.e, 3); 
    } 
  }
  
  public void b() {
    if (this.e != null) {
      ((SensorManager)this.f.getSystemService("sensor")).unregisterListener(this);
      this.e = null;
    } 
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent) {
    float f = paramSensorEvent.values[0];
    if (this.c != null) {
      if (f <= 45.0F) {
        a(true);
        return;
      } 
    } else {
      return;
    } 
    if (f >= 450.0F) {
      a(false);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
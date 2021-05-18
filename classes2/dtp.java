import android.os.SystemClock;
import com.google.android.gms.internal.zzasm;

public final class dtp {
  private String a = null;
  
  private int b = 0;
  
  private long c = Long.MIN_VALUE;
  
  private short d = -1;
  
  private double e;
  
  private double f;
  
  private float g;
  
  private int h = 0;
  
  private int i = -1;
  
  public dto a() {
    if (this.a == null)
      throw new IllegalArgumentException("Request ID not set."); 
    if (this.b == 0)
      throw new IllegalArgumentException("Transitions types not set."); 
    if ((this.b & 0x4) != 0 && this.i < 0)
      throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."); 
    if (this.c == Long.MIN_VALUE)
      throw new IllegalArgumentException("Expiration not set."); 
    if (this.d == -1)
      throw new IllegalArgumentException("Geofence region not set."); 
    if (this.h < 0)
      throw new IllegalArgumentException("Notification responsiveness should be nonnegative."); 
    return (dto)new zzasm(this.a, this.b, (short)1, this.e, this.f, this.g, this.c, this.h, this.i);
  }
  
  public dtp a(double paramDouble1, double paramDouble2, float paramFloat) {
    this.d = 1;
    this.e = paramDouble1;
    this.f = paramDouble2;
    this.g = paramFloat;
    return this;
  }
  
  public dtp a(int paramInt) {
    this.b = paramInt;
    return this;
  }
  
  public dtp a(long paramLong) {
    if (paramLong < 0L) {
      this.c = -1L;
      return this;
    } 
    this.c = SystemClock.elapsedRealtime() + paramLong;
    return this;
  }
  
  public dtp a(String paramString) {
    this.a = paramString;
    return this;
  }
  
  public dtp b(int paramInt) {
    this.h = paramInt;
    return this;
  }
  
  public dtp c(int paramInt) {
    this.i = paramInt;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
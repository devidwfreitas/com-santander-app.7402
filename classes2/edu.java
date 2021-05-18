import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class edu {
  private double a = Double.POSITIVE_INFINITY;
  
  private double b = Double.NEGATIVE_INFINITY;
  
  private double c = Double.NaN;
  
  private double d = Double.NaN;
  
  private boolean a(double paramDouble) {
    boolean bool = false;
    if (this.c <= this.d)
      return (this.c <= paramDouble && paramDouble <= this.d); 
    if (this.c <= paramDouble || paramDouble <= this.d)
      bool = true; 
    return bool;
  }
  
  public LatLngBounds a() {
    if (!Double.isNaN(this.c)) {
      boolean bool1 = true;
      csp.a(bool1, "no included points");
      return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
    } 
    boolean bool = false;
    csp.a(bool, "no included points");
    return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
  }
  
  public edu a(LatLng paramLatLng) {
    this.a = Math.min(this.a, paramLatLng.a);
    this.b = Math.max(this.b, paramLatLng.a);
    double d = paramLatLng.b;
    if (Double.isNaN(this.c)) {
      this.c = d;
      this.d = d;
      return this;
    } 
    if (!a(d)) {
      if (LatLngBounds.a(this.c, d) < LatLngBounds.b(this.d, d)) {
        this.c = d;
        return this;
      } 
      this.d = d;
      return this;
    } 
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
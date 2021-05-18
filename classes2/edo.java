import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

public final class edo {
  private LatLng a;
  
  private float b;
  
  private float c;
  
  private float d;
  
  public edo() {}
  
  public edo(CameraPosition paramCameraPosition) {
    this.a = paramCameraPosition.a;
    this.b = paramCameraPosition.b;
    this.c = paramCameraPosition.c;
    this.d = paramCameraPosition.d;
  }
  
  public CameraPosition a() {
    return new CameraPosition(this.a, this.b, this.c, this.d);
  }
  
  public edo a(float paramFloat) {
    this.b = paramFloat;
    return this;
  }
  
  public edo a(LatLng paramLatLng) {
    this.a = paramLatLng;
    return this;
  }
  
  public edo b(float paramFloat) {
    this.c = paramFloat;
    return this;
  }
  
  public edo c(float paramFloat) {
    this.d = paramFloat;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public class cla extends cld {
  public static final Parcelable.Creator<cla> c;
  
  private static clc<cla> d = clc.a(32, new cla(0.0F, 0.0F));
  
  public float a;
  
  public float b;
  
  static {
    d.a(0.5F);
    c = new clb();
  }
  
  public cla() {}
  
  public cla(float paramFloat1, float paramFloat2) {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public static cla a(float paramFloat1, float paramFloat2) {
    cla cla1 = d.c();
    cla1.a = paramFloat1;
    cla1.b = paramFloat2;
    return cla1;
  }
  
  public static void a(cla paramcla) {
    d.a(paramcla);
  }
  
  public static void a(List<cla> paramList) {
    d.a(paramList);
  }
  
  public float a() {
    return this.a;
  }
  
  public void a(Parcel paramParcel) {
    this.a = paramParcel.readFloat();
    this.b = paramParcel.readFloat();
  }
  
  protected cld b() {
    return new cla(0.0F, 0.0F);
  }
  
  public float c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
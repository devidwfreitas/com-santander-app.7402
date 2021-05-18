import android.support.annotation.NonNull;

public class fdu implements Comparable<fdu> {
  public final int a;
  
  public final int b;
  
  public fdu(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public fdu a() {
    return new fdu(this.b, this.a);
  }
  
  public fdu a(int paramInt1, int paramInt2) {
    return new fdu(this.a * paramInt1 / paramInt2, this.b * paramInt1 / paramInt2);
  }
  
  public fdu a(fdu paramfdu) {
    return (this.a * paramfdu.b >= paramfdu.a * this.b) ? new fdu(paramfdu.a, this.b * paramfdu.a / this.a) : new fdu(this.a * paramfdu.b / this.b, paramfdu.b);
  }
  
  public fdu b(fdu paramfdu) {
    return (this.a * paramfdu.b <= paramfdu.a * this.b) ? new fdu(paramfdu.a, this.b * paramfdu.a / this.a) : new fdu(this.a * paramfdu.b / this.b, paramfdu.b);
  }
  
  public boolean c(fdu paramfdu) {
    return (this.a <= paramfdu.a && this.b <= paramfdu.b);
  }
  
  public int d(@NonNull fdu paramfdu) {
    int i = this.b * this.a;
    int j = paramfdu.b * paramfdu.a;
    return (j < i) ? 1 : ((j > i) ? -1 : 0);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.a != ((fdu)paramObject).a || this.b != ((fdu)paramObject).b)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.a * 31 + this.b;
  }
  
  public String toString() {
    return this.a + "x" + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
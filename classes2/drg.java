import java.util.Arrays;

final class drg {
  final int a;
  
  final byte[] b;
  
  drg(int paramInt, byte[] paramArrayOfbyte) {
    this.a = paramInt;
    this.b = paramArrayOfbyte;
  }
  
  int a() {
    return dqw.h(this.a) + 0 + this.b.length;
  }
  
  void a(dqw paramdqw) {
    paramdqw.g(this.a);
    paramdqw.d(this.b);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof drg))
        return false; 
      paramObject = paramObject;
      if (this.a != ((drg)paramObject).a || !Arrays.equals(this.b, ((drg)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return (this.a + 527) * 31 + Arrays.hashCode(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
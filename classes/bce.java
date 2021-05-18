public class bce {
  private final float[] a;
  
  private final int[] b;
  
  public bce(float[] paramArrayOffloat, int[] paramArrayOfint) {
    this.a = paramArrayOffloat;
    this.b = paramArrayOfint;
  }
  
  public void a(bce parambce1, bce parambce2, float paramFloat) {
    if (parambce1.b.length != parambce2.b.length)
      throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + parambce1.b.length + " vs " + parambce2.b.length + ")"); 
    int i;
    for (i = 0; i < parambce1.b.length; i++) {
      this.a[i] = bex.a(parambce1.a[i], parambce2.a[i], paramFloat);
      this.b[i] = ber.a(paramFloat, parambce1.b[i], parambce2.b[i]);
    } 
  }
  
  public float[] a() {
    return this.a;
  }
  
  public int[] b() {
    return this.b;
  }
  
  public int c() {
    return this.b.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
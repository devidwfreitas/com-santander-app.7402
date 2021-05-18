public final class fai {
  private final int a;
  
  private final fah[] b;
  
  fai(int paramInt, fah... paramVarArgs) {
    this.a = paramInt;
    this.b = paramVarArgs;
  }
  
  public int a() {
    return this.a;
  }
  
  public int b() {
    int i = 0;
    fah[] arrayOfFah = this.b;
    int k = arrayOfFah.length;
    int j = 0;
    while (i < k) {
      j += arrayOfFah[i].a();
      i++;
    } 
    return j;
  }
  
  public int c() {
    return this.a * b();
  }
  
  public fah[] d() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
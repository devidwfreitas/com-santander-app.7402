final class erb extends erh {
  private final short b;
  
  private final short c;
  
  erb(erh paramerh, int paramInt1, int paramInt2) {
    super(paramerh);
    this.b = (short)paramInt1;
    this.c = (short)paramInt2;
  }
  
  public void a(ets paramets, byte[] paramArrayOfbyte) {
    for (int i = 0; i < this.c; i++) {
      if (i == 0 || (i == 31 && this.c <= 62)) {
        paramets.c(31, 5);
        if (this.c > 62) {
          paramets.c(this.c - 31, 16);
        } else if (i == 0) {
          paramets.c(Math.min(this.c, 31), 5);
        } else {
          paramets.c(this.c - 31, 5);
        } 
      } 
      paramets.c(paramArrayOfbyte[this.b + i], 8);
    } 
  }
  
  public String toString() {
    return "<" + this.b + "::" + (this.b + this.c - 1) + '>';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
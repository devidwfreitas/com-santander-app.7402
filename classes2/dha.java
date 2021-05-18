public final class dha extends dqy<dha> {
  public byte[][] a = drh.k;
  
  public byte[] b = null;
  
  public Integer c = null;
  
  public Integer d = null;
  
  protected int a() {
    int i = 0;
    int k = super.a();
    if (this.a != null && this.a.length > 0) {
      j = 0;
      int m;
      for (m = 0; i < this.a.length; m = n) {
        byte[] arrayOfByte = this.a[i];
        int i1 = j;
        int n = m;
        if (arrayOfByte != null) {
          n = m + 1;
          i1 = j + dqw.c(arrayOfByte);
        } 
        i++;
        j = i1;
      } 
      j = k + j + m * 1;
    } else {
      j = k;
    } 
    i = j;
    if (this.b != null)
      i = j + dqw.b(2, this.b); 
    int j = i;
    if (this.c != null)
      j = i + dqw.c(3, this.c.intValue()); 
    i = j;
    if (this.d != null)
      i = j + dqw.c(4, this.d.intValue()); 
    return i;
  }
  
  public dha a(dqv paramdqv) {
    while (true) {
      int j;
      byte[][] arrayOfByte;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          j = drh.a(paramdqv, 10);
          if (this.a == null) {
            i = 0;
          } else {
            i = this.a.length;
          } 
          arrayOfByte = new byte[j + i][];
          j = i;
          if (i != 0) {
            System.arraycopy(this.a, 0, arrayOfByte, 0, i);
            j = i;
          } 
          while (j < arrayOfByte.length - 1) {
            arrayOfByte[j] = paramdqv.k();
            paramdqv.a();
            j++;
          } 
          arrayOfByte[j] = paramdqv.k();
          this.a = arrayOfByte;
          break;
        case 18:
          this.b = paramdqv.k();
          break;
        case 24:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
              break;
          } 
          this.c = Integer.valueOf(i);
          break;
        case 32:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
              break;
          } 
          this.d = Integer.valueOf(i);
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null && this.a.length > 0)
      for (int i = 0; i < this.a.length; i++) {
        byte[] arrayOfByte = this.a[i];
        if (arrayOfByte != null)
          paramdqw.a(1, arrayOfByte); 
      }  
    if (this.b != null)
      paramdqw.a(2, this.b); 
    if (this.c != null)
      paramdqw.a(3, this.c.intValue()); 
    if (this.d != null)
      paramdqw.a(4, this.d.intValue()); 
    super.a(paramdqw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import java.util.Iterator;
import java.util.LinkedList;

final class erg {
  static final erg a = new erg(erh.a, 0, 0, 0);
  
  private final int b;
  
  private final erh c;
  
  private final int d;
  
  private final int e;
  
  private erg(erh paramerh, int paramInt1, int paramInt2, int paramInt3) {
    this.c = paramerh;
    this.b = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
  }
  
  int a() {
    return this.b;
  }
  
  erg a(int paramInt) {
    byte b;
    erh erh1 = this.c;
    int j = this.b;
    int i = this.e;
    if (this.b == 4 || this.b == 2) {
      b = erd.g[j][0];
      erh1 = erh1.a(0xFFFF & b, b >> 16);
      i += b >> 16;
      j = 0;
    } 
    if (this.d == 0 || this.d == 31) {
      b = 18;
    } else if (this.d == 62) {
      b = 9;
    } else {
      b = 8;
    } 
    erg erg1 = new erg(erh1, j, this.d + 1, i + b);
    return (erg1.d == 2078) ? erg1.b(paramInt + 1) : erg1;
  }
  
  erg a(int paramInt1, int paramInt2) {
    int i = this.e;
    erh erh1 = this.c;
    if (paramInt1 != this.b) {
      int j = erd.g[this.b][paramInt1];
      erh1 = erh1.a(0xFFFF & j, j >> 16);
      i += j >> 16;
    } 
    if (paramInt1 == 2) {
      byte b1 = 4;
      return new erg(erh1.a(paramInt2, b1), paramInt1, 0, b1 + i);
    } 
    byte b = 5;
    return new erg(erh1.a(paramInt2, b), paramInt1, 0, b + i);
  }
  
  ets a(byte[] paramArrayOfbyte) {
    LinkedList<erh> linkedList = new LinkedList();
    for (erh erh1 = (b(paramArrayOfbyte.length)).c; erh1 != null; erh1 = erh1.a())
      linkedList.addFirst(erh1); 
    ets ets = new ets();
    Iterator<erh> iterator = linkedList.iterator();
    while (iterator.hasNext())
      ((erh)iterator.next()).a(ets, paramArrayOfbyte); 
    return ets;
  }
  
  boolean a(erg paramerg) {
    // Byte code:
    //   0: aload_0
    //   1: getfield e : I
    //   4: getstatic erd.g : [[I
    //   7: aload_0
    //   8: getfield b : I
    //   11: aaload
    //   12: aload_1
    //   13: getfield b : I
    //   16: iaload
    //   17: bipush #16
    //   19: ishr
    //   20: iadd
    //   21: istore_3
    //   22: iload_3
    //   23: istore_2
    //   24: aload_1
    //   25: getfield d : I
    //   28: ifle -> 56
    //   31: aload_0
    //   32: getfield d : I
    //   35: ifeq -> 51
    //   38: iload_3
    //   39: istore_2
    //   40: aload_0
    //   41: getfield d : I
    //   44: aload_1
    //   45: getfield d : I
    //   48: if_icmple -> 56
    //   51: iload_3
    //   52: bipush #10
    //   54: iadd
    //   55: istore_2
    //   56: iload_2
    //   57: aload_1
    //   58: getfield e : I
    //   61: if_icmpgt -> 66
    //   64: iconst_1
    //   65: ireturn
    //   66: iconst_0
    //   67: ireturn
  }
  
  erg b(int paramInt) {
    return (this.d == 0) ? this : new erg(this.c.b(paramInt - this.d, this.d), this.b, 0, this.e);
  }
  
  erg b(int paramInt1, int paramInt2) {
    erh erh1 = this.c;
    if (this.b == 2) {
      byte b1 = 4;
      return new erg(erh1.a(erd.h[this.b][paramInt1], b1).a(paramInt2, 5), this.b, 0, b1 + this.e + 5);
    } 
    byte b = 5;
    return new erg(erh1.a(erd.h[this.b][paramInt1], b).a(paramInt2, 5), this.b, 0, b + this.e + 5);
  }
  
  erh b() {
    return this.c;
  }
  
  int c() {
    return this.d;
  }
  
  int d() {
    return this.e;
  }
  
  public String toString() {
    return String.format("%s bits=%d bytes=%d", new Object[] { erd.a[this.b], Integer.valueOf(this.e), Integer.valueOf(this.d) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
public class evm {
  static final evm[] a = new evm[] { 
      new evm(false, 3, 5, 8, 8, 1), new evm(false, 5, 7, 10, 10, 1), new evm(true, 5, 7, 16, 6, 1), new evm(false, 8, 10, 12, 12, 1), new evm(true, 10, 11, 14, 6, 2), new evm(false, 12, 12, 14, 14, 1), new evm(true, 16, 14, 24, 10, 1), new evm(false, 18, 14, 16, 16, 1), new evm(false, 22, 18, 18, 18, 1), new evm(true, 22, 18, 16, 10, 2), 
      new evm(false, 30, 20, 20, 20, 1), new evm(true, 32, 24, 16, 14, 2), new evm(false, 36, 24, 22, 22, 1), new evm(false, 44, 28, 24, 24, 1), new evm(true, 49, 28, 22, 14, 2), new evm(false, 62, 36, 14, 14, 4), new evm(false, 86, 42, 16, 16, 4), new evm(false, 114, 48, 18, 18, 4), new evm(false, 144, 56, 20, 20, 4), new evm(false, 174, 68, 22, 22, 4), 
      new evm(false, 204, 84, 24, 24, 4, 102, 42), new evm(false, 280, 112, 14, 14, 16, 140, 56), new evm(false, 368, 144, 16, 16, 16, 92, 36), new evm(false, 456, 192, 18, 18, 16, 114, 48), new evm(false, 576, 224, 20, 20, 16, 144, 56), new evm(false, 696, 272, 22, 22, 16, 174, 68), new evm(false, 816, 336, 24, 24, 16, 136, 56), new evm(false, 1050, 408, 18, 18, 36, 175, 68), new evm(false, 1304, 496, 20, 20, 36, 163, 62), new evf() };
  
  private static evm[] d = a;
  
  public final int b;
  
  public final int c;
  
  private final boolean e;
  
  private final int f;
  
  private final int g;
  
  private final int h;
  
  private final int i;
  
  private final int j;
  
  public evm(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    this(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt1, paramInt2);
  }
  
  evm(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7) {
    this.e = paramBoolean;
    this.f = paramInt1;
    this.g = paramInt2;
    this.b = paramInt3;
    this.c = paramInt4;
    this.h = paramInt5;
    this.i = paramInt6;
    this.j = paramInt7;
  }
  
  public static evm a(int paramInt, evn paramevn) {
    return a(paramInt, paramevn, true);
  }
  
  public static evm a(int paramInt, evn paramevn, epz paramepz1, epz paramepz2, boolean paramBoolean) {
    for (evm evm1 : d) {
      if ((paramevn != evn.FORCE_SQUARE || !evm1.e) && (paramevn != evn.FORCE_RECTANGLE || evm1.e) && (paramepz1 == null || (evm1.f() >= paramepz1.a() && evm1.g() >= paramepz1.b())) && (paramepz2 == null || (evm1.f() <= paramepz2.a() && evm1.g() <= paramepz2.b())) && paramInt <= evm1.f)
        return evm1; 
    } 
    if (paramBoolean)
      throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + paramInt); 
    return null;
  }
  
  private static evm a(int paramInt, evn paramevn, boolean paramBoolean) {
    return a(paramInt, paramevn, null, null, paramBoolean);
  }
  
  public static evm a(int paramInt, boolean paramBoolean1, boolean paramBoolean2) {
    if (paramBoolean1) {
      evn evn1 = evn.FORCE_NONE;
      return a(paramInt, evn1, paramBoolean2);
    } 
    evn evn = evn.FORCE_SQUARE;
    return a(paramInt, evn, paramBoolean2);
  }
  
  public static void a(evm[] paramArrayOfevm) {
    d = paramArrayOfevm;
  }
  
  public static evm b(int paramInt) {
    return a(paramInt, evn.FORCE_NONE, true);
  }
  
  public int a() {
    return this.f / this.i;
  }
  
  public int a(int paramInt) {
    return this.i;
  }
  
  final int b() {
    byte b = 2;
    switch (this.h) {
      default:
        throw new IllegalStateException("Cannot handle this number of data regions");
      case 1:
        b = 1;
      case 2:
      case 4:
        return b;
      case 16:
        return 4;
      case 36:
        break;
    } 
    return 6;
  }
  
  final int c() {
    byte b = 1;
    switch (this.h) {
      default:
        throw new IllegalStateException("Cannot handle this number of data regions");
      case 4:
        b = 2;
      case 1:
      case 2:
        return b;
      case 16:
        return 4;
      case 36:
        break;
    } 
    return 6;
  }
  
  public final int c(int paramInt) {
    return this.j;
  }
  
  public final int d() {
    return b() * this.b;
  }
  
  public final int e() {
    return c() * this.c;
  }
  
  public final int f() {
    return d() + b() * 2;
  }
  
  public final int g() {
    return e() + c() * 2;
  }
  
  public int h() {
    return this.f + this.g;
  }
  
  public final int i() {
    return this.f;
  }
  
  public final int j() {
    return this.g;
  }
  
  public final String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.e) {
      String str1 = "Rectangular Symbol:";
      stringBuilder.append(str1);
      stringBuilder.append(" data region ").append(this.b).append('x').append(this.c);
      stringBuilder.append(", symbol size ").append(f()).append('x').append(g());
      stringBuilder.append(", symbol data size ").append(d()).append('x').append(e());
      stringBuilder.append(", codewords ").append(this.f).append('+').append(this.g);
      return stringBuilder.toString();
    } 
    String str = "Square Symbol:";
    stringBuilder.append(str);
    stringBuilder.append(" data region ").append(this.b).append('x').append(this.c);
    stringBuilder.append(", symbol size ").append(f()).append('x').append(g());
    stringBuilder.append(", symbol data size ").append(d()).append('x').append(e());
    stringBuilder.append(", codewords ").append(this.f).append('+').append(this.g);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
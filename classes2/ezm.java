import java.util.List;
import java.util.Map;

public class ezm implements eqk {
  private static final eqo[] a = new eqo[0];
  
  private final fab b = new fab();
  
  private static float a(int[] paramArrayOfint, ett paramett) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual g : ()I
    //   4: istore #5
    //   6: aload_1
    //   7: invokevirtual f : ()I
    //   10: istore #6
    //   12: aload_0
    //   13: iconst_0
    //   14: iaload
    //   15: istore_3
    //   16: aload_0
    //   17: iconst_1
    //   18: iaload
    //   19: istore_2
    //   20: iconst_1
    //   21: istore #7
    //   23: iconst_0
    //   24: istore #4
    //   26: iload_3
    //   27: iload #6
    //   29: if_icmpge -> 61
    //   32: iload_2
    //   33: iload #5
    //   35: if_icmpge -> 61
    //   38: iload #7
    //   40: aload_1
    //   41: iload_3
    //   42: iload_2
    //   43: invokevirtual a : (II)Z
    //   46: if_icmpeq -> 112
    //   49: iload #4
    //   51: iconst_1
    //   52: iadd
    //   53: istore #4
    //   55: iload #4
    //   57: iconst_5
    //   58: if_icmpne -> 77
    //   61: iload_3
    //   62: iload #6
    //   64: if_icmpeq -> 73
    //   67: iload_2
    //   68: iload #5
    //   70: if_icmpne -> 102
    //   73: invokestatic a : ()Leqh;
    //   76: athrow
    //   77: iload #7
    //   79: ifne -> 96
    //   82: iconst_1
    //   83: istore #7
    //   85: iload_3
    //   86: iconst_1
    //   87: iadd
    //   88: istore_3
    //   89: iload_2
    //   90: iconst_1
    //   91: iadd
    //   92: istore_2
    //   93: goto -> 26
    //   96: iconst_0
    //   97: istore #7
    //   99: goto -> 85
    //   102: iload_3
    //   103: aload_0
    //   104: iconst_0
    //   105: iaload
    //   106: isub
    //   107: i2f
    //   108: ldc 7.0
    //   110: fdiv
    //   111: freturn
    //   112: goto -> 85
  }
  
  private static ett a(ett paramett) {
    int[] arrayOfInt1 = paramett.d();
    int[] arrayOfInt2 = paramett.e();
    if (arrayOfInt1 == null || arrayOfInt2 == null)
      throw eqh.a(); 
    float f = a(arrayOfInt1, paramett);
    int i3 = arrayOfInt1[1];
    int m = arrayOfInt2[1];
    int k = arrayOfInt1[0];
    int j = arrayOfInt2[0];
    if (k >= j || i3 >= m)
      throw eqh.a(); 
    int i = j;
    if (m - i3 != j - k)
      i = m - i3 + k; 
    int n = Math.round((i - k + 1) / f);
    int i1 = Math.round((m - i3 + 1) / f);
    if (n <= 0 || i1 <= 0)
      throw eqh.a(); 
    if (i1 != n)
      throw eqh.a(); 
    int i2 = (int)(f / 2.0F);
    j = i3 + i2;
    k += i2;
    i = (int)((n - 1) * f) + k - i;
    if (i > 0) {
      if (i > i2)
        throw eqh.a(); 
      i = k - i;
    } else {
      i = k;
    } 
    k = (int)((i1 - 1) * f) + j - m;
    if (k > 0) {
      if (k > i2)
        throw eqh.a(); 
      j -= k;
    } 
    ett ett1 = new ett(n, i1);
    for (k = 0; k < i1; k++) {
      i2 = (int)(k * f);
      for (m = 0; m < n; m++) {
        if (paramett.a((int)(m * f) + i, j + i2))
          ett1.b(m, k); 
      } 
    } 
    return ett1;
  }
  
  public eqm a(epw paramepw) {
    return a(paramepw, (Map<epy, ?>)null);
  }
  
  public final eqm a(epw paramepw, Map<epy, ?> paramMap) {
    etw etw;
    eqo[] arrayOfEqo;
    if (paramMap != null && paramMap.containsKey(epy.PURE_BARCODE)) {
      ett ett = a(paramepw.c());
      etw = this.b.a(ett, paramMap);
      arrayOfEqo = a;
    } else {
      ety ety = (new fal(etw.c())).b((Map<epy, ?>)arrayOfEqo);
      etw = this.b.a(ety.d(), (Map<epy, ?>)arrayOfEqo);
      arrayOfEqo = ety.e();
    } 
    if (etw.g() instanceof faf)
      ((faf)etw.g()).a(arrayOfEqo); 
    eqm eqm = new eqm(etw.b(), etw.a(), arrayOfEqo, epu.QR_CODE);
    List<byte[]> list = etw.c();
    if (list != null)
      eqm.a(eqn.BYTE_SEGMENTS, list); 
    String str = etw.d();
    if (str != null)
      eqm.a(eqn.ERROR_CORRECTION_LEVEL, str); 
    if (etw.h()) {
      eqm.a(eqn.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(etw.j()));
      eqm.a(eqn.STRUCTURED_APPEND_PARITY, Integer.valueOf(etw.i()));
    } 
    return eqm;
  }
  
  public void a() {}
  
  protected final fab b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
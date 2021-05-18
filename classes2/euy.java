import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class euy {
  private final ett a;
  
  private final eug b;
  
  public euy(ett paramett) {
    this.a = paramett;
    this.b = new eug(paramett);
  }
  
  private static int a(eqo parameqo1, eqo parameqo2) {
    return eue.a(eqo.a(parameqo1, parameqo2));
  }
  
  private eqo a(eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4, int paramInt) {
    float f1 = a(parameqo1, parameqo2) / paramInt;
    int i = a(parameqo3, parameqo4);
    float f2 = (parameqo4.a() - parameqo3.a()) / i;
    float f3 = (parameqo4.b() - parameqo3.b()) / i;
    eqo eqo1 = new eqo(f2 * f1 + parameqo4.a(), f1 * f3 + parameqo4.b());
    f1 = a(parameqo1, parameqo3) / paramInt;
    paramInt = a(parameqo2, parameqo4);
    f2 = (parameqo4.a() - parameqo2.a()) / paramInt;
    f3 = (parameqo4.b() - parameqo2.b()) / paramInt;
    parameqo4 = new eqo(f2 * f1 + parameqo4.a(), f1 * f3 + parameqo4.b());
    if (!a(eqo1))
      return a(parameqo4) ? parameqo4 : null; 
    parameqo1 = eqo1;
    if (a(parameqo4)) {
      parameqo1 = eqo1;
      if (Math.abs(b(parameqo3, eqo1).c() - b(parameqo2, eqo1).c()) > Math.abs(b(parameqo3, parameqo4).c() - b(parameqo2, parameqo4).c()))
        return parameqo4; 
    } 
    return parameqo1;
  }
  
  private eqo a(eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4, int paramInt1, int paramInt2) {
    float f1 = a(parameqo1, parameqo2) / paramInt1;
    int i = a(parameqo3, parameqo4);
    float f2 = (parameqo4.a() - parameqo3.a()) / i;
    float f3 = (parameqo4.b() - parameqo3.b()) / i;
    eqo eqo1 = new eqo(f2 * f1 + parameqo4.a(), f1 * f3 + parameqo4.b());
    f1 = a(parameqo1, parameqo3) / paramInt2;
    i = a(parameqo2, parameqo4);
    f2 = (parameqo4.a() - parameqo2.a()) / i;
    f3 = (parameqo4.b() - parameqo2.b()) / i;
    parameqo1 = new eqo(f2 * f1 + parameqo4.a(), f1 * f3 + parameqo4.b());
    return !a(eqo1) ? (!a(parameqo1) ? null : parameqo1) : (!a(parameqo1) ? eqo1 : ((Math.abs(paramInt1 - b(parameqo3, eqo1).c()) + Math.abs(paramInt2 - b(parameqo2, eqo1).c()) <= Math.abs(paramInt1 - b(parameqo3, parameqo1).c()) + Math.abs(paramInt2 - b(parameqo2, parameqo1).c())) ? eqo1 : parameqo1));
  }
  
  private static ett a(ett paramett, eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4, int paramInt1, int paramInt2) {
    return eua.a().a(paramett, paramInt1, paramInt2, 0.5F, 0.5F, paramInt1 - 0.5F, 0.5F, paramInt1 - 0.5F, paramInt2 - 0.5F, 0.5F, paramInt2 - 0.5F, parameqo1.a(), parameqo1.b(), parameqo4.a(), parameqo4.b(), parameqo3.a(), parameqo3.b(), parameqo2.a(), parameqo2.b());
  }
  
  private static void a(Map<eqo, Integer> paramMap, eqo parameqo) {
    int i;
    Integer integer = paramMap.get(parameqo);
    if (integer == null) {
      i = 1;
    } else {
      i = integer.intValue() + 1;
    } 
    paramMap.put(parameqo, Integer.valueOf(i));
  }
  
  private boolean a(eqo parameqo) {
    return (parameqo.a() >= 0.0F && parameqo.a() < this.a.f() && parameqo.b() > 0.0F && parameqo.b() < this.a.g());
  }
  
  private eva b(eqo parameqo1, eqo parameqo2) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual a : ()F
    //   4: f2i
    //   5: istore #4
    //   7: aload_1
    //   8: invokevirtual b : ()F
    //   11: f2i
    //   12: istore_3
    //   13: aload_2
    //   14: invokevirtual a : ()F
    //   17: f2i
    //   18: istore #8
    //   20: aload_2
    //   21: invokevirtual b : ()F
    //   24: f2i
    //   25: istore #9
    //   27: iload #9
    //   29: iload_3
    //   30: isub
    //   31: invokestatic abs : (I)I
    //   34: iload #8
    //   36: iload #4
    //   38: isub
    //   39: invokestatic abs : (I)I
    //   42: if_icmple -> 244
    //   45: iconst_1
    //   46: istore #7
    //   48: iload #7
    //   50: ifeq -> 337
    //   53: iload #9
    //   55: iload_3
    //   56: isub
    //   57: invokestatic abs : (I)I
    //   60: istore #14
    //   62: iload #8
    //   64: iload #4
    //   66: isub
    //   67: invokestatic abs : (I)I
    //   70: istore #15
    //   72: iload #14
    //   74: ineg
    //   75: iconst_2
    //   76: idiv
    //   77: istore #12
    //   79: iload #4
    //   81: iload #8
    //   83: if_icmpge -> 250
    //   86: iconst_1
    //   87: istore #10
    //   89: iload_3
    //   90: iload #9
    //   92: if_icmpge -> 256
    //   95: iconst_1
    //   96: istore #11
    //   98: iconst_0
    //   99: istore #13
    //   101: aload_0
    //   102: getfield a : Lett;
    //   105: astore #19
    //   107: iload #7
    //   109: ifeq -> 262
    //   112: iload #4
    //   114: istore #5
    //   116: iload #7
    //   118: ifeq -> 268
    //   121: iload_3
    //   122: istore #6
    //   124: aload #19
    //   126: iload #5
    //   128: iload #6
    //   130: invokevirtual a : (II)Z
    //   133: istore #16
    //   135: iload #13
    //   137: istore #5
    //   139: iload_3
    //   140: iload #9
    //   142: if_icmpeq -> 330
    //   145: aload_0
    //   146: getfield a : Lett;
    //   149: astore #19
    //   151: iload #7
    //   153: ifeq -> 275
    //   156: iload #4
    //   158: istore #6
    //   160: iload #7
    //   162: ifeq -> 281
    //   165: iload_3
    //   166: istore #13
    //   168: aload #19
    //   170: iload #6
    //   172: iload #13
    //   174: invokevirtual a : (II)Z
    //   177: istore #18
    //   179: iload #5
    //   181: istore #6
    //   183: iload #16
    //   185: istore #17
    //   187: iload #18
    //   189: iload #16
    //   191: if_icmpeq -> 204
    //   194: iload #5
    //   196: iconst_1
    //   197: iadd
    //   198: istore #6
    //   200: iload #18
    //   202: istore #17
    //   204: iload #12
    //   206: iload #15
    //   208: iadd
    //   209: istore #13
    //   211: iload #13
    //   213: istore #5
    //   215: iload #4
    //   217: istore #12
    //   219: iload #13
    //   221: ifle -> 302
    //   224: iload #4
    //   226: iload #8
    //   228: if_icmpne -> 288
    //   231: new eva
    //   234: dup
    //   235: aload_1
    //   236: aload_2
    //   237: iload #6
    //   239: aconst_null
    //   240: invokespecial <init> : (Leqo;Leqo;ILeuz;)V
    //   243: areturn
    //   244: iconst_0
    //   245: istore #7
    //   247: goto -> 48
    //   250: iconst_m1
    //   251: istore #10
    //   253: goto -> 89
    //   256: iconst_m1
    //   257: istore #11
    //   259: goto -> 98
    //   262: iload_3
    //   263: istore #5
    //   265: goto -> 116
    //   268: iload #4
    //   270: istore #6
    //   272: goto -> 124
    //   275: iload_3
    //   276: istore #6
    //   278: goto -> 160
    //   281: iload #4
    //   283: istore #13
    //   285: goto -> 168
    //   288: iload #4
    //   290: iload #10
    //   292: iadd
    //   293: istore #12
    //   295: iload #13
    //   297: iload #14
    //   299: isub
    //   300: istore #5
    //   302: iload_3
    //   303: iload #11
    //   305: iadd
    //   306: istore_3
    //   307: iload #5
    //   309: istore #13
    //   311: iload #12
    //   313: istore #4
    //   315: iload #6
    //   317: istore #5
    //   319: iload #17
    //   321: istore #16
    //   323: iload #13
    //   325: istore #12
    //   327: goto -> 139
    //   330: iload #5
    //   332: istore #6
    //   334: goto -> 231
    //   337: iload #8
    //   339: istore #5
    //   341: iload #9
    //   343: istore #8
    //   345: iload #4
    //   347: istore #6
    //   349: iload #5
    //   351: istore #9
    //   353: iload_3
    //   354: istore #4
    //   356: iload #6
    //   358: istore_3
    //   359: goto -> 53
  }
  
  public ety a() {
    eqo eqo1;
    ett ett2;
    eqo[] arrayOfEqo1 = this.b.a();
    eqo eqo5 = arrayOfEqo1[0];
    eqo eqo6 = arrayOfEqo1[1];
    eqo eqo7 = arrayOfEqo1[2];
    eqo eqo8 = arrayOfEqo1[3];
    ArrayList<eva> arrayList = new ArrayList(4);
    arrayList.add(b(eqo5, eqo6));
    arrayList.add(b(eqo5, eqo7));
    arrayList.add(b(eqo6, eqo8));
    arrayList.add(b(eqo7, eqo8));
    Collections.sort(arrayList, new evb(null));
    eva eva1 = arrayList.get(0);
    eva eva2 = arrayList.get(1);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    a((Map)hashMap, eva1.a());
    a((Map)hashMap, eva1.b());
    a((Map)hashMap, eva2.a());
    a((Map)hashMap, eva2.b());
    eva2 = null;
    eva eva3 = null;
    eva1 = null;
    for (Map.Entry<Object, Object> entry : hashMap.entrySet()) {
      eqo eqo11;
      eva eva4;
      eqo eqo12 = (eqo)entry.getKey();
      if (((Integer)entry.getValue()).intValue() == 2) {
        eva3 = eva2;
        eqo11 = eqo12;
      } else {
        eva eva;
        eqo eqo;
        if (eqo11 == null) {
          eva = eva3;
          eqo = eqo12;
        } else {
          eqo1 = eqo;
          eva4 = eva;
          eqo11 = eqo1;
          eqo1 = eqo12;
        } 
      } 
      eva eva5 = eva4;
      eqo3 = eqo11;
      eva2 = eva5;
    } 
    if (eva2 == null || eqo3 == null || eqo1 == null)
      throw eqh.a(); 
    eqo[] arrayOfEqo2 = new eqo[3];
    arrayOfEqo2[0] = (eqo)eva2;
    arrayOfEqo2[1] = eqo3;
    arrayOfEqo2[2] = eqo1;
    eqo.a(arrayOfEqo2);
    eqo eqo4 = arrayOfEqo2[0];
    eqo eqo9 = arrayOfEqo2[1];
    eqo eqo10 = arrayOfEqo2[2];
    if (!hashMap.containsKey(eqo5)) {
      eqo1 = eqo5;
    } else if (!hashMap.containsKey(eqo6)) {
      eqo1 = eqo6;
    } else if (!hashMap.containsKey(eqo7)) {
      eqo1 = eqo7;
    } else {
      eqo1 = eqo8;
    } 
    int k = b(eqo10, eqo1).c();
    int j = b(eqo4, eqo1).c();
    int i = k;
    if ((k & 0x1) == 1)
      i = k + 1; 
    k = i + 2;
    i = j;
    if ((j & 0x1) == 1)
      i = j + 1; 
    i += 2;
    if (k * 4 >= i * 7 || i * 4 >= k * 7) {
      eqo3 = a(eqo9, eqo4, eqo10, eqo1, k, i);
      eqo eqo = eqo3;
      if (eqo3 == null)
        eqo = eqo1; 
      j = b(eqo10, eqo).c();
      k = b(eqo4, eqo).c();
      i = j;
      if ((j & 0x1) == 1)
        i = j + 1; 
      j = k;
      if ((k & 0x1) == 1)
        j = k + 1; 
      ett1 = a(this.a, eqo10, eqo9, eqo4, eqo, i, j);
      return new ety(ett1, new eqo[] { eqo10, eqo9, eqo4, eqo });
    } 
    eqo eqo3 = a(eqo9, eqo4, eqo10, (eqo)ett1, Math.min(i, k));
    eqo eqo2 = eqo3;
    if (eqo3 == null)
      ett2 = ett1; 
    j = Math.max(b(eqo10, (eqo)ett2).c(), b(eqo4, (eqo)ett2).c()) + 1;
    i = j;
    if ((j & 0x1) == 1)
      i = j + 1; 
    ett ett1 = a(this.a, eqo10, eqo9, eqo4, (eqo)ett2, i, i);
    return new ety(ett1, new eqo[] { eqo10, eqo9, eqo4, (eqo)ett2 });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
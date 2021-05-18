import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class elt<K, V> extends AbstractMap<K, V> implements Serializable {
  private static final Comparator<Comparable> h = new elu();
  
  Comparator<? super K> a;
  
  emc<K, V>[] b;
  
  final emc<K, V> c;
  
  int d;
  
  int e;
  
  int f;
  
  private elx i;
  
  private elz j;
  
  public elt() {
    this((Comparator)h);
  }
  
  public elt(Comparator<? super K> paramComparator) {
    Comparator<Comparable> comparator;
    this.d = 0;
    this.e = 0;
    if (paramComparator == null)
      comparator = h; 
    this.a = (Comparator)comparator;
    this.c = new emc<K, V>();
    this.b = (emc<K, V>[])new emc[16];
    this.f = this.b.length / 2 + this.b.length / 4;
  }
  
  private static int a(int paramInt) {
    paramInt = paramInt >>> 20 ^ paramInt >>> 12 ^ paramInt;
    return paramInt >>> 4 ^ paramInt >>> 7 ^ paramInt;
  }
  
  private void a() {
    this.b = a(this.b);
    this.f = this.b.length / 2 + this.b.length / 4;
  }
  
  private void a(emc<K, V> paramemc) {
    byte b = 0;
    emc<K, V> emc1 = paramemc.b;
    emc<K, V> emc2 = paramemc.c;
    emc<K, V> emc3 = emc2.b;
    emc<K, V> emc4 = emc2.c;
    paramemc.c = emc3;
    if (emc3 != null)
      emc3.a = paramemc; 
    a(paramemc, emc2);
    emc2.b = paramemc;
    paramemc.a = emc2;
    if (emc1 != null) {
      i = emc1.i;
    } else {
      i = 0;
    } 
    if (emc3 != null) {
      j = emc3.i;
    } else {
      j = 0;
    } 
    paramemc.i = Math.max(i, j) + 1;
    int j = paramemc.i;
    int i = b;
    if (emc4 != null)
      i = emc4.i; 
    emc2.i = Math.max(j, i) + 1;
  }
  
  private void a(emc<K, V> paramemc1, emc<K, V> paramemc2) {
    emc<K, V> emc1 = paramemc1.a;
    paramemc1.a = null;
    if (paramemc2 != null)
      paramemc2.a = emc1; 
    if (emc1 != null) {
      if (emc1.b == paramemc1) {
        emc1.b = paramemc2;
        return;
      } 
      if (!g && emc1.c != paramemc1)
        throw new AssertionError(); 
      emc1.c = paramemc2;
      return;
    } 
    int i = paramemc1.g;
    int j = this.b.length;
    this.b[i & j - 1] = paramemc2;
  }
  
  private boolean a(Object paramObject1, Object paramObject2) {
    return (paramObject1 == paramObject2 || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
  
  static <K, V> emc<K, V>[] a(emc<K, V>[] paramArrayOfemc) {
    int j = paramArrayOfemc.length;
    emc[] arrayOfEmc = new emc[j * 2];
    elw<Object, Object> elw = new elw<Object, Object>();
    elv<Object, Object> elv1 = new elv<Object, Object>();
    elv<Object, Object> elv2 = new elv<Object, Object>();
    int i = 0;
    label38: while (i < j) {
      emc<K, V> emc1 = paramArrayOfemc[i];
      if (emc1 == null) {
        i++;
        continue;
      } 
      elw.a((emc)emc1);
      int m = 0;
      int k = 0;
      while (true) {
        emc<Object, Object> emc2 = elw.a();
        if (emc2 != null) {
          if ((emc2.g & j) == 0) {
            k++;
            continue;
          } 
          m++;
          continue;
        } 
        elv1.a(k);
        elv2.a(m);
        elw.a((emc)emc1);
        while (true) {
          emc1 = (emc)elw.a();
          if (emc1 != null) {
            if ((emc1.g & j) == 0) {
              elv1.a((emc)emc1);
              continue;
            } 
            elv2.a((emc)emc1);
            continue;
          } 
          if (k > 0) {
            emc1 = (emc)elv1.a();
          } else {
            emc1 = null;
          } 
          arrayOfEmc[i] = emc1;
          if (m > 0) {
            emc1 = (emc)elv2.a();
          } else {
            emc1 = null;
          } 
          arrayOfEmc[i + j] = emc1;
          continue label38;
        } 
        break;
      } 
    } 
    return (emc<K, V>[])arrayOfEmc;
  }
  
  private void b(emc<K, V> paramemc) {
    byte b = 0;
    emc<K, V> emc1 = paramemc.b;
    emc<K, V> emc2 = paramemc.c;
    emc<K, V> emc3 = emc1.b;
    emc<K, V> emc4 = emc1.c;
    paramemc.b = emc4;
    if (emc4 != null)
      emc4.a = paramemc; 
    a(paramemc, emc1);
    emc1.c = paramemc;
    paramemc.a = emc1;
    if (emc2 != null) {
      i = emc2.i;
    } else {
      i = 0;
    } 
    if (emc4 != null) {
      j = emc4.i;
    } else {
      j = 0;
    } 
    paramemc.i = Math.max(i, j) + 1;
    int j = paramemc.i;
    int i = b;
    if (emc3 != null)
      i = emc3.i; 
    emc1.i = Math.max(j, i) + 1;
  }
  
  private void b(emc<K, V> paramemc, boolean paramBoolean) {
    while (true) {
      int i;
      byte b;
      int j;
      emc<K, V> emc1;
      if (paramemc != null) {
        emc1 = paramemc.b;
        emc<K, V> emc2 = paramemc.c;
        if (emc1 != null) {
          i = emc1.i;
        } else {
          i = 0;
        } 
        if (emc2 != null) {
          b = emc2.i;
        } else {
          b = 0;
        } 
        j = i - b;
        if (j == -2) {
          emc1 = emc2.b;
          emc<K, V> emc3 = emc2.c;
          if (emc3 != null) {
            i = emc3.i;
          } else {
            i = 0;
          } 
          if (emc1 != null) {
            b = emc1.i;
          } else {
            b = 0;
          } 
          i = b - i;
          if (i == -1 || (i == 0 && !paramBoolean)) {
            a(paramemc);
          } else {
            if (!g && i != 1)
              throw new AssertionError(); 
            b(emc2);
            a(paramemc);
          } 
          if (paramBoolean)
            return; 
          continue;
        } 
      } else {
        return;
      } 
      if (j == 2) {
        emc<K, V> emc2 = emc1.b;
        emc<K, V> emc3 = emc1.c;
        if (emc3 != null) {
          i = emc3.i;
        } else {
          i = 0;
        } 
        if (emc2 != null) {
          b = emc2.i;
        } else {
          b = 0;
        } 
        i = b - i;
        if (i == 1 || (i == 0 && !paramBoolean)) {
          b(paramemc);
        } else {
          if (!g && i != -1)
            throw new AssertionError(); 
          a(emc1);
          b(paramemc);
        } 
        if (!paramBoolean)
          continue; 
        return;
      } 
      if (j == 0) {
        paramemc.i = i + 1;
        if (paramBoolean)
          return; 
      } else {
        if (!g && j != -1 && j != 1)
          throw new AssertionError(); 
        paramemc.i = Math.max(i, b) + 1;
        if (!paramBoolean)
          break; 
      } 
      continue;
      paramemc = paramemc.a;
    } 
  }
  
  private Object writeReplace() {
    return new LinkedHashMap<Object, Object>(this);
  }
  
  emc<K, V> a(Object paramObject) {
    emc<K, V> emc1 = null;
    if (paramObject != null)
      try {
        return a((K)paramObject, false);
      } catch (ClassCastException classCastException) {
        return null;
      }  
    return emc1;
  }
  
  emc<K, V> a(K paramK, boolean paramBoolean) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #9
    //   3: aload_0
    //   4: getfield a : Ljava/util/Comparator;
    //   7: astore #11
    //   9: aload_0
    //   10: getfield b : [Lemc;
    //   13: astore #10
    //   15: aload_1
    //   16: invokevirtual hashCode : ()I
    //   19: invokestatic a : (I)I
    //   22: istore #4
    //   24: iload #4
    //   26: aload #10
    //   28: arraylength
    //   29: iconst_1
    //   30: isub
    //   31: iand
    //   32: istore #5
    //   34: aload #10
    //   36: iload #5
    //   38: aaload
    //   39: astore #6
    //   41: aload #6
    //   43: ifnull -> 323
    //   46: aload #11
    //   48: getstatic elt.h : Ljava/util/Comparator;
    //   51: if_acmpne -> 89
    //   54: aload_1
    //   55: checkcast java/lang/Comparable
    //   58: astore #8
    //   60: aload #8
    //   62: ifnull -> 95
    //   65: aload #8
    //   67: aload #6
    //   69: getfield f : Ljava/lang/Object;
    //   72: invokeinterface compareTo : (Ljava/lang/Object;)I
    //   77: istore_3
    //   78: iload_3
    //   79: ifne -> 112
    //   82: aload #6
    //   84: astore #7
    //   86: aload #7
    //   88: areturn
    //   89: aconst_null
    //   90: astore #8
    //   92: goto -> 60
    //   95: aload #11
    //   97: aload_1
    //   98: aload #6
    //   100: getfield f : Ljava/lang/Object;
    //   103: invokeinterface compare : (Ljava/lang/Object;Ljava/lang/Object;)I
    //   108: istore_3
    //   109: goto -> 78
    //   112: iload_3
    //   113: ifge -> 195
    //   116: aload #6
    //   118: getfield b : Lemc;
    //   121: astore #7
    //   123: aload #7
    //   125: ifnonnull -> 205
    //   128: aload #9
    //   130: astore #7
    //   132: iload_2
    //   133: ifeq -> 86
    //   136: aload_0
    //   137: getfield c : Lemc;
    //   140: astore #7
    //   142: aload #6
    //   144: ifnonnull -> 274
    //   147: aload #11
    //   149: getstatic elt.h : Ljava/util/Comparator;
    //   152: if_acmpne -> 212
    //   155: aload_1
    //   156: instanceof java/lang/Comparable
    //   159: ifne -> 212
    //   162: new java/lang/ClassCastException
    //   165: dup
    //   166: new java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial <init> : ()V
    //   173: aload_1
    //   174: invokevirtual getClass : ()Ljava/lang/Class;
    //   177: invokevirtual getName : ()Ljava/lang/String;
    //   180: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: ldc ' is not Comparable'
    //   185: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual toString : ()Ljava/lang/String;
    //   191: invokespecial <init> : (Ljava/lang/String;)V
    //   194: athrow
    //   195: aload #6
    //   197: getfield c : Lemc;
    //   200: astore #7
    //   202: goto -> 123
    //   205: aload #7
    //   207: astore #6
    //   209: goto -> 60
    //   212: new emc
    //   215: dup
    //   216: aload #6
    //   218: aload_1
    //   219: iload #4
    //   221: aload #7
    //   223: aload #7
    //   225: getfield e : Lemc;
    //   228: invokespecial <init> : (Lemc;Ljava/lang/Object;ILemc;Lemc;)V
    //   231: astore_1
    //   232: aload #10
    //   234: iload #5
    //   236: aload_1
    //   237: aastore
    //   238: aload_0
    //   239: getfield d : I
    //   242: istore_3
    //   243: aload_0
    //   244: iload_3
    //   245: iconst_1
    //   246: iadd
    //   247: putfield d : I
    //   250: iload_3
    //   251: aload_0
    //   252: getfield f : I
    //   255: if_icmple -> 262
    //   258: aload_0
    //   259: invokespecial a : ()V
    //   262: aload_0
    //   263: aload_0
    //   264: getfield e : I
    //   267: iconst_1
    //   268: iadd
    //   269: putfield e : I
    //   272: aload_1
    //   273: areturn
    //   274: new emc
    //   277: dup
    //   278: aload #6
    //   280: aload_1
    //   281: iload #4
    //   283: aload #7
    //   285: aload #7
    //   287: getfield e : Lemc;
    //   290: invokespecial <init> : (Lemc;Ljava/lang/Object;ILemc;Lemc;)V
    //   293: astore_1
    //   294: iload_3
    //   295: ifge -> 314
    //   298: aload #6
    //   300: aload_1
    //   301: putfield b : Lemc;
    //   304: aload_0
    //   305: aload #6
    //   307: iconst_1
    //   308: invokespecial b : (Lemc;Z)V
    //   311: goto -> 238
    //   314: aload #6
    //   316: aload_1
    //   317: putfield c : Lemc;
    //   320: goto -> 304
    //   323: iconst_0
    //   324: istore_3
    //   325: goto -> 128
  }
  
  emc<K, V> a(Map.Entry<?, ?> paramEntry) {
    boolean bool;
    emc<K, V> emc1 = a(paramEntry.getKey());
    if (emc1 != null && a(emc1.h, paramEntry.getValue())) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool ? emc1 : null;
  }
  
  void a(emc<K, V> paramemc, boolean paramBoolean) {
    int i = 0;
    if (paramBoolean) {
      paramemc.e.d = paramemc.d;
      paramemc.d.e = paramemc.e;
      paramemc.e = null;
      paramemc.d = null;
    } 
    emc<K, V> emc1 = paramemc.b;
    emc<K, V> emc2 = paramemc.c;
    emc<K, V> emc3 = paramemc.a;
    if (emc1 != null && emc2 != null) {
      boolean bool;
      if (emc1.i > emc2.i) {
        emc1 = emc1.b();
      } else {
        emc1 = emc2.a();
      } 
      a(emc1, false);
      emc2 = paramemc.b;
      if (emc2 != null) {
        bool = emc2.i;
        emc1.b = emc2;
        emc2.a = emc1;
        paramemc.b = null;
      } else {
        bool = false;
      } 
      emc2 = paramemc.c;
      if (emc2 != null) {
        i = emc2.i;
        emc1.c = emc2;
        emc2.a = emc1;
        paramemc.c = null;
      } 
      emc1.i = Math.max(bool, i) + 1;
      a(paramemc, emc1);
      return;
    } 
    if (emc1 != null) {
      a(paramemc, emc1);
      paramemc.b = null;
    } else if (emc2 != null) {
      a(paramemc, emc2);
      paramemc.c = null;
    } else {
      a(paramemc, (emc<K, V>)null);
    } 
    b(emc3, false);
    this.d--;
    this.e++;
  }
  
  emc<K, V> b(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)a(paramObject);
    if (paramObject != null)
      a((emc<K, V>)paramObject, true); 
    return (emc<K, V>)paramObject;
  }
  
  public void clear() {
    Arrays.fill((Object[])this.b, (Object)null);
    this.d = 0;
    this.e++;
    emc<K, V> emc2 = this.c;
    for (emc<K, V> emc1 = emc2.d; emc1 != emc2; emc1 = emc3) {
      emc<K, V> emc3 = emc1.d;
      emc1.e = null;
      emc1.d = null;
    } 
    emc2.e = emc2;
    emc2.d = emc2;
  }
  
  public boolean containsKey(Object paramObject) {
    return (a(paramObject) != null);
  }
  
  public Set<Map.Entry<K, V>> entrySet() {
    elx elx2 = this.i;
    if (elx2 != null)
      return (Set<Map.Entry<K, V>>)elx2; 
    elx elx1 = new elx(this);
    this.i = (elx)elx1;
    return elx1;
  }
  
  public V get(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)a(paramObject);
    return (paramObject != null) ? ((emc)paramObject).h : null;
  }
  
  public Set<K> keySet() {
    elz elz2 = this.j;
    if (elz2 != null)
      return (Set<K>)elz2; 
    elz elz1 = new elz(this);
    this.j = (elz)elz1;
    return elz1;
  }
  
  public V put(K paramK, V paramV) {
    if (paramK == null)
      throw new NullPointerException("key == null"); 
    emc<K, V> emc1 = a(paramK, true);
    V v = emc1.h;
    emc1.h = paramV;
    return v;
  }
  
  public V remove(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)b(paramObject);
    return (paramObject != null) ? ((emc)paramObject).h : null;
  }
  
  public int size() {
    return this.d;
  }
  
  static {
    boolean bool;
    if (!elt.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    g = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
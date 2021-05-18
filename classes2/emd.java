import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class emd<K, V> extends AbstractMap<K, V> implements Serializable {
  private static final Comparator<Comparable> g = new eme();
  
  Comparator<? super K> a;
  
  emk<K, V> b;
  
  int c;
  
  int d;
  
  final emk<K, V> e;
  
  private emf h;
  
  private emh i;
  
  public emd() {
    this((Comparator)g);
  }
  
  public emd(Comparator<? super K> paramComparator) {
    Comparator<Comparable> comparator;
    this.c = 0;
    this.d = 0;
    this.e = new emk<K, V>();
    if (paramComparator == null)
      comparator = g; 
    this.a = (Comparator)comparator;
  }
  
  private void a(emk<K, V> paramemk) {
    byte b = 0;
    emk<K, V> emk1 = paramemk.b;
    emk<K, V> emk2 = paramemk.c;
    emk<K, V> emk3 = emk2.b;
    emk<K, V> emk4 = emk2.c;
    paramemk.c = emk3;
    if (emk3 != null)
      emk3.a = paramemk; 
    a(paramemk, emk2);
    emk2.b = paramemk;
    paramemk.a = emk2;
    if (emk1 != null) {
      i = emk1.h;
    } else {
      i = 0;
    } 
    if (emk3 != null) {
      j = emk3.h;
    } else {
      j = 0;
    } 
    paramemk.h = Math.max(i, j) + 1;
    int j = paramemk.h;
    int i = b;
    if (emk4 != null)
      i = emk4.h; 
    emk2.h = Math.max(j, i) + 1;
  }
  
  private void a(emk<K, V> paramemk1, emk<K, V> paramemk2) {
    emk<K, V> emk1 = paramemk1.a;
    paramemk1.a = null;
    if (paramemk2 != null)
      paramemk2.a = emk1; 
    if (emk1 != null) {
      if (emk1.b == paramemk1) {
        emk1.b = paramemk2;
        return;
      } 
      if (!f && emk1.c != paramemk1)
        throw new AssertionError(); 
      emk1.c = paramemk2;
      return;
    } 
    this.b = paramemk2;
  }
  
  private boolean a(Object paramObject1, Object paramObject2) {
    return (paramObject1 == paramObject2 || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
  
  private void b(emk<K, V> paramemk) {
    byte b = 0;
    emk<K, V> emk1 = paramemk.b;
    emk<K, V> emk2 = paramemk.c;
    emk<K, V> emk3 = emk1.b;
    emk<K, V> emk4 = emk1.c;
    paramemk.b = emk4;
    if (emk4 != null)
      emk4.a = paramemk; 
    a(paramemk, emk1);
    emk1.c = paramemk;
    paramemk.a = emk1;
    if (emk2 != null) {
      i = emk2.h;
    } else {
      i = 0;
    } 
    if (emk4 != null) {
      j = emk4.h;
    } else {
      j = 0;
    } 
    paramemk.h = Math.max(i, j) + 1;
    int j = paramemk.h;
    int i = b;
    if (emk3 != null)
      i = emk3.h; 
    emk1.h = Math.max(j, i) + 1;
  }
  
  private void b(emk<K, V> paramemk, boolean paramBoolean) {
    while (true) {
      int i;
      byte b;
      int j;
      emk<K, V> emk1;
      if (paramemk != null) {
        emk1 = paramemk.b;
        emk<K, V> emk2 = paramemk.c;
        if (emk1 != null) {
          i = emk1.h;
        } else {
          i = 0;
        } 
        if (emk2 != null) {
          b = emk2.h;
        } else {
          b = 0;
        } 
        j = i - b;
        if (j == -2) {
          emk1 = emk2.b;
          emk<K, V> emk3 = emk2.c;
          if (emk3 != null) {
            i = emk3.h;
          } else {
            i = 0;
          } 
          if (emk1 != null) {
            b = emk1.h;
          } else {
            b = 0;
          } 
          i = b - i;
          if (i == -1 || (i == 0 && !paramBoolean)) {
            a(paramemk);
          } else {
            if (!f && i != 1)
              throw new AssertionError(); 
            b(emk2);
            a(paramemk);
          } 
          if (paramBoolean)
            return; 
          continue;
        } 
      } else {
        return;
      } 
      if (j == 2) {
        emk<K, V> emk2 = emk1.b;
        emk<K, V> emk3 = emk1.c;
        if (emk3 != null) {
          i = emk3.h;
        } else {
          i = 0;
        } 
        if (emk2 != null) {
          b = emk2.h;
        } else {
          b = 0;
        } 
        i = b - i;
        if (i == 1 || (i == 0 && !paramBoolean)) {
          b(paramemk);
        } else {
          if (!f && i != -1)
            throw new AssertionError(); 
          a(emk1);
          b(paramemk);
        } 
        if (!paramBoolean)
          continue; 
        return;
      } 
      if (j == 0) {
        paramemk.h = i + 1;
        if (paramBoolean)
          return; 
      } else {
        if (!f && j != -1 && j != 1)
          throw new AssertionError(); 
        paramemk.h = Math.max(i, b) + 1;
        if (!paramBoolean)
          break; 
      } 
      continue;
      paramemk = paramemk.a;
    } 
  }
  
  private Object writeReplace() {
    return new LinkedHashMap<Object, Object>(this);
  }
  
  emk<K, V> a(Object paramObject) {
    emk<K, V> emk1 = null;
    if (paramObject != null)
      try {
        return a((K)paramObject, false);
      } catch (ClassCastException classCastException) {
        return null;
      }  
    return emk1;
  }
  
  emk<K, V> a(K paramK, boolean paramBoolean) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #7
    //   3: aload_0
    //   4: getfield a : Ljava/util/Comparator;
    //   7: astore #8
    //   9: aload_0
    //   10: getfield b : Lemk;
    //   13: astore #4
    //   15: aload #4
    //   17: ifnull -> 278
    //   20: aload #8
    //   22: getstatic emd.g : Ljava/util/Comparator;
    //   25: if_acmpne -> 63
    //   28: aload_1
    //   29: checkcast java/lang/Comparable
    //   32: astore #6
    //   34: aload #6
    //   36: ifnull -> 69
    //   39: aload #6
    //   41: aload #4
    //   43: getfield f : Ljava/lang/Object;
    //   46: invokeinterface compareTo : (Ljava/lang/Object;)I
    //   51: istore_3
    //   52: iload_3
    //   53: ifne -> 86
    //   56: aload #4
    //   58: astore #5
    //   60: aload #5
    //   62: areturn
    //   63: aconst_null
    //   64: astore #6
    //   66: goto -> 34
    //   69: aload #8
    //   71: aload_1
    //   72: aload #4
    //   74: getfield f : Ljava/lang/Object;
    //   77: invokeinterface compare : (Ljava/lang/Object;Ljava/lang/Object;)I
    //   82: istore_3
    //   83: goto -> 52
    //   86: iload_3
    //   87: ifge -> 169
    //   90: aload #4
    //   92: getfield b : Lemk;
    //   95: astore #5
    //   97: aload #5
    //   99: ifnonnull -> 179
    //   102: aload #7
    //   104: astore #5
    //   106: iload_2
    //   107: ifeq -> 60
    //   110: aload_0
    //   111: getfield e : Lemk;
    //   114: astore #5
    //   116: aload #4
    //   118: ifnonnull -> 231
    //   121: aload #8
    //   123: getstatic emd.g : Ljava/util/Comparator;
    //   126: if_acmpne -> 186
    //   129: aload_1
    //   130: instanceof java/lang/Comparable
    //   133: ifne -> 186
    //   136: new java/lang/ClassCastException
    //   139: dup
    //   140: new java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial <init> : ()V
    //   147: aload_1
    //   148: invokevirtual getClass : ()Ljava/lang/Class;
    //   151: invokevirtual getName : ()Ljava/lang/String;
    //   154: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc ' is not Comparable'
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual toString : ()Ljava/lang/String;
    //   165: invokespecial <init> : (Ljava/lang/String;)V
    //   168: athrow
    //   169: aload #4
    //   171: getfield c : Lemk;
    //   174: astore #5
    //   176: goto -> 97
    //   179: aload #5
    //   181: astore #4
    //   183: goto -> 34
    //   186: new emk
    //   189: dup
    //   190: aload #4
    //   192: aload_1
    //   193: aload #5
    //   195: aload #5
    //   197: getfield e : Lemk;
    //   200: invokespecial <init> : (Lemk;Ljava/lang/Object;Lemk;Lemk;)V
    //   203: astore_1
    //   204: aload_0
    //   205: aload_1
    //   206: putfield b : Lemk;
    //   209: aload_0
    //   210: aload_0
    //   211: getfield c : I
    //   214: iconst_1
    //   215: iadd
    //   216: putfield c : I
    //   219: aload_0
    //   220: aload_0
    //   221: getfield d : I
    //   224: iconst_1
    //   225: iadd
    //   226: putfield d : I
    //   229: aload_1
    //   230: areturn
    //   231: new emk
    //   234: dup
    //   235: aload #4
    //   237: aload_1
    //   238: aload #5
    //   240: aload #5
    //   242: getfield e : Lemk;
    //   245: invokespecial <init> : (Lemk;Ljava/lang/Object;Lemk;Lemk;)V
    //   248: astore_1
    //   249: iload_3
    //   250: ifge -> 269
    //   253: aload #4
    //   255: aload_1
    //   256: putfield b : Lemk;
    //   259: aload_0
    //   260: aload #4
    //   262: iconst_1
    //   263: invokespecial b : (Lemk;Z)V
    //   266: goto -> 209
    //   269: aload #4
    //   271: aload_1
    //   272: putfield c : Lemk;
    //   275: goto -> 259
    //   278: iconst_0
    //   279: istore_3
    //   280: goto -> 102
  }
  
  emk<K, V> a(Map.Entry<?, ?> paramEntry) {
    boolean bool;
    emk<K, V> emk1 = a(paramEntry.getKey());
    if (emk1 != null && a(emk1.g, paramEntry.getValue())) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool ? emk1 : null;
  }
  
  void a(emk<K, V> paramemk, boolean paramBoolean) {
    int i = 0;
    if (paramBoolean) {
      paramemk.e.d = paramemk.d;
      paramemk.d.e = paramemk.e;
    } 
    emk<K, V> emk1 = paramemk.b;
    emk<K, V> emk2 = paramemk.c;
    emk<K, V> emk3 = paramemk.a;
    if (emk1 != null && emk2 != null) {
      boolean bool;
      if (emk1.h > emk2.h) {
        emk1 = emk1.b();
      } else {
        emk1 = emk2.a();
      } 
      a(emk1, false);
      emk2 = paramemk.b;
      if (emk2 != null) {
        bool = emk2.h;
        emk1.b = emk2;
        emk2.a = emk1;
        paramemk.b = null;
      } else {
        bool = false;
      } 
      emk2 = paramemk.c;
      if (emk2 != null) {
        i = emk2.h;
        emk1.c = emk2;
        emk2.a = emk1;
        paramemk.c = null;
      } 
      emk1.h = Math.max(bool, i) + 1;
      a(paramemk, emk1);
      return;
    } 
    if (emk1 != null) {
      a(paramemk, emk1);
      paramemk.b = null;
    } else if (emk2 != null) {
      a(paramemk, emk2);
      paramemk.c = null;
    } else {
      a(paramemk, (emk<K, V>)null);
    } 
    b(emk3, false);
    this.c--;
    this.d++;
  }
  
  emk<K, V> b(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)a(paramObject);
    if (paramObject != null)
      a((emk<K, V>)paramObject, true); 
    return (emk<K, V>)paramObject;
  }
  
  public void clear() {
    this.b = null;
    this.c = 0;
    this.d++;
    emk<K, V> emk1 = this.e;
    emk1.e = emk1;
    emk1.d = emk1;
  }
  
  public boolean containsKey(Object paramObject) {
    return (a(paramObject) != null);
  }
  
  public Set<Map.Entry<K, V>> entrySet() {
    emf emf2 = this.h;
    if (emf2 != null)
      return (Set<Map.Entry<K, V>>)emf2; 
    emf emf1 = new emf(this);
    this.h = (emf)emf1;
    return emf1;
  }
  
  public V get(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)a(paramObject);
    return (paramObject != null) ? ((emk)paramObject).g : null;
  }
  
  public Set<K> keySet() {
    emh emh2 = this.i;
    if (emh2 != null)
      return (Set<K>)emh2; 
    emh emh1 = new emh(this);
    this.i = (emh)emh1;
    return emh1;
  }
  
  public V put(K paramK, V paramV) {
    if (paramK == null)
      throw new NullPointerException("key == null"); 
    emk<K, V> emk1 = a(paramK, true);
    V v = emk1.g;
    emk1.g = paramV;
    return v;
  }
  
  public V remove(Object<K, V> paramObject) {
    paramObject = (Object<K, V>)b(paramObject);
    return (paramObject != null) ? ((emk)paramObject).g : null;
  }
  
  public int size() {
    return this.c;
  }
  
  static {
    boolean bool;
    if (!emd.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    f = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
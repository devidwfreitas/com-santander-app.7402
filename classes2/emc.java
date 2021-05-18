import java.util.Map;

final class emc<K, V> implements Map.Entry<K, V> {
  emc<K, V> a;
  
  emc<K, V> b;
  
  emc<K, V> c;
  
  emc<K, V> d;
  
  emc<K, V> e;
  
  final K f;
  
  final int g;
  
  V h;
  
  int i;
  
  emc() {
    this.f = null;
    this.g = -1;
    this.e = this;
    this.d = this;
  }
  
  emc(emc<K, V> paramemc1, K paramK, int paramInt, emc<K, V> paramemc2, emc<K, V> paramemc3) {
    this.a = paramemc1;
    this.f = paramK;
    this.g = paramInt;
    this.i = 1;
    this.d = paramemc2;
    this.e = paramemc3;
    paramemc3.d = this;
    paramemc2.e = this;
  }
  
  public emc<K, V> a() {
    emc<K, V> emc1 = this.b;
    emc<K, V> emc2 = this;
    while (emc1 != null) {
      emc<K, V> emc3 = emc1.b;
      emc2 = emc1;
      emc1 = emc3;
    } 
    return emc2;
  }
  
  public emc<K, V> b() {
    emc<K, V> emc1 = this.c;
    emc<K, V> emc2 = this;
    while (emc1 != null) {
      emc<K, V> emc3 = emc1.c;
      emc2 = emc1;
      emc1 = emc3;
    } 
    return emc2;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iload_3
    //   3: istore_2
    //   4: aload_1
    //   5: instanceof java/util/Map$Entry
    //   8: ifeq -> 54
    //   11: aload_1
    //   12: checkcast java/util/Map$Entry
    //   15: astore_1
    //   16: aload_0
    //   17: getfield f : Ljava/lang/Object;
    //   20: ifnonnull -> 56
    //   23: iload_3
    //   24: istore_2
    //   25: aload_1
    //   26: invokeinterface getKey : ()Ljava/lang/Object;
    //   31: ifnonnull -> 54
    //   34: aload_0
    //   35: getfield h : Ljava/lang/Object;
    //   38: ifnonnull -> 77
    //   41: iload_3
    //   42: istore_2
    //   43: aload_1
    //   44: invokeinterface getValue : ()Ljava/lang/Object;
    //   49: ifnonnull -> 54
    //   52: iconst_1
    //   53: istore_2
    //   54: iload_2
    //   55: ireturn
    //   56: iload_3
    //   57: istore_2
    //   58: aload_0
    //   59: getfield f : Ljava/lang/Object;
    //   62: aload_1
    //   63: invokeinterface getKey : ()Ljava/lang/Object;
    //   68: invokevirtual equals : (Ljava/lang/Object;)Z
    //   71: ifeq -> 54
    //   74: goto -> 34
    //   77: iload_3
    //   78: istore_2
    //   79: aload_0
    //   80: getfield h : Ljava/lang/Object;
    //   83: aload_1
    //   84: invokeinterface getValue : ()Ljava/lang/Object;
    //   89: invokevirtual equals : (Ljava/lang/Object;)Z
    //   92: ifeq -> 54
    //   95: goto -> 52
  }
  
  public K getKey() {
    return this.f;
  }
  
  public V getValue() {
    return this.h;
  }
  
  public int hashCode() {
    int i;
    int j = 0;
    if (this.f == null) {
      i = 0;
    } else {
      i = this.f.hashCode();
    } 
    if (this.h != null)
      j = this.h.hashCode(); 
    return i ^ j;
  }
  
  public V setValue(V paramV) {
    V v = this.h;
    this.h = paramV;
    return v;
  }
  
  public String toString() {
    return (new StringBuilder()).append(this.f).append("=").append(this.h).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
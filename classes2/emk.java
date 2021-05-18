import java.util.Map;

final class emk<K, V> implements Map.Entry<K, V> {
  emk<K, V> a;
  
  emk<K, V> b;
  
  emk<K, V> c;
  
  emk<K, V> d;
  
  emk<K, V> e;
  
  final K f;
  
  V g;
  
  int h;
  
  emk() {
    this.f = null;
    this.e = this;
    this.d = this;
  }
  
  emk(emk<K, V> paramemk1, K paramK, emk<K, V> paramemk2, emk<K, V> paramemk3) {
    this.a = paramemk1;
    this.f = paramK;
    this.h = 1;
    this.d = paramemk2;
    this.e = paramemk3;
    paramemk3.d = this;
    paramemk2.e = this;
  }
  
  public emk<K, V> a() {
    emk<K, V> emk1 = this.b;
    emk<K, V> emk2 = this;
    while (emk1 != null) {
      emk<K, V> emk3 = emk1.b;
      emk2 = emk1;
      emk1 = emk3;
    } 
    return emk2;
  }
  
  public emk<K, V> b() {
    emk<K, V> emk1 = this.c;
    emk<K, V> emk2 = this;
    while (emk1 != null) {
      emk<K, V> emk3 = emk1.c;
      emk2 = emk1;
      emk1 = emk3;
    } 
    return emk2;
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
    //   35: getfield g : Ljava/lang/Object;
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
    //   80: getfield g : Ljava/lang/Object;
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
    return this.g;
  }
  
  public int hashCode() {
    int i;
    int j = 0;
    if (this.f == null) {
      i = 0;
    } else {
      i = this.f.hashCode();
    } 
    if (this.g != null)
      j = this.g.hashCode(); 
    return i ^ j;
  }
  
  public V setValue(V paramV) {
    V v = this.g;
    this.g = paramV;
    return v;
  }
  
  public String toString() {
    return (new StringBuilder()).append(this.f).append("=").append(this.g).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
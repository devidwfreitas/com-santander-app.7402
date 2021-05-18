import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

public final class nfu<T extends nfy> implements Iterable<T> {
  private final nfy[] a;
  
  private volatile int b = 0;
  
  public nfu() {
    this.a = new nfy[0];
  }
  
  public nfu(Collection<T> paramCollection) {
    if (paramCollection == null) {
      this.a = new nfy[0];
      return;
    } 
    Iterator<T> iterator = paramCollection.iterator();
    int i = 0;
    while (iterator.hasNext()) {
      if (iterator.next() != null)
        i++; 
    } 
    iterator = paramCollection.iterator();
    nfy[] arrayOfNfy = new nfy[i];
    i = 0;
    while (iterator.hasNext()) {
      nfy nfy1 = (nfy)iterator.next();
      if (nfy1 != null) {
        for (int j = i - 1; j >= 0 && i > 0; j--) {
          if (arrayOfNfy[j].b().equals(nfy1.b()))
            throw new IllegalArgumentException("The provided collection is not valid. There are duplicate entries with the same ids."); 
        } 
        arrayOfNfy[i] = nfy1;
        i++;
      } 
    } 
    this.a = arrayOfNfy;
    if (arrayOfNfy == null)
      throw new IllegalStateException(String.format(Locale.ROOT, "null attributes assigned from given collection: %s", new Object[] { paramCollection })); 
  }
  
  public int a() {
    return this.a.length;
  }
  
  public boolean a(String paramString) {
    boolean bool = false;
    nfy[] arrayOfNfy = this.a;
    int j = arrayOfNfy.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (arrayOfNfy[i].b().equals(paramString))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean a(nfu<T> paramnfu) {
    if (paramnfu != null && paramnfu.a.length <= this.a.length) {
      int i = 0;
      while (i < paramnfu.a.length) {
        if (a((T)paramnfu.a[i])) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  public boolean a(T paramT) {
    boolean bool = false;
    nfy[] arrayOfNfy = this.a;
    int j = arrayOfNfy.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (arrayOfNfy[i].equals(paramT))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public T[] a(T[] paramArrayOfT) {
    nfy[] arrayOfNfy;
    int j = a();
    if (paramArrayOfT.length < j)
      arrayOfNfy = (nfy[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j); 
    for (int i = 0; i < j; i++)
      arrayOfNfy[i] = this.a[i]; 
    if (arrayOfNfy.length > j)
      arrayOfNfy[j] = null; 
    return (T[])arrayOfNfy;
  }
  
  public T b(String paramString) {
    for (nfy nfy1 : this.a) {
      if (nfy1.b().equals(paramString))
        return (T)nfy1; 
    } 
    return null;
  }
  
  public boolean b() {
    return (this.a.length == 0);
  }
  
  public boolean b(nfu<T> paramnfu) {
    if (paramnfu != null && paramnfu.a.length <= this.a.length) {
      int i = 0;
      while (i < paramnfu.a.length) {
        if (a(paramnfu.a[i].b())) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  public boolean b(T paramT) {
    return (paramT != null && a(paramT.b()));
  }
  
  public String c(String paramString) {
    String str1;
    String str2;
    Iterator<T> iterator = iterator();
    if (paramString == null || paramString.length() == 0) {
      paramString = "";
      str2 = "";
      str1 = "";
    } else {
      str2 = System.getProperty("line.separator");
      str1 = paramString + paramString;
    } 
    StringBuilder stringBuilder = (new StringBuilder("[")).append(str2);
    while (iterator.hasNext()) {
      stringBuilder.append(str1).append(((nfy)iterator.next()).toString());
      if (iterator.hasNext())
        stringBuilder.append(','); 
      stringBuilder.append(str2);
    } 
    return stringBuilder.append(paramString).append(']').toString();
  }
  
  public boolean c(nfu<T> paramnfu) {
    if (paramnfu != null && paramnfu.a() == a()) {
      nfy[] arrayOfNfy = this.a;
      int j = arrayOfNfy.length;
      int i = 0;
      while (i < j) {
        if (paramnfu.a(arrayOfNfy[i].b())) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  public Object[] c() {
    Object[] arrayOfObject = new Object[this.a.length];
    System.arraycopy(this.a, 0, arrayOfObject, 0, this.a.length);
    return arrayOfObject;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: aload_1
    //   7: instanceof nfu
    //   10: ifeq -> 4
    //   13: aload_1
    //   14: checkcast nfu
    //   17: astore_1
    //   18: aload_0
    //   19: getfield a : [Lnfy;
    //   22: arraylength
    //   23: aload_1
    //   24: getfield a : [Lnfy;
    //   27: arraylength
    //   28: if_icmpne -> 4
    //   31: aload_0
    //   32: getfield a : [Lnfy;
    //   35: astore #5
    //   37: aload #5
    //   39: arraylength
    //   40: istore #4
    //   42: iconst_0
    //   43: istore_2
    //   44: iload_2
    //   45: iload #4
    //   47: if_icmpge -> 101
    //   50: aload #5
    //   52: iload_2
    //   53: aaload
    //   54: astore #6
    //   56: iconst_0
    //   57: istore_3
    //   58: iload_3
    //   59: aload_1
    //   60: getfield a : [Lnfy;
    //   63: arraylength
    //   64: if_icmpge -> 103
    //   67: aload #6
    //   69: aload_1
    //   70: getfield a : [Lnfy;
    //   73: iload_3
    //   74: aaload
    //   75: invokevirtual equals : (Ljava/lang/Object;)Z
    //   78: ifeq -> 94
    //   81: iconst_1
    //   82: istore_3
    //   83: iload_3
    //   84: ifeq -> 4
    //   87: iload_2
    //   88: iconst_1
    //   89: iadd
    //   90: istore_2
    //   91: goto -> 44
    //   94: iload_3
    //   95: iconst_1
    //   96: iadd
    //   97: istore_3
    //   98: goto -> 58
    //   101: iconst_1
    //   102: ireturn
    //   103: iconst_0
    //   104: istore_3
    //   105: goto -> 83
  }
  
  public int hashCode() {
    int j = this.b;
    int i = j;
    if (j == 0) {
      nfy[] arrayOfNfy = this.a;
      int k = arrayOfNfy.length;
      i = 17;
      j = 0;
      while (j < k) {
        int m = arrayOfNfy[j].hashCode();
        j++;
        i = m + i * 31;
      } 
      this.b = i;
    } 
    return i;
  }
  
  public Iterator<T> iterator() {
    return new nfv(this);
  }
  
  public String toString() {
    return c((String)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
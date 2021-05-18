import android.support.v4.util.ArrayMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class cvp {
  public static <T> List<T> a(T paramT) {
    return Collections.singletonList(paramT);
  }
  
  public static <K, V> Map<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5, K paramK6, V paramV6) {
    ArrayMap<K, V> arrayMap = new ArrayMap(6);
    arrayMap.put(paramK1, paramV1);
    arrayMap.put(paramK2, paramV2);
    arrayMap.put(paramK3, paramV3);
    arrayMap.put(paramK4, paramV4);
    arrayMap.put(paramK5, paramV5);
    arrayMap.put(paramK6, paramV6);
    return Collections.unmodifiableMap((Map<? extends K, ? extends V>)arrayMap);
  }
  
  public static <K, V> Map<K, V> a(K[] paramArrayOfK, V[] paramArrayOfV) {
    ArrayMap<K, V> arrayMap;
    int i = 0;
    b(paramArrayOfK, paramArrayOfV);
    int j = paramArrayOfK.length;
    switch (j) {
      default:
        if (j <= 32) {
          arrayMap = new ArrayMap(j);
        } else {
          break;
        } 
        while (i < j) {
          arrayMap.put(paramArrayOfK[i], paramArrayOfV[i]);
          i++;
        } 
        return Collections.unmodifiableMap((Map<? extends K, ? extends V>)arrayMap);
      case 0:
        return b();
      case 1:
        return b(paramArrayOfK[0], paramArrayOfV[0]);
    } 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>(j, 1.0F);
    while (i < j) {
      hashMap.put(paramArrayOfK[i], paramArrayOfV[i]);
      i++;
    } 
    return Collections.unmodifiableMap((Map)hashMap);
  }
  
  public static <T> Set<T> a() {
    return Collections.emptySet();
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2) {
    cvk<T> cvk = new cvk(2);
    cvk.add(paramT1);
    cvk.add(paramT2);
    return Collections.unmodifiableSet(cvk);
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2, T paramT3) {
    cvk<T> cvk = new cvk(3);
    cvk.add(paramT1);
    cvk.add(paramT2);
    cvk.add(paramT3);
    return Collections.unmodifiableSet(cvk);
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2, T paramT3, T paramT4) {
    cvk<T> cvk = new cvk(4);
    cvk.add(paramT1);
    cvk.add(paramT2);
    cvk.add(paramT3);
    cvk.add(paramT4);
    return Collections.unmodifiableSet(cvk);
  }
  
  public static <T> Set<T> a(T... paramVarArgs) {
    // Byte code:
    //   0: aload_0
    //   1: arraylength
    //   2: tableswitch default -> 36, 0 -> 60, 1 -> 64, 2 -> 71, 3 -> 81, 4 -> 94
    //   36: aload_0
    //   37: arraylength
    //   38: bipush #32
    //   40: if_icmpgt -> 110
    //   43: new cvk
    //   46: dup
    //   47: aload_0
    //   48: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   51: invokespecial <init> : (Ljava/util/Collection;)V
    //   54: astore_0
    //   55: aload_0
    //   56: invokestatic unmodifiableSet : (Ljava/util/Set;)Ljava/util/Set;
    //   59: areturn
    //   60: invokestatic a : ()Ljava/util/Set;
    //   63: areturn
    //   64: aload_0
    //   65: iconst_0
    //   66: aaload
    //   67: invokestatic b : (Ljava/lang/Object;)Ljava/util/Set;
    //   70: areturn
    //   71: aload_0
    //   72: iconst_0
    //   73: aaload
    //   74: aload_0
    //   75: iconst_1
    //   76: aaload
    //   77: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    //   80: areturn
    //   81: aload_0
    //   82: iconst_0
    //   83: aaload
    //   84: aload_0
    //   85: iconst_1
    //   86: aaload
    //   87: aload_0
    //   88: iconst_2
    //   89: aaload
    //   90: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    //   93: areturn
    //   94: aload_0
    //   95: iconst_0
    //   96: aaload
    //   97: aload_0
    //   98: iconst_1
    //   99: aaload
    //   100: aload_0
    //   101: iconst_2
    //   102: aaload
    //   103: aload_0
    //   104: iconst_3
    //   105: aaload
    //   106: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    //   109: areturn
    //   110: new java/util/HashSet
    //   113: dup
    //   114: aload_0
    //   115: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   118: invokespecial <init> : (Ljava/util/Collection;)V
    //   121: astore_0
    //   122: goto -> 55
  }
  
  public static <K, V> Map<K, V> b() {
    return Collections.emptyMap();
  }
  
  public static <K, V> Map<K, V> b(K paramK, V paramV) {
    return Collections.singletonMap(paramK, paramV);
  }
  
  public static <T> Set<T> b(T paramT) {
    return Collections.singleton(paramT);
  }
  
  private static <K, V> void b(K[] paramArrayOfK, V[] paramArrayOfV) {
    if (paramArrayOfK.length != paramArrayOfV.length) {
      int i = paramArrayOfK.length;
      int j = paramArrayOfV.length;
      throw new IllegalArgumentException((new StringBuilder(66)).append("Key and values array lengths not equal: ").append(i).append(" != ").append(j).toString());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
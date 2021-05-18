import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

class djy extends dmu {
  djy(dlv paramdlv) {
    super(paramdlv);
  }
  
  private Boolean a(dox paramdox, dpi paramdpi, long paramLong) {
    if (paramdox.e != null) {
      Boolean bool = a(paramLong, paramdox.e);
      if (bool == null)
        return null; 
      if (!bool.booleanValue())
        return Boolean.valueOf(false); 
    } 
    HashSet<String> hashSet = new HashSet();
    for (doy doy : paramdox.c) {
      if (TextUtils.isEmpty(doy.d)) {
        u().z().a("null or empty param name in filter. event", paramdpi.b);
        return null;
      } 
      hashSet.add(doy.d);
    } 
    ArrayMap<String, Long> arrayMap = new ArrayMap();
    for (dpj dpj : paramdpi.a) {
      if (hashSet.contains(dpj.a))
        if (dpj.c != null) {
          arrayMap.put(dpj.a, dpj.c);
        } else if (dpj.e != null) {
          arrayMap.put(dpj.a, dpj.e);
        } else if (dpj.b != null) {
          arrayMap.put(dpj.a, dpj.b);
        } else {
          u().z().a("Unknown value for param. event, param", paramdpi.b, dpj.a);
          return null;
        }  
    } 
    for (doy doy : paramdox.c) {
      Boolean bool;
      boolean bool1 = Boolean.TRUE.equals(doy.c);
      String str = doy.d;
      if (TextUtils.isEmpty(str)) {
        u().z().a("Event has empty param name. event", paramdpi.b);
        return null;
      } 
      Long long_ = (Long)arrayMap.get(str);
      if (long_ instanceof Long) {
        boolean bool2;
        if (doy.b == null) {
          u().z().a("No number filter for long param. event, param", paramdpi.b, str);
          return null;
        } 
        bool = a(((Long)long_).longValue(), doy.b);
        if (bool == null)
          return null; 
        if (!bool.booleanValue()) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        if (bool2 ^ bool1)
          return Boolean.valueOf(false); 
      } else if (long_ instanceof Double) {
        boolean bool2;
        if (((doy)bool).b == null) {
          u().z().a("No number filter for double param. event, param", paramdpi.b, str);
          return null;
        } 
        bool = a(((Double)long_).doubleValue(), ((doy)bool).b);
        if (bool == null)
          return null; 
        if (!bool.booleanValue()) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        if (bool2 ^ bool1)
          return Boolean.valueOf(false); 
      } else if (long_ instanceof String) {
        boolean bool2;
        if (((doy)bool).a != null) {
          bool = a((String)long_, ((doy)bool).a);
        } else if (((doy)bool).b != null) {
          if (dou.n((String)long_)) {
            bool = a((String)long_, ((doy)bool).b);
          } else {
            u().z().a("Invalid param value for number filter. event, param", paramdpi.b, str);
            return null;
          } 
        } else {
          u().z().a("No filter for String param. event, param", paramdpi.b, str);
          return null;
        } 
        if (bool == null)
          return null; 
        if (!bool.booleanValue()) {
          bool2 = true;
        } else {
          bool2 = false;
        } 
        if (bool2 ^ bool1)
          return Boolean.valueOf(false); 
      } else {
        if (long_ == null) {
          u().D().a("Missing param for filter. event, param", paramdpi.b, str);
          return Boolean.valueOf(false);
        } 
        u().z().a("Unknown param type. event, param", paramdpi.b, str);
        return null;
      } 
    } 
    return Boolean.valueOf(true);
  }
  
  private Boolean a(dpa paramdpa, dpn paramdpn) {
    doy doy = paramdpa.c;
    if (doy == null) {
      u().z().a("Missing property filter. property", paramdpn.b);
      return null;
    } 
    boolean bool = Boolean.TRUE.equals(doy.c);
    if (paramdpn.d != null) {
      if (doy.b == null) {
        u().z().a("No number filter for long property. property", paramdpn.b);
        return null;
      } 
      return a(a(paramdpn.d.longValue(), doy.b), bool);
    } 
    if (paramdpn.f != null) {
      if (doy.b == null) {
        u().z().a("No number filter for double property. property", paramdpn.b);
        return null;
      } 
      return a(a(paramdpn.f.doubleValue(), doy.b), bool);
    } 
    if (paramdpn.c != null) {
      if (doy.a == null) {
        if (doy.b == null) {
          u().z().a("No string or number filter defined. property", paramdpn.b);
          return null;
        } 
        if (dou.n(paramdpn.c))
          return a(a(paramdpn.c, doy.b), bool); 
        u().z().a("Invalid user property value for Numeric number filter. property, value", paramdpn.b, paramdpn.c);
        return null;
      } 
      return a(a(paramdpn.c, doy.a), bool);
    } 
    u().z().a("User property has no value, property", paramdpn.b);
    return null;
  }
  
  static Boolean a(Boolean paramBoolean, boolean paramBoolean1) {
    return (paramBoolean == null) ? null : Boolean.valueOf(paramBoolean.booleanValue() ^ paramBoolean1);
  }
  
  private Boolean a(String paramString1, int paramInt, boolean paramBoolean, String paramString2, List<String> paramList, String paramString3) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: iload_2
    //   7: bipush #6
    //   9: if_icmpne -> 106
    //   12: aload #5
    //   14: ifnull -> 4
    //   17: aload #5
    //   19: invokeinterface size : ()I
    //   24: ifeq -> 4
    //   27: aload_1
    //   28: astore #7
    //   30: iload_3
    //   31: ifne -> 42
    //   34: iload_2
    //   35: iconst_1
    //   36: if_icmpne -> 113
    //   39: aload_1
    //   40: astore #7
    //   42: iload_2
    //   43: tableswitch default -> 80, 1 -> 82, 2 -> 131, 3 -> 142, 4 -> 153, 5 -> 164, 6 -> 175
    //   80: aconst_null
    //   81: areturn
    //   82: iload_3
    //   83: ifeq -> 125
    //   86: iconst_0
    //   87: istore_2
    //   88: aload #6
    //   90: iload_2
    //   91: invokestatic compile : (Ljava/lang/String;I)Ljava/util/regex/Pattern;
    //   94: aload #7
    //   96: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   99: invokevirtual matches : ()Z
    //   102: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   105: areturn
    //   106: aload #4
    //   108: ifnonnull -> 27
    //   111: aconst_null
    //   112: areturn
    //   113: aload_1
    //   114: getstatic java/util/Locale.ENGLISH : Ljava/util/Locale;
    //   117: invokevirtual toUpperCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   120: astore #7
    //   122: goto -> 42
    //   125: bipush #66
    //   127: istore_2
    //   128: goto -> 88
    //   131: aload #7
    //   133: aload #4
    //   135: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   138: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   141: areturn
    //   142: aload #7
    //   144: aload #4
    //   146: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   149: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   152: areturn
    //   153: aload #7
    //   155: aload #4
    //   157: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   160: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   163: areturn
    //   164: aload #7
    //   166: aload #4
    //   168: invokevirtual equals : (Ljava/lang/Object;)Z
    //   171: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   174: areturn
    //   175: aload #5
    //   177: aload #7
    //   179: invokeinterface contains : (Ljava/lang/Object;)Z
    //   184: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   187: areturn
  }
  
  private Boolean a(BigDecimal paramBigDecimal1, int paramInt, BigDecimal paramBigDecimal2, BigDecimal paramBigDecimal3, BigDecimal paramBigDecimal4, double paramDouble) {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool5 = true;
    boolean bool1 = true;
    if (paramBigDecimal1 == null)
      return null; 
    if (paramInt == 4) {
      if (paramBigDecimal3 == null || paramBigDecimal4 == null)
        return null; 
    } else if (paramBigDecimal2 == null) {
      return null;
    } 
    switch (paramInt) {
      default:
        return null;
      case 1:
        if (paramBigDecimal1.compareTo(paramBigDecimal2) != -1)
          bool1 = false; 
        return Boolean.valueOf(bool1);
      case 2:
        if (paramBigDecimal1.compareTo(paramBigDecimal2) == 1) {
          bool1 = bool2;
          return Boolean.valueOf(bool1);
        } 
        bool1 = false;
        return Boolean.valueOf(bool1);
      case 3:
        if (paramDouble != 0.0D) {
          if (paramBigDecimal1.compareTo(paramBigDecimal2.subtract((new BigDecimal(paramDouble)).multiply(new BigDecimal(2)))) == 1 && paramBigDecimal1.compareTo(paramBigDecimal2.add((new BigDecimal(paramDouble)).multiply(new BigDecimal(2)))) == -1) {
            bool1 = bool3;
            return Boolean.valueOf(bool1);
          } 
          bool1 = false;
          return Boolean.valueOf(bool1);
        } 
        if (paramBigDecimal1.compareTo(paramBigDecimal2) == 0) {
          bool1 = bool4;
          return Boolean.valueOf(bool1);
        } 
        bool1 = false;
        return Boolean.valueOf(bool1);
      case 4:
        break;
    } 
    if (paramBigDecimal1.compareTo(paramBigDecimal3) != -1 && paramBigDecimal1.compareTo(paramBigDecimal4) != 1) {
      bool1 = bool5;
      return Boolean.valueOf(bool1);
    } 
    bool1 = false;
    return Boolean.valueOf(bool1);
  }
  
  private List<String> a(String[] paramArrayOfString, boolean paramBoolean) {
    if (paramBoolean)
      return Arrays.asList(paramArrayOfString); 
    ArrayList<String> arrayList = new ArrayList();
    int j = paramArrayOfString.length;
    int i = 0;
    while (true) {
      ArrayList<String> arrayList1 = arrayList;
      if (i < j) {
        arrayList.add(paramArrayOfString[i].toUpperCase(Locale.ENGLISH));
        i++;
        continue;
      } 
      return arrayList1;
    } 
  }
  
  public Boolean a(double paramDouble, doz paramdoz) {
    try {
      return a(new BigDecimal(paramDouble), paramdoz, Math.ulp(paramDouble));
    } catch (NumberFormatException numberFormatException) {
      return null;
    } 
  }
  
  public Boolean a(long paramLong, doz paramdoz) {
    try {
      return a(new BigDecimal(paramLong), paramdoz, 0.0D);
    } catch (NumberFormatException numberFormatException) {
      return null;
    } 
  }
  
  public Boolean a(String paramString, doz paramdoz) {
    if (!dou.n(paramString))
      return null; 
    try {
      return a(new BigDecimal(paramString), paramdoz, 0.0D);
    } catch (NumberFormatException numberFormatException) {
      return null;
    } 
  }
  
  Boolean a(String paramString, dpb paramdpb) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #6
    //   3: aload_2
    //   4: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   7: pop
    //   8: aload_1
    //   9: ifnonnull -> 14
    //   12: aconst_null
    //   13: areturn
    //   14: aload_2
    //   15: getfield a : Ljava/lang/Integer;
    //   18: ifnull -> 12
    //   21: aload_2
    //   22: getfield a : Ljava/lang/Integer;
    //   25: invokevirtual intValue : ()I
    //   28: ifeq -> 12
    //   31: aload_2
    //   32: getfield a : Ljava/lang/Integer;
    //   35: invokevirtual intValue : ()I
    //   38: bipush #6
    //   40: if_icmpne -> 140
    //   43: aload_2
    //   44: getfield d : [Ljava/lang/String;
    //   47: ifnull -> 12
    //   50: aload_2
    //   51: getfield d : [Ljava/lang/String;
    //   54: arraylength
    //   55: ifeq -> 12
    //   58: aload_2
    //   59: getfield a : Ljava/lang/Integer;
    //   62: invokevirtual intValue : ()I
    //   65: istore_3
    //   66: aload_2
    //   67: getfield c : Ljava/lang/Boolean;
    //   70: ifnull -> 149
    //   73: aload_2
    //   74: getfield c : Ljava/lang/Boolean;
    //   77: invokevirtual booleanValue : ()Z
    //   80: ifeq -> 149
    //   83: iconst_1
    //   84: istore #4
    //   86: iload #4
    //   88: ifne -> 102
    //   91: iload_3
    //   92: iconst_1
    //   93: if_icmpeq -> 102
    //   96: iload_3
    //   97: bipush #6
    //   99: if_icmpne -> 155
    //   102: aload_2
    //   103: getfield b : Ljava/lang/String;
    //   106: astore #5
    //   108: aload_2
    //   109: getfield d : [Ljava/lang/String;
    //   112: ifnonnull -> 170
    //   115: aconst_null
    //   116: astore_2
    //   117: iload_3
    //   118: iconst_1
    //   119: if_icmpne -> 126
    //   122: aload #5
    //   124: astore #6
    //   126: aload_0
    //   127: aload_1
    //   128: iload_3
    //   129: iload #4
    //   131: aload #5
    //   133: aload_2
    //   134: aload #6
    //   136: invokespecial a : (Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    //   139: areturn
    //   140: aload_2
    //   141: getfield b : Ljava/lang/String;
    //   144: ifnonnull -> 58
    //   147: aconst_null
    //   148: areturn
    //   149: iconst_0
    //   150: istore #4
    //   152: goto -> 86
    //   155: aload_2
    //   156: getfield b : Ljava/lang/String;
    //   159: getstatic java/util/Locale.ENGLISH : Ljava/util/Locale;
    //   162: invokevirtual toUpperCase : (Ljava/util/Locale;)Ljava/lang/String;
    //   165: astore #5
    //   167: goto -> 108
    //   170: aload_0
    //   171: aload_2
    //   172: getfield d : [Ljava/lang/String;
    //   175: iload #4
    //   177: invokespecial a : ([Ljava/lang/String;Z)Ljava/util/List;
    //   180: astore_2
    //   181: goto -> 117
  }
  
  Boolean a(BigDecimal paramBigDecimal, doz paramdoz, double paramDouble) {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_2
    //   6: getfield a : Ljava/lang/Integer;
    //   9: ifnull -> 22
    //   12: aload_2
    //   13: getfield a : Ljava/lang/Integer;
    //   16: invokevirtual intValue : ()I
    //   19: ifne -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_2
    //   25: getfield a : Ljava/lang/Integer;
    //   28: invokevirtual intValue : ()I
    //   31: iconst_4
    //   32: if_icmpne -> 131
    //   35: aload_2
    //   36: getfield d : Ljava/lang/String;
    //   39: ifnull -> 22
    //   42: aload_2
    //   43: getfield e : Ljava/lang/String;
    //   46: ifnull -> 22
    //   49: aload_2
    //   50: getfield a : Ljava/lang/Integer;
    //   53: invokevirtual intValue : ()I
    //   56: istore #5
    //   58: aload_2
    //   59: getfield a : Ljava/lang/Integer;
    //   62: invokevirtual intValue : ()I
    //   65: iconst_4
    //   66: if_icmpne -> 140
    //   69: aload_2
    //   70: getfield d : Ljava/lang/String;
    //   73: invokestatic n : (Ljava/lang/String;)Z
    //   76: ifeq -> 22
    //   79: aload_2
    //   80: getfield e : Ljava/lang/String;
    //   83: invokestatic n : (Ljava/lang/String;)Z
    //   86: ifeq -> 22
    //   89: new java/math/BigDecimal
    //   92: dup
    //   93: aload_2
    //   94: getfield d : Ljava/lang/String;
    //   97: invokespecial <init> : (Ljava/lang/String;)V
    //   100: astore #6
    //   102: new java/math/BigDecimal
    //   105: dup
    //   106: aload_2
    //   107: getfield e : Ljava/lang/String;
    //   110: invokespecial <init> : (Ljava/lang/String;)V
    //   113: astore #7
    //   115: aconst_null
    //   116: astore_2
    //   117: aload_0
    //   118: aload_1
    //   119: iload #5
    //   121: aload_2
    //   122: aload #6
    //   124: aload #7
    //   126: dload_3
    //   127: invokespecial a : (Ljava/math/BigDecimal;ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;D)Ljava/lang/Boolean;
    //   130: areturn
    //   131: aload_2
    //   132: getfield c : Ljava/lang/String;
    //   135: ifnonnull -> 49
    //   138: aconst_null
    //   139: areturn
    //   140: aload_2
    //   141: getfield c : Ljava/lang/String;
    //   144: invokestatic n : (Ljava/lang/String;)Z
    //   147: ifeq -> 22
    //   150: new java/math/BigDecimal
    //   153: dup
    //   154: aload_2
    //   155: getfield c : Ljava/lang/String;
    //   158: invokespecial <init> : (Ljava/lang/String;)V
    //   161: astore_2
    //   162: aconst_null
    //   163: astore #7
    //   165: aconst_null
    //   166: astore #6
    //   168: goto -> 117
    //   171: astore_1
    //   172: aconst_null
    //   173: areturn
    //   174: astore_1
    //   175: aconst_null
    //   176: areturn
    // Exception table:
    //   from	to	target	type
    //   89	115	174	java/lang/NumberFormatException
    //   150	162	171	java/lang/NumberFormatException
  }
  
  protected void a() {}
  
  @WorkerThread
  void a(String paramString, dow[] paramArrayOfdow) {
    csp.a(paramArrayOfdow);
    int j = paramArrayOfdow.length;
    for (int i = 0; i < j; i++) {
      dow dow1 = paramArrayOfdow[i];
      for (dox dox : dow1.c) {
        String str = egf.a.get(dox.b);
        if (str != null)
          dox.b = str; 
        for (doy doy : dox.c) {
          String str1 = egj.a.get(doy.d);
          if (str1 != null)
            doy.d = str1; 
        } 
      } 
      for (dpa dpa : dow1.b) {
        String str = egl.a.get(dpa.b);
        if (str != null)
          dpa.b = str; 
      } 
    } 
    p().a(paramString, paramArrayOfdow);
  }
  
  @WorkerThread
  dph[] a(String paramString, dpi[] paramArrayOfdpi, dpn[] paramArrayOfdpn) {
    csp.a(paramString);
    HashSet<Integer> hashSet = new HashSet();
    ArrayMap<Integer, dph> arrayMap = new ArrayMap();
    ArrayMap<Integer, BitSet> arrayMap1 = new ArrayMap();
    ArrayMap<Integer, BitSet> arrayMap2 = new ArrayMap();
    Map<Integer, dpm> map = p().f(paramString);
    if (map != null) {
      Iterator<Integer> iterator1 = map.keySet().iterator();
      while (iterator1.hasNext()) {
        int k = ((Integer)iterator1.next()).intValue();
        dpm dpm = map.get(Integer.valueOf(k));
        BitSet bitSet3 = (BitSet)arrayMap1.get(Integer.valueOf(k));
        BitSet bitSet2 = (BitSet)arrayMap2.get(Integer.valueOf(k));
        BitSet bitSet1 = bitSet3;
        if (bitSet3 == null) {
          bitSet1 = new BitSet();
          arrayMap1.put(Integer.valueOf(k), bitSet1);
          bitSet2 = new BitSet();
          arrayMap2.put(Integer.valueOf(k), bitSet2);
        } 
        int j;
        for (j = 0; j < dpm.a.length * 64; j++) {
          if (dou.a(dpm.a, j)) {
            u().D().a("Filter already evaluated. audience ID, filter ID", Integer.valueOf(k), Integer.valueOf(j));
            bitSet2.set(j);
            if (dou.a(dpm.b, j))
              bitSet1.set(j); 
          } 
        } 
        dph dph = new dph();
        arrayMap.put(Integer.valueOf(k), dph);
        dph.d = Boolean.valueOf(false);
        dph.c = dpm;
        dph.b = new dpm();
        dph.b.b = dou.a(bitSet1);
        dph.b.a = dou.a(bitSet2);
      } 
    } 
    if (paramArrayOfdpi != null) {
      ArrayMap<String, ArrayMap> arrayMap3 = new ArrayMap();
      int k = paramArrayOfdpi.length;
      int j;
      for (j = 0; j < k; j++) {
        ArrayMap arrayMap4;
        dpi dpi1 = paramArrayOfdpi[j];
        dkj dkj = p().a(paramString, dpi1.b);
        if (dkj == null) {
          u().z().a("Event aggregate wasn't created during raw event logging. appId, event", dkw.a(paramString), dpi1.b);
          dkj = new dkj(paramString, dpi1.b, 1L, 1L, dpi1.c.longValue());
        } else {
          dkj = dkj.a();
        } 
        p().a(dkj);
        long l = dkj.c;
        Map<Integer, List<dox>> map1 = (Map)arrayMap3.get(dpi1.b);
        if (map1 == null) {
          Map<Integer, List<dox>> map2 = p().f(paramString, dpi1.b);
          map1 = map2;
          if (map2 == null)
            arrayMap4 = new ArrayMap(); 
          arrayMap3.put(dpi1.b, arrayMap4);
        } 
        Iterator<Integer> iterator1 = arrayMap4.keySet().iterator();
        while (iterator1.hasNext()) {
          int m = ((Integer)iterator1.next()).intValue();
          if (hashSet.contains(Integer.valueOf(m))) {
            u().D().a("Skipping failed audience ID", Integer.valueOf(m));
            continue;
          } 
          dph dph = arrayMap.get(Integer.valueOf(m));
          BitSet bitSet1 = arrayMap1.get(Integer.valueOf(m));
          BitSet bitSet2 = arrayMap2.get(Integer.valueOf(m));
          if (dph == null) {
            dph dph1 = new dph();
            arrayMap.put(Integer.valueOf(m), dph1);
            dph1.d = Boolean.valueOf(true);
            bitSet1 = new BitSet();
            arrayMap1.put(Integer.valueOf(m), bitSet1);
            bitSet2 = new BitSet();
            arrayMap2.put(Integer.valueOf(m), bitSet2);
          } 
          for (dox dox : arrayMap4.get(Integer.valueOf(m))) {
            Boolean bool1;
            if (u().a(2)) {
              u().D().a("Evaluating filter. audience, filter, event", Integer.valueOf(m), dox.a, dox.b);
              u().D().a("Filter definition", dou.a(dox));
            } 
            if (dox.a == null || dox.a.intValue() > 256) {
              u().z().a("Invalid event filter ID. appId, id", dkw.a(paramString), String.valueOf(dox.a));
              continue;
            } 
            if (bitSet1.get(dox.a.intValue())) {
              u().D().a("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(m), dox.a);
              continue;
            } 
            Boolean bool2 = a(dox, dpi1, l);
            dky dky = u().D();
            if (bool2 == null) {
              String str = "null";
            } else {
              bool1 = bool2;
            } 
            dky.a("Event filter result", bool1);
            if (bool2 == null) {
              hashSet.add(Integer.valueOf(m));
              continue;
            } 
            bitSet2.set(dox.a.intValue());
            if (bool2.booleanValue())
              bitSet1.set(dox.a.intValue()); 
          } 
        } 
      } 
    } 
    if (paramArrayOfdpn != null) {
      ArrayMap<String, ArrayMap> arrayMap3 = new ArrayMap();
      int k = paramArrayOfdpn.length;
      int j;
      for (j = 0; j < k; j++) {
        ArrayMap arrayMap4;
        dpn dpn1 = paramArrayOfdpn[j];
        Map<Integer, List<dpa>> map1 = (Map)arrayMap3.get(dpn1.b);
        if (map1 == null) {
          Map<Integer, List<dpa>> map2 = p().g(paramString, dpn1.b);
          map1 = map2;
          if (map2 == null)
            arrayMap4 = new ArrayMap(); 
          arrayMap3.put(dpn1.b, arrayMap4);
        } 
        Iterator<Integer> iterator1 = arrayMap4.keySet().iterator();
        while (iterator1.hasNext()) {
          int m = ((Integer)iterator1.next()).intValue();
          if (hashSet.contains(Integer.valueOf(m))) {
            u().D().a("Skipping failed audience ID", Integer.valueOf(m));
            continue;
          } 
          dph dph = arrayMap.get(Integer.valueOf(m));
          BitSet bitSet1 = arrayMap1.get(Integer.valueOf(m));
          BitSet bitSet2 = arrayMap2.get(Integer.valueOf(m));
          if (dph == null) {
            dph dph1 = new dph();
            arrayMap.put(Integer.valueOf(m), dph1);
            dph1.d = Boolean.valueOf(true);
            bitSet1 = new BitSet();
            arrayMap1.put(Integer.valueOf(m), bitSet1);
            bitSet2 = new BitSet();
            arrayMap2.put(Integer.valueOf(m), bitSet2);
          } 
          for (dpa dpa : arrayMap4.get(Integer.valueOf(m))) {
            Boolean bool1;
            if (u().a(2)) {
              u().D().a("Evaluating filter. audience, filter, property", Integer.valueOf(m), dpa.a, dpa.b);
              u().D().a("Filter definition", dou.a(dpa));
            } 
            if (dpa.a == null || dpa.a.intValue() > 256) {
              u().z().a("Invalid property filter ID. appId, id", dkw.a(paramString), String.valueOf(dpa.a));
              hashSet.add(Integer.valueOf(m));
              break;
            } 
            if (bitSet1.get(dpa.a.intValue())) {
              u().D().a("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(m), dpa.a);
              continue;
            } 
            Boolean bool2 = a(dpa, dpn1);
            dky dky = u().D();
            if (bool2 == null) {
              String str = "null";
            } else {
              bool1 = bool2;
            } 
            dky.a("Property filter result", bool1);
            if (bool2 == null) {
              hashSet.add(Integer.valueOf(m));
              continue;
            } 
            bitSet2.set(dpa.a.intValue());
            if (bool2.booleanValue())
              bitSet1.set(dpa.a.intValue()); 
          } 
        } 
      } 
    } 
    dph[] arrayOfDph = new dph[arrayMap1.size()];
    Iterator<Integer> iterator = arrayMap1.keySet().iterator();
    int i = 0;
    while (iterator.hasNext()) {
      int j = ((Integer)iterator.next()).intValue();
      if (!hashSet.contains(Integer.valueOf(j))) {
        dph dph = arrayMap.get(Integer.valueOf(j));
        if (dph == null)
          dph = new dph(); 
        arrayOfDph[i] = dph;
        dph.a = Integer.valueOf(j);
        dph.b = new dpm();
        dph.b.b = dou.a(arrayMap1.get(Integer.valueOf(j)));
        dph.b.a = dou.a(arrayMap2.get(Integer.valueOf(j)));
        p().a(paramString, j, dph.b);
        i++;
      } 
    } 
    return Arrays.<dph>copyOf(arrayOfDph, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
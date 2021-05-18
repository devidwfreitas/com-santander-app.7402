package org.dom4j.tree;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

class ConcurrentReaderHashMap extends AbstractMap implements Serializable, Cloneable, Map {
  public static int DEFAULT_INITIAL_CAPACITY = 32;
  
  public static final float DEFAULT_LOAD_FACTOR = 0.75F;
  
  private static final int MAXIMUM_CAPACITY = 1073741824;
  
  private static final int MINIMUM_CAPACITY = 4;
  
  protected final ConcurrentReaderHashMap$BarrierLock barrierLock = new ConcurrentReaderHashMap$BarrierLock();
  
  protected transient int count;
  
  protected transient Set entrySet = null;
  
  protected transient Set keySet = null;
  
  protected transient Object lastWrite;
  
  protected float loadFactor;
  
  protected transient ConcurrentReaderHashMap$Entry[] table;
  
  protected int threshold;
  
  protected transient Collection values = null;
  
  public ConcurrentReaderHashMap() {
    this(DEFAULT_INITIAL_CAPACITY, 0.75F);
  }
  
  public ConcurrentReaderHashMap(int paramInt) {
    this(paramInt, 0.75F);
  }
  
  public ConcurrentReaderHashMap(int paramInt, float paramFloat) {
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException("Illegal Load factor: " + paramFloat); 
    this.loadFactor = paramFloat;
    paramInt = p2capacity(paramInt);
    this.table = new ConcurrentReaderHashMap$Entry[paramInt];
    this.threshold = (int)(paramInt * paramFloat);
  }
  
  public ConcurrentReaderHashMap(Map paramMap) {
    this(Math.max((int)(paramMap.size() / 0.75F) + 1, 16), 0.75F);
    putAll(paramMap);
  }
  
  private static int hash(Object paramObject) {
    int i = paramObject.hashCode();
    return (i >>> 17) + (i << 7) - i + (i >>> 9);
  }
  
  private int p2capacity(int paramInt) {
    int i = 1073741824;
    int j = i;
    if (paramInt <= 1073741824) {
      if (paramInt < 0)
        return i; 
    } else {
      return j;
    } 
    i = 4;
    while (true) {
      j = i;
      if (i < paramInt) {
        i <<= 1;
        continue;
      } 
      return j;
    } 
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual defaultReadObject : ()V
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual readInt : ()I
    //   11: anewarray org/dom4j/tree/ConcurrentReaderHashMap$Entry
    //   14: putfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   17: aload_1
    //   18: invokevirtual readInt : ()I
    //   21: istore_3
    //   22: iconst_0
    //   23: istore_2
    //   24: iload_2
    //   25: iload_3
    //   26: if_icmpge -> 49
    //   29: aload_0
    //   30: aload_1
    //   31: invokevirtual readObject : ()Ljava/lang/Object;
    //   34: aload_1
    //   35: invokevirtual readObject : ()Ljava/lang/Object;
    //   38: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   41: pop
    //   42: iload_2
    //   43: iconst_1
    //   44: iadd
    //   45: istore_2
    //   46: goto -> 24
    //   49: aload_0
    //   50: monitorexit
    //   51: return
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	52	finally
    //   29	42	52	finally
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual defaultWriteObject : ()V
    //   6: aload_1
    //   7: aload_0
    //   8: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   11: arraylength
    //   12: invokevirtual writeInt : (I)V
    //   15: aload_1
    //   16: aload_0
    //   17: getfield count : I
    //   20: invokevirtual writeInt : (I)V
    //   23: aload_0
    //   24: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   27: arraylength
    //   28: iconst_1
    //   29: isub
    //   30: istore_2
    //   31: iload_2
    //   32: iflt -> 77
    //   35: aload_0
    //   36: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   39: iload_2
    //   40: aaload
    //   41: astore_3
    //   42: aload_3
    //   43: ifnull -> 70
    //   46: aload_1
    //   47: aload_3
    //   48: getfield key : Ljava/lang/Object;
    //   51: invokevirtual writeObject : (Ljava/lang/Object;)V
    //   54: aload_1
    //   55: aload_3
    //   56: getfield value : Ljava/lang/Object;
    //   59: invokevirtual writeObject : (Ljava/lang/Object;)V
    //   62: aload_3
    //   63: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   66: astore_3
    //   67: goto -> 42
    //   70: iload_2
    //   71: iconst_1
    //   72: isub
    //   73: istore_2
    //   74: goto -> 31
    //   77: aload_0
    //   78: monitorexit
    //   79: return
    //   80: astore_1
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_1
    //   84: athrow
    // Exception table:
    //   from	to	target	type
    //   2	31	80	finally
    //   35	42	80	finally
    //   46	67	80	finally
  }
  
  public int capacity() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   6: arraylength
    //   7: istore_1
    //   8: aload_0
    //   9: monitorexit
    //   10: iload_1
    //   11: ireturn
    //   12: astore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_2
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	12	finally
  }
  
  public void clear() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   6: astore_3
    //   7: iconst_0
    //   8: istore_1
    //   9: iload_1
    //   10: aload_3
    //   11: arraylength
    //   12: if_icmpge -> 36
    //   15: aload_3
    //   16: iload_1
    //   17: aaload
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull -> 54
    //   23: aload_2
    //   24: aconst_null
    //   25: putfield value : Ljava/lang/Object;
    //   28: aload_2
    //   29: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   32: astore_2
    //   33: goto -> 19
    //   36: aload_0
    //   37: iconst_0
    //   38: putfield count : I
    //   41: aload_0
    //   42: aload_3
    //   43: invokevirtual recordModification : (Ljava/lang/Object;)V
    //   46: aload_0
    //   47: monitorexit
    //   48: return
    //   49: astore_2
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_2
    //   53: athrow
    //   54: aload_3
    //   55: iload_1
    //   56: aconst_null
    //   57: aastore
    //   58: iload_1
    //   59: iconst_1
    //   60: iadd
    //   61: istore_1
    //   62: goto -> 9
    // Exception table:
    //   from	to	target	type
    //   2	7	49	finally
    //   9	15	49	finally
    //   23	33	49	finally
    //   36	46	49	finally
  }
  
  public Object clone() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial clone : ()Ljava/lang/Object;
    //   6: checkcast org/dom4j/tree/ConcurrentReaderHashMap
    //   9: astore #4
    //   11: aload #4
    //   13: aconst_null
    //   14: putfield keySet : Ljava/util/Set;
    //   17: aload #4
    //   19: aconst_null
    //   20: putfield entrySet : Ljava/util/Set;
    //   23: aload #4
    //   25: aconst_null
    //   26: putfield values : Ljava/util/Collection;
    //   29: aload_0
    //   30: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   33: astore #5
    //   35: aload #4
    //   37: aload #5
    //   39: arraylength
    //   40: anewarray org/dom4j/tree/ConcurrentReaderHashMap$Entry
    //   43: putfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   46: aload #4
    //   48: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   51: astore #6
    //   53: iconst_0
    //   54: istore_1
    //   55: iload_1
    //   56: aload #5
    //   58: arraylength
    //   59: if_icmpge -> 128
    //   62: aload #5
    //   64: iload_1
    //   65: aaload
    //   66: astore_2
    //   67: aconst_null
    //   68: astore_3
    //   69: aload_2
    //   70: ifnull -> 102
    //   73: new org/dom4j/tree/ConcurrentReaderHashMap$Entry
    //   76: dup
    //   77: aload_2
    //   78: getfield hash : I
    //   81: aload_2
    //   82: getfield key : Ljava/lang/Object;
    //   85: aload_2
    //   86: getfield value : Ljava/lang/Object;
    //   89: aload_3
    //   90: invokespecial <init> : (ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V
    //   93: astore_3
    //   94: aload_2
    //   95: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   98: astore_2
    //   99: goto -> 69
    //   102: aload #6
    //   104: iload_1
    //   105: aload_3
    //   106: aastore
    //   107: iload_1
    //   108: iconst_1
    //   109: iadd
    //   110: istore_1
    //   111: goto -> 55
    //   114: astore_2
    //   115: new java/lang/InternalError
    //   118: dup
    //   119: invokespecial <init> : ()V
    //   122: athrow
    //   123: astore_2
    //   124: aload_0
    //   125: monitorexit
    //   126: aload_2
    //   127: athrow
    //   128: aload_0
    //   129: monitorexit
    //   130: aload #4
    //   132: areturn
    // Exception table:
    //   from	to	target	type
    //   2	53	114	java/lang/CloneNotSupportedException
    //   2	53	123	finally
    //   55	62	114	java/lang/CloneNotSupportedException
    //   55	62	123	finally
    //   73	99	114	java/lang/CloneNotSupportedException
    //   73	99	123	finally
    //   115	123	123	finally
  }
  
  public boolean contains(Object paramObject) {
    return containsValue(paramObject);
  }
  
  public boolean containsKey(Object paramObject) {
    return (get(paramObject) != null);
  }
  
  public boolean containsValue(Object paramObject) {
    boolean bool = false;
    if (paramObject == null)
      throw new NullPointerException(); 
    ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry = getTableForReading();
    int i = 0;
    while (true) {
      boolean bool1 = bool;
      if (i < arrayOfConcurrentReaderHashMap$Entry.length) {
        for (ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry = arrayOfConcurrentReaderHashMap$Entry[i]; concurrentReaderHashMap$Entry != null; concurrentReaderHashMap$Entry = concurrentReaderHashMap$Entry.next) {
          if (paramObject.equals(concurrentReaderHashMap$Entry.value))
            return true; 
        } 
        i++;
        continue;
      } 
      continue;
    } 
  }
  
  public Enumeration elements() {
    return new ConcurrentReaderHashMap$ValueIterator(this);
  }
  
  public Set entrySet() {
    Set set = this.entrySet;
    if (set != null)
      return set; 
    set = new ConcurrentReaderHashMap$EntrySet(this, null);
    this.entrySet = set;
    return set;
  }
  
  protected boolean eq(Object paramObject1, Object paramObject2) {
    return (paramObject1 == paramObject2 || paramObject1.equals(paramObject2));
  }
  
  protected boolean findAndRemoveEntry(Map.Entry paramEntry) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokeinterface getKey : ()Ljava/lang/Object;
    //   8: astore_3
    //   9: aload_0
    //   10: aload_3
    //   11: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   14: astore #4
    //   16: aload #4
    //   18: ifnull -> 47
    //   21: aload #4
    //   23: aload_1
    //   24: invokeinterface getValue : ()Ljava/lang/Object;
    //   29: invokevirtual equals : (Ljava/lang/Object;)Z
    //   32: ifeq -> 47
    //   35: aload_0
    //   36: aload_3
    //   37: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   40: pop
    //   41: iconst_1
    //   42: istore_2
    //   43: aload_0
    //   44: monitorexit
    //   45: iload_2
    //   46: ireturn
    //   47: iconst_0
    //   48: istore_2
    //   49: goto -> 43
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	52	finally
    //   21	41	52	finally
  }
  
  public Object get(Object paramObject) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic hash : (Ljava/lang/Object;)I
    //   4: istore_3
    //   5: aload_0
    //   6: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   9: astore #6
    //   11: iload_3
    //   12: aload #6
    //   14: arraylength
    //   15: iconst_1
    //   16: isub
    //   17: iand
    //   18: istore_2
    //   19: aload #6
    //   21: iload_2
    //   22: aaload
    //   23: astore #4
    //   25: aload #4
    //   27: astore #5
    //   29: aload #4
    //   31: ifnonnull -> 87
    //   34: aload_0
    //   35: invokevirtual getTableForReading : ()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   38: astore #7
    //   40: aload #6
    //   42: aload #7
    //   44: if_acmpne -> 62
    //   47: aload #5
    //   49: aload #6
    //   51: iload_2
    //   52: aaload
    //   53: if_acmpne -> 62
    //   56: aconst_null
    //   57: astore #4
    //   59: aload #4
    //   61: areturn
    //   62: iload_3
    //   63: aload #7
    //   65: arraylength
    //   66: iconst_1
    //   67: isub
    //   68: iand
    //   69: istore_2
    //   70: aload #7
    //   72: iload_2
    //   73: aaload
    //   74: astore #4
    //   76: aload #7
    //   78: astore #6
    //   80: aload #4
    //   82: astore #5
    //   84: goto -> 29
    //   87: aload #4
    //   89: getfield hash : I
    //   92: iload_3
    //   93: if_icmpne -> 161
    //   96: aload_0
    //   97: aload_1
    //   98: aload #4
    //   100: getfield key : Ljava/lang/Object;
    //   103: invokevirtual eq : (Ljava/lang/Object;Ljava/lang/Object;)Z
    //   106: ifeq -> 161
    //   109: aload #4
    //   111: getfield value : Ljava/lang/Object;
    //   114: astore #5
    //   116: aload #5
    //   118: astore #4
    //   120: aload #5
    //   122: ifnonnull -> 59
    //   125: aload_0
    //   126: monitorenter
    //   127: aload_0
    //   128: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   131: astore #6
    //   133: aload_0
    //   134: monitorexit
    //   135: iload_3
    //   136: aload #6
    //   138: arraylength
    //   139: iconst_1
    //   140: isub
    //   141: iand
    //   142: istore_2
    //   143: aload #6
    //   145: iload_2
    //   146: aaload
    //   147: astore #4
    //   149: aload #4
    //   151: astore #5
    //   153: goto -> 29
    //   156: astore_1
    //   157: aload_0
    //   158: monitorexit
    //   159: aload_1
    //   160: athrow
    //   161: aload #4
    //   163: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   166: astore #4
    //   168: goto -> 29
    // Exception table:
    //   from	to	target	type
    //   127	135	156	finally
    //   157	159	156	finally
  }
  
  protected final ConcurrentReaderHashMap$Entry[] getTableForReading() {
    synchronized (this.barrierLock) {
      return this.table;
    } 
  }
  
  public boolean isEmpty() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: istore_1
    //   7: iload_1
    //   8: ifne -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -> 13
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public Set keySet() {
    Set set = this.keySet;
    if (set != null)
      return set; 
    set = new ConcurrentReaderHashMap$KeySet(this, null);
    this.keySet = set;
    return set;
  }
  
  public Enumeration keys() {
    return new ConcurrentReaderHashMap$KeyIterator(this);
  }
  
  public float loadFactor() {
    return this.loadFactor;
  }
  
  public Object put(Object paramObject1, Object paramObject2) {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull -> 12
    //   4: new java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial <init> : ()V
    //   11: athrow
    //   12: aload_1
    //   13: invokestatic hash : (Ljava/lang/Object;)I
    //   16: istore_3
    //   17: aload_0
    //   18: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   21: astore #7
    //   23: iload_3
    //   24: aload #7
    //   26: arraylength
    //   27: iconst_1
    //   28: isub
    //   29: iand
    //   30: istore #4
    //   32: aload #7
    //   34: iload #4
    //   36: aaload
    //   37: astore #6
    //   39: aload #6
    //   41: astore #5
    //   43: aload #5
    //   45: ifnull -> 70
    //   48: aload #5
    //   50: getfield hash : I
    //   53: iload_3
    //   54: if_icmpne -> 143
    //   57: aload_0
    //   58: aload_1
    //   59: aload #5
    //   61: getfield key : Ljava/lang/Object;
    //   64: invokevirtual eq : (Ljava/lang/Object;Ljava/lang/Object;)Z
    //   67: ifeq -> 143
    //   70: aload_0
    //   71: monitorenter
    //   72: aload #7
    //   74: aload_0
    //   75: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   78: if_acmpne -> 199
    //   81: aload #5
    //   83: ifnonnull -> 166
    //   86: aload #6
    //   88: aload #7
    //   90: iload #4
    //   92: aaload
    //   93: if_acmpne -> 199
    //   96: new org/dom4j/tree/ConcurrentReaderHashMap$Entry
    //   99: dup
    //   100: iload_3
    //   101: aload_1
    //   102: aload_2
    //   103: aload #6
    //   105: invokespecial <init> : (ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V
    //   108: astore_1
    //   109: aload #7
    //   111: iload #4
    //   113: aload_1
    //   114: aastore
    //   115: aload_0
    //   116: getfield count : I
    //   119: iconst_1
    //   120: iadd
    //   121: istore_3
    //   122: aload_0
    //   123: iload_3
    //   124: putfield count : I
    //   127: iload_3
    //   128: aload_0
    //   129: getfield threshold : I
    //   132: if_icmplt -> 153
    //   135: aload_0
    //   136: invokevirtual rehash : ()V
    //   139: aload_0
    //   140: monitorexit
    //   141: aconst_null
    //   142: areturn
    //   143: aload #5
    //   145: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   148: astore #5
    //   150: goto -> 43
    //   153: aload_0
    //   154: aload_1
    //   155: invokevirtual recordModification : (Ljava/lang/Object;)V
    //   158: goto -> 139
    //   161: astore_1
    //   162: aload_0
    //   163: monitorexit
    //   164: aload_1
    //   165: athrow
    //   166: aload #5
    //   168: getfield value : Ljava/lang/Object;
    //   171: astore #8
    //   173: aload #6
    //   175: aload #7
    //   177: iload #4
    //   179: aaload
    //   180: if_acmpne -> 199
    //   183: aload #8
    //   185: ifnull -> 199
    //   188: aload #5
    //   190: aload_2
    //   191: putfield value : Ljava/lang/Object;
    //   194: aload_0
    //   195: monitorexit
    //   196: aload #8
    //   198: areturn
    //   199: aload_0
    //   200: aload_1
    //   201: aload_2
    //   202: iload_3
    //   203: invokevirtual sput : (Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    //   206: astore_1
    //   207: aload_0
    //   208: monitorexit
    //   209: aload_1
    //   210: areturn
    // Exception table:
    //   from	to	target	type
    //   72	81	161	finally
    //   96	109	161	finally
    //   115	139	161	finally
    //   139	141	161	finally
    //   153	158	161	finally
    //   162	164	161	finally
    //   166	173	161	finally
    //   188	196	161	finally
    //   199	209	161	finally
  }
  
  public void putAll(Map paramMap) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokeinterface size : ()I
    //   8: istore_2
    //   9: iload_2
    //   10: ifne -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: iload_2
    //   17: aload_0
    //   18: getfield threshold : I
    //   21: if_icmplt -> 36
    //   24: aload_0
    //   25: invokevirtual rehash : ()V
    //   28: goto -> 16
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    //   36: aload_1
    //   37: invokeinterface entrySet : ()Ljava/util/Set;
    //   42: invokeinterface iterator : ()Ljava/util/Iterator;
    //   47: astore_1
    //   48: aload_1
    //   49: invokeinterface hasNext : ()Z
    //   54: ifeq -> 13
    //   57: aload_1
    //   58: invokeinterface next : ()Ljava/lang/Object;
    //   63: checkcast java/util/Map$Entry
    //   66: astore_3
    //   67: aload_0
    //   68: aload_3
    //   69: invokeinterface getKey : ()Ljava/lang/Object;
    //   74: aload_3
    //   75: invokeinterface getValue : ()Ljava/lang/Object;
    //   80: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   83: pop
    //   84: goto -> 48
    // Exception table:
    //   from	to	target	type
    //   2	9	31	finally
    //   16	28	31	finally
    //   36	48	31	finally
    //   48	84	31	finally
  }
  
  protected final void recordModification(Object paramObject) {
    synchronized (this.barrierLock) {
      this.lastWrite = paramObject;
      return;
    } 
  }
  
  protected void rehash() {
    ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry1 = this.table;
    int k = arrayOfConcurrentReaderHashMap$Entry1.length;
    if (k >= 1073741824) {
      this.threshold = Integer.MAX_VALUE;
      return;
    } 
    int i = k << 1;
    int m = i - 1;
    this.threshold = (int)(i * this.loadFactor);
    ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry2 = new ConcurrentReaderHashMap$Entry[i];
    int j = 0;
    label31: while (j < k) {
      ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry = arrayOfConcurrentReaderHashMap$Entry1[j];
      if (concurrentReaderHashMap$Entry != null) {
        i = concurrentReaderHashMap$Entry.hash & m;
        ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry.next;
        if (concurrentReaderHashMap$Entry1 == null) {
          arrayOfConcurrentReaderHashMap$Entry2[i] = concurrentReaderHashMap$Entry;
          continue;
        } 
        ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry2 = concurrentReaderHashMap$Entry;
        while (concurrentReaderHashMap$Entry1 != null) {
          int n = concurrentReaderHashMap$Entry1.hash & m;
          if (n != i) {
            concurrentReaderHashMap$Entry2 = concurrentReaderHashMap$Entry1;
            i = n;
          } 
          concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry1.next;
        } 
        arrayOfConcurrentReaderHashMap$Entry2[i] = concurrentReaderHashMap$Entry2;
        while (true) {
          if (concurrentReaderHashMap$Entry != concurrentReaderHashMap$Entry2) {
            i = concurrentReaderHashMap$Entry.hash & m;
            arrayOfConcurrentReaderHashMap$Entry2[i] = new ConcurrentReaderHashMap$Entry(concurrentReaderHashMap$Entry.hash, concurrentReaderHashMap$Entry.key, concurrentReaderHashMap$Entry.value, arrayOfConcurrentReaderHashMap$Entry2[i]);
            concurrentReaderHashMap$Entry = concurrentReaderHashMap$Entry.next;
            continue;
          } 
          j++;
          continue label31;
        } 
      } 
      continue;
    } 
    this.table = arrayOfConcurrentReaderHashMap$Entry2;
    recordModification(arrayOfConcurrentReaderHashMap$Entry2);
  }
  
  public Object remove(Object paramObject) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic hash : (Ljava/lang/Object;)I
    //   4: istore_2
    //   5: aload_0
    //   6: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   9: astore #6
    //   11: iload_2
    //   12: aload #6
    //   14: arraylength
    //   15: iconst_1
    //   16: isub
    //   17: iand
    //   18: istore_3
    //   19: aload #6
    //   21: iload_3
    //   22: aaload
    //   23: astore #5
    //   25: aload #5
    //   27: astore #4
    //   29: aload #4
    //   31: ifnull -> 56
    //   34: aload #4
    //   36: getfield hash : I
    //   39: iload_2
    //   40: if_icmpne -> 85
    //   43: aload_0
    //   44: aload_1
    //   45: aload #4
    //   47: getfield key : Ljava/lang/Object;
    //   50: invokevirtual eq : (Ljava/lang/Object;Ljava/lang/Object;)Z
    //   53: ifeq -> 85
    //   56: aload_0
    //   57: monitorenter
    //   58: aload #6
    //   60: aload_0
    //   61: getfield table : [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   64: if_acmpne -> 199
    //   67: aload #4
    //   69: ifnonnull -> 95
    //   72: aload #5
    //   74: aload #6
    //   76: iload_3
    //   77: aaload
    //   78: if_acmpne -> 199
    //   81: aload_0
    //   82: monitorexit
    //   83: aconst_null
    //   84: areturn
    //   85: aload #4
    //   87: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   90: astore #4
    //   92: goto -> 29
    //   95: aload #4
    //   97: getfield value : Ljava/lang/Object;
    //   100: astore #7
    //   102: aload #5
    //   104: aload #6
    //   106: iload_3
    //   107: aaload
    //   108: if_acmpne -> 199
    //   111: aload #7
    //   113: ifnull -> 199
    //   116: aload #4
    //   118: aconst_null
    //   119: putfield value : Ljava/lang/Object;
    //   122: aload_0
    //   123: aload_0
    //   124: getfield count : I
    //   127: iconst_1
    //   128: isub
    //   129: putfield count : I
    //   132: aload #4
    //   134: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   137: astore_1
    //   138: aload #5
    //   140: aload #4
    //   142: if_acmpeq -> 179
    //   145: new org/dom4j/tree/ConcurrentReaderHashMap$Entry
    //   148: dup
    //   149: aload #5
    //   151: getfield hash : I
    //   154: aload #5
    //   156: getfield key : Ljava/lang/Object;
    //   159: aload #5
    //   161: getfield value : Ljava/lang/Object;
    //   164: aload_1
    //   165: invokespecial <init> : (ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V
    //   168: astore_1
    //   169: aload #5
    //   171: getfield next : Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    //   174: astore #5
    //   176: goto -> 138
    //   179: aload #6
    //   181: iload_3
    //   182: aload_1
    //   183: aastore
    //   184: aload_0
    //   185: aload_1
    //   186: invokevirtual recordModification : (Ljava/lang/Object;)V
    //   189: aload_0
    //   190: monitorexit
    //   191: aload #7
    //   193: areturn
    //   194: astore_1
    //   195: aload_0
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    //   199: aload_0
    //   200: aload_1
    //   201: iload_2
    //   202: invokevirtual sremove : (Ljava/lang/Object;I)Ljava/lang/Object;
    //   205: astore_1
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_1
    //   209: areturn
    // Exception table:
    //   from	to	target	type
    //   58	67	194	finally
    //   81	83	194	finally
    //   95	102	194	finally
    //   116	138	194	finally
    //   145	176	194	finally
    //   184	191	194	finally
    //   195	197	194	finally
    //   199	208	194	finally
  }
  
  public int size() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield count : I
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  protected Object sput(Object paramObject1, Object paramObject2, int paramInt) {
    ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry = this.table;
    int i = paramInt & arrayOfConcurrentReaderHashMap$Entry.length - 1;
    ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry2 = arrayOfConcurrentReaderHashMap$Entry[i];
    for (ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry2;; concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry1.next) {
      if (concurrentReaderHashMap$Entry1 == null) {
        paramObject1 = new ConcurrentReaderHashMap$Entry(paramInt, paramObject1, paramObject2, concurrentReaderHashMap$Entry2);
        arrayOfConcurrentReaderHashMap$Entry[i] = (ConcurrentReaderHashMap$Entry)paramObject1;
        paramInt = this.count + 1;
        this.count = paramInt;
        if (paramInt >= this.threshold) {
          rehash();
          return null;
        } 
        recordModification(paramObject1);
        return null;
      } 
      if (concurrentReaderHashMap$Entry1.hash == paramInt && eq(paramObject1, concurrentReaderHashMap$Entry1.key)) {
        paramObject1 = concurrentReaderHashMap$Entry1.value;
        concurrentReaderHashMap$Entry1.value = paramObject2;
        return paramObject1;
      } 
    } 
  }
  
  protected Object sremove(Object paramObject, int paramInt) {
    ConcurrentReaderHashMap$Entry[] arrayOfConcurrentReaderHashMap$Entry = this.table;
    int i = paramInt & arrayOfConcurrentReaderHashMap$Entry.length - 1;
    ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry2 = arrayOfConcurrentReaderHashMap$Entry[i];
    for (ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry2; concurrentReaderHashMap$Entry1 != null; concurrentReaderHashMap$Entry1 = concurrentReaderHashMap$Entry1.next) {
      if (concurrentReaderHashMap$Entry1.hash == paramInt && eq(paramObject, concurrentReaderHashMap$Entry1.key)) {
        Object object = concurrentReaderHashMap$Entry1.value;
        concurrentReaderHashMap$Entry1.value = null;
        this.count--;
        ConcurrentReaderHashMap$Entry concurrentReaderHashMap$Entry = concurrentReaderHashMap$Entry1.next;
        paramObject = concurrentReaderHashMap$Entry2;
        concurrentReaderHashMap$Entry2 = concurrentReaderHashMap$Entry;
        while (paramObject != concurrentReaderHashMap$Entry1) {
          concurrentReaderHashMap$Entry2 = new ConcurrentReaderHashMap$Entry(((ConcurrentReaderHashMap$Entry)paramObject).hash, ((ConcurrentReaderHashMap$Entry)paramObject).key, ((ConcurrentReaderHashMap$Entry)paramObject).value, concurrentReaderHashMap$Entry2);
          paramObject = ((ConcurrentReaderHashMap$Entry)paramObject).next;
        } 
        arrayOfConcurrentReaderHashMap$Entry[i] = concurrentReaderHashMap$Entry2;
        recordModification(concurrentReaderHashMap$Entry2);
        return object;
      } 
    } 
    return null;
  }
  
  public Collection values() {
    Collection collection = this.values;
    if (collection != null)
      return collection; 
    collection = new ConcurrentReaderHashMap$Values(this, null);
    this.values = collection;
    return collection;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ConcurrentReaderHashMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
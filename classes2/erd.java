import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public final class erd {
  static final String[] a = new String[] { "UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT" };
  
  static final int b = 0;
  
  static final int c = 1;
  
  static final int d = 2;
  
  static final int e = 3;
  
  static final int f = 4;
  
  static final int[][] g;
  
  static final int[][] h;
  
  private static final int[][] i = (int[][])Array.newInstance(int.class, new int[] { 5, 256 });
  
  private final byte[] j;
  
  static {
    i[0][32] = 1;
    int i;
    for (i = 65; i <= 90; i++)
      i[0][i] = i - 65 + 2; 
    i[1][32] = 1;
    for (i = 97; i <= 122; i++)
      i[1][i] = i - 97 + 2; 
    i[2][32] = 1;
    for (i = 48; i <= 57; i++)
      i[2][i] = i - 48 + 2; 
    i[2][44] = 12;
    i[2][46] = 13;
    arrayOfInt1 = new int[28];
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 32;
    arrayOfInt1[2] = 1;
    arrayOfInt1[3] = 2;
    arrayOfInt1[4] = 3;
    arrayOfInt1[5] = 4;
    arrayOfInt1[6] = 5;
    arrayOfInt1[7] = 6;
    arrayOfInt1[8] = 7;
    arrayOfInt1[9] = 8;
    arrayOfInt1[10] = 9;
    arrayOfInt1[11] = 10;
    arrayOfInt1[12] = 11;
    arrayOfInt1[13] = 12;
    arrayOfInt1[14] = 13;
    arrayOfInt1[15] = 27;
    arrayOfInt1[16] = 28;
    arrayOfInt1[17] = 29;
    arrayOfInt1[18] = 30;
    arrayOfInt1[19] = 31;
    arrayOfInt1[20] = 64;
    arrayOfInt1[21] = 92;
    arrayOfInt1[22] = 94;
    arrayOfInt1[23] = 95;
    arrayOfInt1[24] = 96;
    arrayOfInt1[25] = 124;
    arrayOfInt1[26] = 126;
    arrayOfInt1[27] = 127;
    for (i = 0; i < arrayOfInt1.length; i++)
      i[3][arrayOfInt1[i]] = i; 
    arrayOfInt1 = new int[31];
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 13;
    arrayOfInt1[2] = 0;
    arrayOfInt1[3] = 0;
    arrayOfInt1[4] = 0;
    arrayOfInt1[5] = 0;
    arrayOfInt1[6] = 33;
    arrayOfInt1[7] = 39;
    arrayOfInt1[8] = 35;
    arrayOfInt1[9] = 36;
    arrayOfInt1[10] = 37;
    arrayOfInt1[11] = 38;
    arrayOfInt1[12] = 39;
    arrayOfInt1[13] = 40;
    arrayOfInt1[14] = 41;
    arrayOfInt1[15] = 42;
    arrayOfInt1[16] = 43;
    arrayOfInt1[17] = 44;
    arrayOfInt1[18] = 45;
    arrayOfInt1[19] = 46;
    arrayOfInt1[20] = 47;
    arrayOfInt1[21] = 58;
    arrayOfInt1[22] = 59;
    arrayOfInt1[23] = 60;
    arrayOfInt1[24] = 61;
    arrayOfInt1[25] = 62;
    arrayOfInt1[26] = 63;
    arrayOfInt1[27] = 91;
    arrayOfInt1[28] = 93;
    arrayOfInt1[29] = 123;
    arrayOfInt1[30] = 125;
    for (i = 0; i < arrayOfInt1.length; i++) {
      if (arrayOfInt1[i] > 0)
        i[4][arrayOfInt1[i]] = i; 
    } 
    h = (int[][])Array.newInstance(int.class, new int[] { 6, 6 });
    int[][] arrayOfInt = h;
    int j = arrayOfInt.length;
    for (i = 0; i < j; i++)
      Arrays.fill(arrayOfInt[i], -1); 
    h[0][4] = 0;
    h[1][4] = 0;
    h[1][0] = 28;
    h[3][4] = 0;
    h[2][4] = 0;
    h[2][0] = 15;
  }
  
  public erd(byte[] paramArrayOfbyte) {
    this.j = paramArrayOfbyte;
  }
  
  private static Collection<erg> a(Iterable<erg> paramIterable) {
    // Byte code:
    //   0: new java/util/LinkedList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_2
    //   8: aload_0
    //   9: invokeinterface iterator : ()Ljava/util/Iterator;
    //   14: astore_0
    //   15: aload_0
    //   16: invokeinterface hasNext : ()Z
    //   21: ifeq -> 109
    //   24: aload_0
    //   25: invokeinterface next : ()Ljava/lang/Object;
    //   30: checkcast erg
    //   33: astore_3
    //   34: aload_2
    //   35: invokeinterface iterator : ()Ljava/util/Iterator;
    //   40: astore #4
    //   42: aload #4
    //   44: invokeinterface hasNext : ()Z
    //   49: ifeq -> 111
    //   52: aload #4
    //   54: invokeinterface next : ()Ljava/lang/Object;
    //   59: checkcast erg
    //   62: astore #5
    //   64: aload #5
    //   66: aload_3
    //   67: invokevirtual a : (Lerg;)Z
    //   70: ifeq -> 90
    //   73: iconst_0
    //   74: istore_1
    //   75: iload_1
    //   76: ifeq -> 15
    //   79: aload_2
    //   80: aload_3
    //   81: invokeinterface add : (Ljava/lang/Object;)Z
    //   86: pop
    //   87: goto -> 15
    //   90: aload_3
    //   91: aload #5
    //   93: invokevirtual a : (Lerg;)Z
    //   96: ifeq -> 42
    //   99: aload #4
    //   101: invokeinterface remove : ()V
    //   106: goto -> 42
    //   109: aload_2
    //   110: areturn
    //   111: iconst_1
    //   112: istore_1
    //   113: goto -> 75
  }
  
  private Collection<erg> a(Iterable<erg> paramIterable, int paramInt) {
    LinkedList<erg> linkedList = new LinkedList();
    Iterator<erg> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      a(iterator.next(), paramInt, linkedList); 
    return a(linkedList);
  }
  
  private static Collection<erg> a(Iterable<erg> paramIterable, int paramInt1, int paramInt2) {
    LinkedList<erg> linkedList = new LinkedList();
    Iterator<erg> iterator = paramIterable.iterator();
    while (iterator.hasNext())
      a(iterator.next(), paramInt1, paramInt2, linkedList); 
    return a(linkedList);
  }
  
  private static void a(erg paramerg, int paramInt1, int paramInt2, Collection<erg> paramCollection) {
    erg erg1 = paramerg.b(paramInt1);
    paramCollection.add(erg1.a(4, paramInt2));
    if (paramerg.a() != 4)
      paramCollection.add(erg1.b(4, paramInt2)); 
    if (paramInt2 == 3 || paramInt2 == 4)
      paramCollection.add(erg1.a(2, 16 - paramInt2).a(2, 1)); 
    if (paramerg.c() > 0)
      paramCollection.add(paramerg.a(paramInt1).a(paramInt1 + 1)); 
  }
  
  private void a(erg paramerg, int paramInt, Collection<erg> paramCollection) {
    boolean bool;
    char c = (char)(this.j[paramInt] & 0xFF);
    if (i[paramerg.a()][c] > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    erg erg1 = null;
    int i = 0;
    while (i <= 4) {
      int j = i[i][c];
      erg erg2 = erg1;
      if (j > 0) {
        erg erg3 = erg1;
        if (erg1 == null)
          erg3 = paramerg.b(paramInt); 
        if (!bool || i == paramerg.a() || i == 2)
          paramCollection.add(erg3.a(i, j)); 
        erg2 = erg3;
        if (!bool) {
          erg2 = erg3;
          if (h[paramerg.a()][i] >= 0) {
            paramCollection.add(erg3.b(i, j));
            erg2 = erg3;
          } 
        } 
      } 
      i++;
      erg1 = erg2;
    } 
    if (paramerg.c() > 0 || i[paramerg.a()][c] == 0)
      paramCollection.add(paramerg.a(paramInt)); 
  }
  
  public ets a() {
    // Byte code:
    //   0: getstatic erg.a : Lerg;
    //   3: invokestatic singletonList : (Ljava/lang/Object;)Ljava/util/List;
    //   6: astore_3
    //   7: iconst_0
    //   8: istore_2
    //   9: iload_2
    //   10: aload_0
    //   11: getfield j : [B
    //   14: arraylength
    //   15: if_icmpge -> 191
    //   18: iload_2
    //   19: iconst_1
    //   20: iadd
    //   21: aload_0
    //   22: getfield j : [B
    //   25: arraylength
    //   26: if_icmpge -> 112
    //   29: aload_0
    //   30: getfield j : [B
    //   33: iload_2
    //   34: iconst_1
    //   35: iadd
    //   36: baload
    //   37: istore_1
    //   38: aload_0
    //   39: getfield j : [B
    //   42: iload_2
    //   43: baload
    //   44: lookupswitch default -> 88, 13 -> 117, 44 -> 149, 46 -> 133, 58 -> 165
    //   88: iconst_0
    //   89: istore_1
    //   90: iload_1
    //   91: ifle -> 181
    //   94: aload_3
    //   95: iload_2
    //   96: iload_1
    //   97: invokestatic a : (Ljava/lang/Iterable;II)Ljava/util/Collection;
    //   100: astore_3
    //   101: iload_2
    //   102: iconst_1
    //   103: iadd
    //   104: istore_2
    //   105: iload_2
    //   106: iconst_1
    //   107: iadd
    //   108: istore_2
    //   109: goto -> 9
    //   112: iconst_0
    //   113: istore_1
    //   114: goto -> 38
    //   117: iload_1
    //   118: bipush #10
    //   120: if_icmpne -> 128
    //   123: iconst_2
    //   124: istore_1
    //   125: goto -> 90
    //   128: iconst_0
    //   129: istore_1
    //   130: goto -> 90
    //   133: iload_1
    //   134: bipush #32
    //   136: if_icmpne -> 144
    //   139: iconst_3
    //   140: istore_1
    //   141: goto -> 90
    //   144: iconst_0
    //   145: istore_1
    //   146: goto -> 90
    //   149: iload_1
    //   150: bipush #32
    //   152: if_icmpne -> 160
    //   155: iconst_4
    //   156: istore_1
    //   157: goto -> 90
    //   160: iconst_0
    //   161: istore_1
    //   162: goto -> 90
    //   165: iload_1
    //   166: bipush #32
    //   168: if_icmpne -> 176
    //   171: iconst_5
    //   172: istore_1
    //   173: goto -> 90
    //   176: iconst_0
    //   177: istore_1
    //   178: goto -> 90
    //   181: aload_0
    //   182: aload_3
    //   183: iload_2
    //   184: invokespecial a : (Ljava/lang/Iterable;I)Ljava/util/Collection;
    //   187: astore_3
    //   188: goto -> 105
    //   191: aload_3
    //   192: new ere
    //   195: dup
    //   196: aload_0
    //   197: invokespecial <init> : (Lerd;)V
    //   200: invokestatic min : (Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    //   203: checkcast erg
    //   206: aload_0
    //   207: getfield j : [B
    //   210: invokevirtual a : ([B)Lets;
    //   213: areturn
  }
  
  static {
    int[] arrayOfInt1 = { 0, 327708, 327710, 327709, 656318 };
    int[] arrayOfInt2 = { 262158, 590300, 0, 590301, 932798 };
    g = new int[][] { arrayOfInt1, { 590318, 0, 327710, 327709, 656318 }, arrayOfInt2, { 327709, 327708, 656318, 0, 327710 }, { 327711, 656380, 656382, 656381, 0 } };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
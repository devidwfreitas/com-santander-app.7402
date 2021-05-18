import java.util.EnumMap;
import java.util.Map;

final class exb {
  private static final int[] a = new int[] { 24, 20, 18, 17, 12, 6, 3, 10, 9, 5 };
  
  private final int[] b = new int[4];
  
  private final StringBuilder c = new StringBuilder();
  
  private static int a(int paramInt) {
    for (int i = 0; i < 10; i++) {
      if (paramInt == a[i])
        return i; 
    } 
    throw eqh.a();
  }
  
  private static int a(CharSequence paramCharSequence) {
    int k = paramCharSequence.length();
    int j = 0;
    int i;
    for (i = k - 2; i >= 0; i -= 2)
      j += paramCharSequence.charAt(i) - 48; 
    j *= 3;
    for (i = k - 1; i >= 0; i -= 2)
      j += paramCharSequence.charAt(i) - 48; 
    return j * 3 % 10;
  }
  
  private static Map<eqn, Object> a(String paramString) {
    if (paramString.length() == 5) {
      paramString = b(paramString);
      if (paramString != null) {
        EnumMap<eqn, Object> enumMap = new EnumMap<eqn, Object>(eqn.class);
        enumMap.put(eqn.SUGGESTED_PRICE, paramString);
        return enumMap;
      } 
    } 
    return null;
  }
  
  private static String b(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual charAt : (I)C
    //   5: lookupswitch default -> 40, 48 -> 119, 53 -> 125, 57 -> 131
    //   40: ldc ''
    //   42: astore_3
    //   43: aload_0
    //   44: iconst_1
    //   45: invokevirtual substring : (I)Ljava/lang/String;
    //   48: invokestatic parseInt : (Ljava/lang/String;)I
    //   51: istore_2
    //   52: iload_2
    //   53: bipush #100
    //   55: idiv
    //   56: istore_1
    //   57: iload_2
    //   58: bipush #100
    //   60: irem
    //   61: istore_2
    //   62: iload_2
    //   63: bipush #10
    //   65: if_icmpge -> 172
    //   68: new java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial <init> : ()V
    //   75: ldc '0'
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: iload_2
    //   81: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   84: invokevirtual toString : ()Ljava/lang/String;
    //   87: astore_0
    //   88: new java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial <init> : ()V
    //   95: aload_3
    //   96: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: iload_1
    //   100: invokestatic valueOf : (I)Ljava/lang/String;
    //   103: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: bipush #46
    //   108: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   111: aload_0
    //   112: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual toString : ()Ljava/lang/String;
    //   118: areturn
    //   119: ldc '£'
    //   121: astore_3
    //   122: goto -> 43
    //   125: ldc '$'
    //   127: astore_3
    //   128: goto -> 43
    //   131: ldc '90000'
    //   133: aload_0
    //   134: invokevirtual equals : (Ljava/lang/Object;)Z
    //   137: ifeq -> 142
    //   140: aconst_null
    //   141: areturn
    //   142: ldc '99991'
    //   144: aload_0
    //   145: invokevirtual equals : (Ljava/lang/Object;)Z
    //   148: ifeq -> 154
    //   151: ldc '0.00'
    //   153: areturn
    //   154: ldc '99990'
    //   156: aload_0
    //   157: invokevirtual equals : (Ljava/lang/Object;)Z
    //   160: ifeq -> 166
    //   163: ldc 'Used'
    //   165: areturn
    //   166: ldc ''
    //   168: astore_3
    //   169: goto -> 43
    //   172: iload_2
    //   173: invokestatic valueOf : (I)Ljava/lang/String;
    //   176: astore_0
    //   177: goto -> 88
  }
  
  int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = this.b;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int m = paramets.a();
    int i = paramArrayOfint[1];
    int k = 0;
    int j;
    for (j = 0; k < 5 && i < m; j = n) {
      int i1 = exd.a(paramets, arrayOfInt, i, exd.e);
      paramStringBuilder.append((char)(i1 % 10 + 48));
      int i2 = arrayOfInt.length;
      int n = 0;
      while (n < i2) {
        int i3 = arrayOfInt[n];
        n++;
        i = i3 + i;
      } 
      n = j;
      if (i1 >= 10)
        n = j | 1 << 4 - k; 
      j = i;
      if (k != 4)
        j = paramets.e(paramets.d(i)); 
      k++;
      i = j;
    } 
    if (paramStringBuilder.length() != 5)
      throw eqh.a(); 
    j = a(j);
    if (a(paramStringBuilder.toString()) != j)
      throw eqh.a(); 
    return i;
  }
  
  eqm a(int paramInt, ets paramets, int[] paramArrayOfint) {
    StringBuilder stringBuilder = this.c;
    stringBuilder.setLength(0);
    int i = a(paramets, paramArrayOfint, stringBuilder);
    String str = stringBuilder.toString();
    Map<eqn, Object> map = a(str);
    eqo eqo1 = new eqo((paramArrayOfint[0] + paramArrayOfint[1]) / 2.0F, paramInt);
    eqo eqo2 = new eqo(i, paramInt);
    epu epu = epu.UPC_EAN_EXTENSION;
    eqm eqm = new eqm(str, null, new eqo[] { eqo1, eqo2 }, epu);
    if (map != null)
      eqm.a(map); 
    return eqm;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
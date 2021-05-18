import java.io.UnsupportedEncodingException;
import java.util.Collection;

final class euq {
  private static final char[] a = new char[] { 
      '*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', 
      '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 
      'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 
      'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
  
  private static final char[] b = new char[] { 
      '!', '"', '#', '$', '%', '&', '\'', '(', ')', '*', 
      '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', 
      '?', '@', '[', '\\', ']', '^', '_' };
  
  private static final char[] c = new char[] { 
      '*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', 
      '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 
      'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 
      'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
  
  private static final char[] d = b;
  
  private static final char[] e = new char[] { 
      '`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 
      'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 
      'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', 
      '~', '' };
  
  private static int a(int paramInt1, int paramInt2) {
    paramInt1 -= paramInt2 * 149 % 255 + 1;
    return (paramInt1 >= 0) ? paramInt1 : (paramInt1 + 256);
  }
  
  static etw a(byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: new etu
    //   3: dup
    //   4: aload_0
    //   5: invokespecial <init> : ([B)V
    //   8: astore_3
    //   9: new java/lang/StringBuilder
    //   12: dup
    //   13: bipush #100
    //   15: invokespecial <init> : (I)V
    //   18: astore #4
    //   20: new java/lang/StringBuilder
    //   23: dup
    //   24: iconst_0
    //   25: invokespecial <init> : (I)V
    //   28: astore #5
    //   30: new java/util/ArrayList
    //   33: dup
    //   34: iconst_1
    //   35: invokespecial <init> : (I)V
    //   38: astore_2
    //   39: getstatic eus.ASCII_ENCODE : Leus;
    //   42: astore_1
    //   43: aload_1
    //   44: getstatic eus.ASCII_ENCODE : Leus;
    //   47: if_acmpne -> 118
    //   50: aload_3
    //   51: aload #4
    //   53: aload #5
    //   55: invokestatic a : (Letu;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Leus;
    //   58: astore_1
    //   59: aload_1
    //   60: getstatic eus.PAD_ENCODE : Leus;
    //   63: if_acmpeq -> 73
    //   66: aload_3
    //   67: invokevirtual c : ()I
    //   70: ifgt -> 43
    //   73: aload #5
    //   75: invokevirtual length : ()I
    //   78: ifle -> 89
    //   81: aload #4
    //   83: aload #5
    //   85: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   88: pop
    //   89: aload #4
    //   91: invokevirtual toString : ()Ljava/lang/String;
    //   94: astore_3
    //   95: aload_2
    //   96: invokeinterface isEmpty : ()Z
    //   101: ifeq -> 214
    //   104: aconst_null
    //   105: astore_1
    //   106: new etw
    //   109: dup
    //   110: aload_0
    //   111: aload_3
    //   112: aload_1
    //   113: aconst_null
    //   114: invokespecial <init> : ([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    //   117: areturn
    //   118: getstatic eur.a : [I
    //   121: aload_1
    //   122: invokevirtual ordinal : ()I
    //   125: iaload
    //   126: tableswitch default -> 160, 1 -> 164, 2 -> 177, 3 -> 186, 4 -> 195, 5 -> 204
    //   160: invokestatic a : ()Leqb;
    //   163: athrow
    //   164: aload_3
    //   165: aload #4
    //   167: invokestatic a : (Letu;Ljava/lang/StringBuilder;)V
    //   170: getstatic eus.ASCII_ENCODE : Leus;
    //   173: astore_1
    //   174: goto -> 59
    //   177: aload_3
    //   178: aload #4
    //   180: invokestatic b : (Letu;Ljava/lang/StringBuilder;)V
    //   183: goto -> 170
    //   186: aload_3
    //   187: aload #4
    //   189: invokestatic c : (Letu;Ljava/lang/StringBuilder;)V
    //   192: goto -> 170
    //   195: aload_3
    //   196: aload #4
    //   198: invokestatic d : (Letu;Ljava/lang/StringBuilder;)V
    //   201: goto -> 170
    //   204: aload_3
    //   205: aload #4
    //   207: aload_2
    //   208: invokestatic a : (Letu;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    //   211: goto -> 170
    //   214: aload_2
    //   215: astore_1
    //   216: goto -> 106
  }
  
  private static eus a(etu parametu, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2) {
    int i = 0;
    while (true) {
      int j = parametu.a(8);
      if (j == 0)
        throw eqb.a(); 
      if (j <= 128) {
        if (i) {
          i = j + 128;
          paramStringBuilder1.append((char)(i - 1));
          return eus.ASCII_ENCODE;
        } 
      } else {
        int k;
        if (j == 129)
          return eus.PAD_ENCODE; 
        if (j <= 229) {
          k = j - 130;
          if (k < 10)
            paramStringBuilder1.append('0'); 
          paramStringBuilder1.append(k);
          k = i;
        } else {
          if (j == 230)
            return eus.C40_ENCODE; 
          if (j == 231)
            return eus.BASE256_ENCODE; 
          if (j == 232) {
            paramStringBuilder1.append('\035');
            k = i;
          } else {
            k = i;
            if (j != 233) {
              k = i;
              if (j != 234)
                if (j == 235) {
                  k = 1;
                } else if (j == 236) {
                  paramStringBuilder1.append("[)>\03605\035");
                  paramStringBuilder2.insert(0, "\036\004");
                  k = i;
                } else if (j == 237) {
                  paramStringBuilder1.append("[)>\03606\035");
                  paramStringBuilder2.insert(0, "\036\004");
                  k = i;
                } else {
                  if (j == 238)
                    return eus.ANSIX12_ENCODE; 
                  if (j == 239)
                    return eus.TEXT_ENCODE; 
                  if (j == 240)
                    return eus.EDIFACT_ENCODE; 
                  k = i;
                  if (j != 241) {
                    k = i;
                    if (j >= 242)
                      if (j == 254) {
                        k = i;
                        if (parametu.c() != 0)
                          throw eqb.a(); 
                      } else {
                        continue;
                      }  
                  } 
                }  
            } 
          } 
        } 
        i = k;
        if (parametu.c() <= 0)
          return eus.ASCII_ENCODE; 
        continue;
      } 
      i = j;
      paramStringBuilder1.append((char)(i - 1));
      return eus.ASCII_ENCODE;
    } 
  }
  
  private static void a(int paramInt1, int paramInt2, int[] paramArrayOfint) {
    paramInt1 = (paramInt1 << 8) + paramInt2 - 1;
    paramInt2 = paramInt1 / 1600;
    paramArrayOfint[0] = paramInt2;
    paramInt1 -= paramInt2 * 1600;
    paramInt2 = paramInt1 / 40;
    paramArrayOfint[1] = paramInt2;
    paramArrayOfint[2] = paramInt1 - paramInt2 * 40;
  }
  
  private static void a(etu parametu, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = new int[3];
    int i = 0;
    boolean bool = false;
    while (true) {
      if (parametu.c() != 8) {
        int j = parametu.a(8);
        if (j != 254) {
          a(j, parametu.a(8), arrayOfInt);
          j = 0;
          while (j < 3) {
            int k = arrayOfInt[j];
            switch (i) {
              case false:
                if (k < 3) {
                  i = k + 1;
                } else if (k < a.length) {
                  char c = a[k];
                  if (bool) {
                    paramStringBuilder.append((char)(c + 128));
                    bool = false;
                  } else {
                    paramStringBuilder.append(c);
                  } 
                } else {
                  throw eqb.a();
                } 
                j++;
                break;
              case true:
                if (bool) {
                  paramStringBuilder.append((char)(k + 128));
                  bool = false;
                } else {
                  paramStringBuilder.append((char)k);
                } 
                i = 0;
                j++;
                break;
              case true:
                if (k < b.length) {
                  char c = b[k];
                  if (bool) {
                    paramStringBuilder.append((char)(c + 128));
                    bool = false;
                  } else {
                    paramStringBuilder.append(c);
                  } 
                } else if (k == 27) {
                  paramStringBuilder.append('\035');
                } else if (k == 30) {
                  bool = true;
                } else {
                  throw eqb.a();
                } 
                i = 0;
                j++;
                break;
              case true:
                if (bool) {
                  paramStringBuilder.append((char)(k + 224));
                  bool = false;
                } else {
                  paramStringBuilder.append((char)(k + 96));
                } 
                i = 0;
                j++;
                break;
            } 
          } 
          if (parametu.c() <= 0)
            break; 
          continue;
        } 
      } 
      return;
    } 
  }
  
  private static void a(etu parametu, StringBuilder paramStringBuilder, Collection<byte[]> paramCollection) {
    int i = parametu.b() + 1;
    int k = parametu.a(8);
    int j = i + 1;
    i = a(k, i);
    if (i == 0) {
      i = parametu.c() / 8;
    } else if (i >= 250) {
      i = (i - 249) * 250 + a(parametu.a(8), j);
      j++;
    } 
    if (i < 0)
      throw eqb.a(); 
    byte[] arrayOfByte = new byte[i];
    k = 0;
    while (k < i) {
      if (parametu.c() < 8)
        throw eqb.a(); 
      arrayOfByte[k] = (byte)a(parametu.a(8), j);
      k++;
      j++;
    } 
    paramCollection.add(arrayOfByte);
    try {
      paramStringBuilder.append(new String(arrayOfByte, "ISO8859_1"));
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new IllegalStateException("Platform does not support required encoding: " + unsupportedEncodingException);
    } 
  }
  
  private static void b(etu parametu, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = new int[3];
    int i = 0;
    boolean bool = false;
    while (true) {
      if (parametu.c() != 8) {
        int j = parametu.a(8);
        if (j != 254) {
          a(j, parametu.a(8), arrayOfInt);
          j = 0;
          while (j < 3) {
            int k = arrayOfInt[j];
            switch (i) {
              case false:
                if (k < 3) {
                  i = k + 1;
                } else if (k < c.length) {
                  char c = c[k];
                  if (bool) {
                    paramStringBuilder.append((char)(c + 128));
                    bool = false;
                  } else {
                    paramStringBuilder.append(c);
                  } 
                } else {
                  throw eqb.a();
                } 
                j++;
                break;
              case true:
                if (bool) {
                  paramStringBuilder.append((char)(k + 128));
                  bool = false;
                } else {
                  paramStringBuilder.append((char)k);
                } 
                i = 0;
                j++;
                break;
              case true:
                if (k < d.length) {
                  char c = d[k];
                  if (bool) {
                    paramStringBuilder.append((char)(c + 128));
                    bool = false;
                  } else {
                    paramStringBuilder.append(c);
                  } 
                } else if (k == 27) {
                  paramStringBuilder.append('\035');
                } else if (k == 30) {
                  bool = true;
                } else {
                  throw eqb.a();
                } 
                i = 0;
                j++;
                break;
              case true:
                if (k < e.length) {
                  char c = e[k];
                  if (bool) {
                    paramStringBuilder.append((char)(c + 128));
                    bool = false;
                  } else {
                    paramStringBuilder.append(c);
                  } 
                  i = 0;
                } else {
                  throw eqb.a();
                } 
                j++;
                break;
            } 
          } 
          if (parametu.c() <= 0)
            break; 
          continue;
        } 
      } 
      return;
    } 
  }
  
  private static void c(etu parametu, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = new int[3];
    while (true) {
      if (parametu.c() != 8) {
        int i = parametu.a(8);
        if (i != 254) {
          a(i, parametu.a(8), arrayOfInt);
          for (i = 0; i < 3; i++) {
            int j = arrayOfInt[i];
            if (j == 0) {
              paramStringBuilder.append('\r');
            } else if (j == 1) {
              paramStringBuilder.append('*');
            } else if (j == 2) {
              paramStringBuilder.append('>');
            } else if (j == 3) {
              paramStringBuilder.append(' ');
            } else if (j < 14) {
              paramStringBuilder.append((char)(j + 44));
            } else if (j < 40) {
              paramStringBuilder.append((char)(j + 51));
            } else {
              throw eqb.a();
            } 
          } 
          if (parametu.c() <= 0)
            break; 
          continue;
        } 
      } 
      return;
    } 
  }
  
  private static void d(etu parametu, StringBuilder paramStringBuilder) {
    do {
      if (parametu.c() <= 16)
        continue; 
      for (int i = 0; i < 4; i++) {
        int k = parametu.a(6);
        if (k == 31) {
          i = 8 - parametu.a();
          if (i != 8) {
            parametu.a(i);
            return;
          } 
          return;
        } 
        int j = k;
        if ((k & 0x20) == 0)
          j = k | 0x40; 
        paramStringBuilder.append((char)j);
      } 
    } while (parametu.c() > 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
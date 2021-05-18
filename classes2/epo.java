import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class epo implements Closeable {
  private static final int A = 5;
  
  private static final int B = 6;
  
  private static final int C = 7;
  
  private static final char[] b = ")]}'\n".toCharArray();
  
  private static final long c = -922337203685477580L;
  
  private static final int d = 0;
  
  private static final int e = 1;
  
  private static final int f = 2;
  
  private static final int g = 3;
  
  private static final int h = 4;
  
  private static final int i = 5;
  
  private static final int j = 6;
  
  private static final int k = 7;
  
  private static final int l = 8;
  
  private static final int m = 9;
  
  private static final int n = 10;
  
  private static final int o = 11;
  
  private static final int p = 12;
  
  private static final int q = 13;
  
  private static final int r = 14;
  
  private static final int s = 15;
  
  private static final int t = 16;
  
  private static final int u = 17;
  
  private static final int v = 0;
  
  private static final int w = 1;
  
  private static final int x = 2;
  
  private static final int y = 3;
  
  private static final int z = 4;
  
  private final Reader D;
  
  private boolean E = false;
  
  private final char[] F = new char[1024];
  
  private int G = 0;
  
  private int H = 0;
  
  private int I = 0;
  
  private int J = 0;
  
  private long K;
  
  private int L;
  
  private String M;
  
  private int[] N = new int[32];
  
  private int O = 0;
  
  private String[] P;
  
  private int[] Q;
  
  int a = 0;
  
  static {
    elr.a = new epp();
  }
  
  public epo(Reader paramReader) {
    int[] arrayOfInt = this.N;
    int i = this.O;
    this.O = i + 1;
    arrayOfInt[i] = 6;
    this.P = new String[32];
    this.Q = new int[32];
    if (paramReader == null)
      throw new NullPointerException("in == null"); 
    this.D = paramReader;
  }
  
  private void a(int paramInt) {
    if (this.O == this.N.length) {
      int[] arrayOfInt1 = new int[this.O * 2];
      int[] arrayOfInt2 = new int[this.O * 2];
      String[] arrayOfString = new String[this.O * 2];
      System.arraycopy(this.N, 0, arrayOfInt1, 0, this.O);
      System.arraycopy(this.Q, 0, arrayOfInt2, 0, this.O);
      System.arraycopy(this.P, 0, arrayOfString, 0, this.O);
      this.N = arrayOfInt1;
      this.Q = arrayOfInt2;
      this.P = arrayOfString;
    } 
    int[] arrayOfInt = this.N;
    int i = this.O;
    this.O = i + 1;
    arrayOfInt[i] = paramInt;
  }
  
  private boolean a(char paramChar) {
    switch (paramChar) {
      default:
        return true;
      case '#':
      case '/':
      case ';':
      case '=':
      case '\\':
        v();
        break;
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
      case ',':
      case ':':
      case '[':
      case ']':
      case '{':
      case '}':
        break;
    } 
    return false;
  }
  
  private boolean a(String paramString) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_0
    //   4: getfield G : I
    //   7: aload_1
    //   8: invokevirtual length : ()I
    //   11: iadd
    //   12: aload_0
    //   13: getfield H : I
    //   16: if_icmple -> 33
    //   19: iload #4
    //   21: istore_3
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual length : ()I
    //   27: invokespecial b : (I)Z
    //   30: ifeq -> 118
    //   33: aload_0
    //   34: getfield F : [C
    //   37: aload_0
    //   38: getfield G : I
    //   41: caload
    //   42: bipush #10
    //   44: if_icmpne -> 80
    //   47: aload_0
    //   48: aload_0
    //   49: getfield I : I
    //   52: iconst_1
    //   53: iadd
    //   54: putfield I : I
    //   57: aload_0
    //   58: aload_0
    //   59: getfield G : I
    //   62: iconst_1
    //   63: iadd
    //   64: putfield J : I
    //   67: aload_0
    //   68: aload_0
    //   69: getfield G : I
    //   72: iconst_1
    //   73: iadd
    //   74: putfield G : I
    //   77: goto -> 3
    //   80: iconst_0
    //   81: istore_2
    //   82: iload_2
    //   83: aload_1
    //   84: invokevirtual length : ()I
    //   87: if_icmpge -> 116
    //   90: aload_0
    //   91: getfield F : [C
    //   94: aload_0
    //   95: getfield G : I
    //   98: iload_2
    //   99: iadd
    //   100: caload
    //   101: aload_1
    //   102: iload_2
    //   103: invokevirtual charAt : (I)C
    //   106: if_icmpne -> 67
    //   109: iload_2
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: goto -> 82
    //   116: iconst_1
    //   117: istore_3
    //   118: iload_3
    //   119: ireturn
  }
  
  private int b(boolean paramBoolean) {
    char[] arrayOfChar = this.F;
    int i = this.G;
    for (int j = this.H;; j = arrayOfChar[m]) {
      int k = j;
      int m = i;
      if (i == j) {
        this.G = i;
        if (!b(1)) {
          if (paramBoolean)
            throw new EOFException("End of input" + x()); 
        } else {
          m = this.G;
          k = this.H;
          i = m + 1;
          j = arrayOfChar[m];
        } 
        return -1;
      } 
      i = m + 1;
    } 
  }
  
  private IOException b(String paramString) {
    throw new ept(paramString + x());
  }
  
  private String b(char paramChar) {
    char[] arrayOfChar = this.F;
    StringBuilder stringBuilder = new StringBuilder();
    while (true) {
      int k = this.G;
      int j = this.H;
      int i = k;
      while (i < j) {
        int m;
        int n;
        int i1 = i + 1;
        char c = arrayOfChar[i];
        if (c == paramChar) {
          this.G = i1;
          stringBuilder.append(arrayOfChar, k, i1 - k - 1);
          return stringBuilder.toString();
        } 
        if (c == '\\') {
          this.G = i1;
          stringBuilder.append(arrayOfChar, k, i1 - k - 1);
          stringBuilder.append(y());
          n = this.G;
          m = this.H;
          i = n;
        } else {
          n = k;
          m = j;
          i = i1;
          if (c == '\n') {
            this.I++;
            this.J = i1;
            n = k;
            m = j;
            i = i1;
          } 
        } 
        k = n;
        j = m;
      } 
      stringBuilder.append(arrayOfChar, k, i - k);
      this.G = i;
      if (!b(1))
        throw b("Unterminated string"); 
    } 
  }
  
  private boolean b(int paramInt) {
    boolean bool1;
    boolean bool2 = false;
    char[] arrayOfChar = this.F;
    this.J -= this.G;
    if (this.H != this.G) {
      this.H -= this.G;
      System.arraycopy(arrayOfChar, this.G, arrayOfChar, 0, this.H);
    } else {
      this.H = 0;
    } 
    this.G = 0;
    while (true) {
      int i = this.D.read(arrayOfChar, this.H, arrayOfChar.length - this.H);
      bool1 = bool2;
      if (i != -1) {
        this.H = i + this.H;
        i = paramInt;
        if (this.I == 0) {
          i = paramInt;
          if (this.J == 0) {
            i = paramInt;
            if (this.H > 0) {
              i = paramInt;
              if (arrayOfChar[0] == '﻿') {
                this.G++;
                this.J++;
                i = paramInt + 1;
              } 
            } 
          } 
        } 
        paramInt = i;
        if (this.H >= i) {
          bool1 = true;
          break;
        } 
        continue;
      } 
      break;
    } 
    return bool1;
  }
  
  private void c(char paramChar) {
    char[] arrayOfChar = this.F;
    while (true) {
      int i = this.G;
      for (int j = this.H; i < j; j = k) {
        int k;
        int m = i + 1;
        char c = arrayOfChar[i];
        if (c == paramChar) {
          this.G = m;
          return;
        } 
        if (c == '\\') {
          this.G = m;
          y();
          i = this.G;
          k = this.H;
        } else {
          k = j;
          i = m;
          if (c == '\n') {
            this.I++;
            this.J = m;
            k = j;
            i = m;
          } 
        } 
      } 
      this.G = i;
      if (!b(1))
        throw b("Unterminated string"); 
    } 
  }
  
  private int o() {
    String str1;
    String str2;
    char c = this.F[this.G];
    if (c == 't' || c == 'T') {
      str2 = "true";
      str1 = "TRUE";
      c = '\005';
    } else if (c == 'f' || c == 'F') {
      str2 = "false";
      str1 = "FALSE";
      c = '\006';
    } else if (c == 'n' || c == 'N') {
      str2 = "null";
      str1 = "NULL";
      c = '\007';
    } else {
      return 0;
    } 
    int j = str2.length();
    for (int i = 1; i < j; i++) {
      if (this.G + i >= this.H && !b(i + 1))
        return 0; 
      char c1 = this.F[this.G + i];
      if (c1 != str2.charAt(i) && c1 != str1.charAt(i))
        return 0; 
    } 
    if ((this.G + j < this.H || b(j + 1)) && a(this.F[this.G + j]))
      return 0; 
    this.G += j;
    this.a = c;
    return c;
  }
  
  private int s() {
    // Byte code:
    //   0: aload_0
    //   1: getfield F : [C
    //   4: astore #15
    //   6: aload_0
    //   7: getfield G : I
    //   10: istore #8
    //   12: aload_0
    //   13: getfield H : I
    //   16: istore #6
    //   18: lconst_0
    //   19: lstore #11
    //   21: iconst_0
    //   22: istore_2
    //   23: iconst_1
    //   24: istore_3
    //   25: iconst_0
    //   26: istore #4
    //   28: iconst_0
    //   29: istore #5
    //   31: iload #6
    //   33: istore #9
    //   35: iload #9
    //   37: istore #7
    //   39: iload #8
    //   41: istore #6
    //   43: iload #8
    //   45: iload #5
    //   47: iadd
    //   48: iload #9
    //   50: if_icmpne -> 139
    //   53: iload #5
    //   55: aload #15
    //   57: arraylength
    //   58: if_icmpne -> 63
    //   61: iconst_0
    //   62: ireturn
    //   63: aload_0
    //   64: iload #5
    //   66: iconst_1
    //   67: iadd
    //   68: invokespecial b : (I)Z
    //   71: ifne -> 127
    //   74: iload #4
    //   76: iconst_2
    //   77: if_icmpne -> 520
    //   80: iload_3
    //   81: ifeq -> 520
    //   84: lload #11
    //   86: ldc2_w -9223372036854775808
    //   89: lcmp
    //   90: ifne -> 97
    //   93: iload_2
    //   94: ifeq -> 520
    //   97: iload_2
    //   98: ifeq -> 512
    //   101: aload_0
    //   102: lload #11
    //   104: putfield K : J
    //   107: aload_0
    //   108: aload_0
    //   109: getfield G : I
    //   112: iload #5
    //   114: iadd
    //   115: putfield G : I
    //   118: aload_0
    //   119: bipush #15
    //   121: putfield a : I
    //   124: bipush #15
    //   126: ireturn
    //   127: aload_0
    //   128: getfield G : I
    //   131: istore #6
    //   133: aload_0
    //   134: getfield H : I
    //   137: istore #7
    //   139: aload #15
    //   141: iload #6
    //   143: iload #5
    //   145: iadd
    //   146: caload
    //   147: istore_1
    //   148: iload_1
    //   149: lookupswitch default -> 200, 43 -> 284, 45 -> 222, 46 -> 331, 69 -> 305, 101 -> 305
    //   200: iload_1
    //   201: bipush #48
    //   203: if_icmplt -> 212
    //   206: iload_1
    //   207: bipush #57
    //   209: if_icmple -> 351
    //   212: aload_0
    //   213: iload_1
    //   214: invokespecial a : (C)Z
    //   217: ifeq -> 74
    //   220: iconst_0
    //   221: ireturn
    //   222: iload #4
    //   224: ifne -> 263
    //   227: iconst_1
    //   228: istore_2
    //   229: iconst_1
    //   230: istore #4
    //   232: iload #5
    //   234: iconst_1
    //   235: iadd
    //   236: istore #10
    //   238: iload #4
    //   240: istore #5
    //   242: iload #7
    //   244: istore #9
    //   246: iload #6
    //   248: istore #8
    //   250: iload_2
    //   251: istore #4
    //   253: iload #5
    //   255: istore_2
    //   256: iload #10
    //   258: istore #5
    //   260: goto -> 35
    //   263: iload #4
    //   265: iconst_5
    //   266: if_icmpne -> 282
    //   269: bipush #6
    //   271: istore #8
    //   273: iload_2
    //   274: istore #4
    //   276: iload #8
    //   278: istore_2
    //   279: goto -> 232
    //   282: iconst_0
    //   283: ireturn
    //   284: iload #4
    //   286: iconst_5
    //   287: if_icmpne -> 303
    //   290: bipush #6
    //   292: istore #8
    //   294: iload_2
    //   295: istore #4
    //   297: iload #8
    //   299: istore_2
    //   300: goto -> 232
    //   303: iconst_0
    //   304: ireturn
    //   305: iload #4
    //   307: iconst_2
    //   308: if_icmpeq -> 317
    //   311: iload #4
    //   313: iconst_4
    //   314: if_icmpne -> 329
    //   317: iconst_5
    //   318: istore #8
    //   320: iload_2
    //   321: istore #4
    //   323: iload #8
    //   325: istore_2
    //   326: goto -> 232
    //   329: iconst_0
    //   330: ireturn
    //   331: iload #4
    //   333: iconst_2
    //   334: if_icmpne -> 349
    //   337: iconst_3
    //   338: istore #8
    //   340: iload_2
    //   341: istore #4
    //   343: iload #8
    //   345: istore_2
    //   346: goto -> 232
    //   349: iconst_0
    //   350: ireturn
    //   351: iload #4
    //   353: iconst_1
    //   354: if_icmpeq -> 362
    //   357: iload #4
    //   359: ifne -> 382
    //   362: iload_1
    //   363: bipush #48
    //   365: isub
    //   366: ineg
    //   367: i2l
    //   368: lstore #11
    //   370: iconst_2
    //   371: istore #8
    //   373: iload_2
    //   374: istore #4
    //   376: iload #8
    //   378: istore_2
    //   379: goto -> 232
    //   382: iload #4
    //   384: iconst_2
    //   385: if_icmpne -> 468
    //   388: lload #11
    //   390: lconst_0
    //   391: lcmp
    //   392: ifne -> 397
    //   395: iconst_0
    //   396: ireturn
    //   397: ldc2_w 10
    //   400: lload #11
    //   402: lmul
    //   403: iload_1
    //   404: bipush #48
    //   406: isub
    //   407: i2l
    //   408: lsub
    //   409: lstore #13
    //   411: lload #11
    //   413: ldc2_w -922337203685477580
    //   416: lcmp
    //   417: ifgt -> 437
    //   420: lload #11
    //   422: ldc2_w -922337203685477580
    //   425: lcmp
    //   426: ifne -> 462
    //   429: lload #13
    //   431: lload #11
    //   433: lcmp
    //   434: ifge -> 462
    //   437: iconst_1
    //   438: istore #9
    //   440: iload_2
    //   441: istore #8
    //   443: lload #13
    //   445: lstore #11
    //   447: iload #9
    //   449: iload_3
    //   450: iand
    //   451: istore_3
    //   452: iload #4
    //   454: istore_2
    //   455: iload #8
    //   457: istore #4
    //   459: goto -> 232
    //   462: iconst_0
    //   463: istore #9
    //   465: goto -> 440
    //   468: iload #4
    //   470: iconst_3
    //   471: if_icmpne -> 486
    //   474: iconst_4
    //   475: istore #8
    //   477: iload_2
    //   478: istore #4
    //   480: iload #8
    //   482: istore_2
    //   483: goto -> 232
    //   486: iload #4
    //   488: iconst_5
    //   489: if_icmpeq -> 499
    //   492: iload #4
    //   494: bipush #6
    //   496: if_icmpne -> 556
    //   499: bipush #7
    //   501: istore #8
    //   503: iload_2
    //   504: istore #4
    //   506: iload #8
    //   508: istore_2
    //   509: goto -> 232
    //   512: lload #11
    //   514: lneg
    //   515: lstore #11
    //   517: goto -> 101
    //   520: iload #4
    //   522: iconst_2
    //   523: if_icmpeq -> 539
    //   526: iload #4
    //   528: iconst_4
    //   529: if_icmpeq -> 539
    //   532: iload #4
    //   534: bipush #7
    //   536: if_icmpne -> 554
    //   539: aload_0
    //   540: iload #5
    //   542: putfield L : I
    //   545: aload_0
    //   546: bipush #16
    //   548: putfield a : I
    //   551: bipush #16
    //   553: ireturn
    //   554: iconst_0
    //   555: ireturn
    //   556: iload_2
    //   557: istore #8
    //   559: iload #4
    //   561: istore_2
    //   562: iload #8
    //   564: istore #4
    //   566: goto -> 232
  }
  
  private String t() {
    String str = null;
    int i = 0;
    while (true) {
      byte b;
      StringBuilder stringBuilder;
      while (true) {
        String str1;
        if (this.G + i < this.H) {
          str1 = str;
          b = i;
          switch (this.F[this.G + i]) {
            default:
              i++;
              continue;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
              v();
              b = i;
              str1 = str;
              break;
            case '\t':
              continue;
            case '\n':
              continue;
            case '\f':
              continue;
            case '\r':
              continue;
            case ' ':
              continue;
            case ',':
              continue;
            case ':':
              continue;
            case '[':
              continue;
            case ']':
              continue;
            case '{':
              continue;
            case '}':
              continue;
          } 
        } else {
          break;
        } 
        if (str1 == null) {
          str = new String(this.F, this.G, b);
          this.G = b + this.G;
          return str;
        } 
        str1.append(this.F, this.G, b);
        str = str1.toString();
        this.G = b + this.G;
        return str;
      } 
      if (i < this.F.length) {
        String str1 = str;
        b = i;
        if (b(i + 1))
          continue; 
      } else {
        String str1 = str;
        if (str == null)
          stringBuilder = new StringBuilder(); 
        stringBuilder.append(this.F, this.G, i);
        this.G = i + this.G;
        if (!b(1)) {
          b = 0;
        } else {
          i = 0;
          StringBuilder stringBuilder1 = stringBuilder;
          continue;
        } 
      } 
      if (stringBuilder == null) {
        str = new String(this.F, this.G, b);
        this.G = b + this.G;
        return str;
      } 
      stringBuilder.append(this.F, this.G, b);
      str = stringBuilder.toString();
      this.G = b + this.G;
      return str;
    } 
  }
  
  private void u() {
    do {
      int i = 0;
      while (this.G + i < this.H) {
        switch (this.F[this.G + i]) {
          default:
            i++;
            continue;
          case '#':
          case '/':
          case ';':
          case '=':
          case '\\':
            v();
            break;
          case '\t':
            continue;
          case '\n':
          case '\f':
          case '\r':
          case ' ':
          case ',':
          case ':':
          case '[':
          case ']':
          case '{':
          case '}':
            break;
        } 
        this.G = i + this.G;
        return;
      } 
      this.G = i + this.G;
    } while (b(1));
  }
  
  private void v() {
    if (!this.E)
      throw b("Use JsonReader.setLenient(true) to accept malformed JSON"); 
  }
  
  private void w() {
    int i;
    do {
      if (this.G < this.H || b(1)) {
        char[] arrayOfChar = this.F;
        i = this.G;
        this.G = i + 1;
        i = arrayOfChar[i];
        if (i == 10) {
          this.I++;
          this.J = this.G;
          return;
        } 
      } else {
        return;
      } 
    } while (i != 13);
  }
  
  private String x() {
    int i = this.I;
    int j = this.G;
    int k = this.J;
    return " at line " + (i + 1) + " column " + (j - k + 1) + " path " + p();
  }
  
  private char y() {
    int j;
    if (this.G == this.H && !b(1))
      throw b("Unterminated escape sequence"); 
    char[] arrayOfChar = this.F;
    int i = this.G;
    this.G = i + 1;
    char c1 = arrayOfChar[i];
    char c = c1;
    switch (c1) {
      default:
        throw b("Invalid escape sequence");
      case 'u':
        if (this.G + 4 > this.H && !b(4))
          throw b("Unterminated escape sequence"); 
        j = this.G;
        c = Character.MIN_VALUE;
        for (i = j; i < j + 4; i++) {
          char c2 = this.F[i];
          char c3 = (char)(c << 4);
          if (c2 >= '0' && c2 <= '9') {
            c = (char)(c3 + c2 - 48);
          } else if (c2 >= 'a' && c2 <= 'f') {
            c = (char)(c3 + c2 - 97 + 10);
          } else if (c2 >= 'A' && c2 <= 'F') {
            c = (char)(c3 + c2 - 65 + 10);
          } else {
            throw new NumberFormatException("\\u" + new String(this.F, this.G, 4));
          } 
        } 
        this.G += 4;
      case '"':
      case '\'':
      case '/':
      case '\\':
        return c;
      case 't':
        return '\t';
      case 'b':
        return '\b';
      case 'n':
        return '\n';
      case 'r':
        return '\r';
      case 'f':
        return '\f';
      case '\n':
        break;
    } 
    this.I++;
    this.J = this.G;
    return c1;
  }
  
  private void z() {
    b(true);
    this.G--;
    if (this.G + b.length <= this.H || b(b.length)) {
      int i = 0;
      while (i < b.length) {
        if (this.F[this.G + i] == b[i]) {
          i++;
          continue;
        } 
        return;
      } 
      this.G += b.length;
      return;
    } 
  }
  
  public void a() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 3) {
      a(1);
      this.Q[this.O - 1] = 0;
      this.a = 0;
      return;
    } 
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + x());
  }
  
  public final void a(boolean paramBoolean) {
    this.E = paramBoolean;
  }
  
  public void b() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 4) {
      this.O--;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      this.a = 0;
      return;
    } 
    throw new IllegalStateException("Expected END_ARRAY but was " + f() + x());
  }
  
  public void c() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 1) {
      a(3);
      this.a = 0;
      return;
    } 
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + x());
  }
  
  public void close() {
    this.a = 0;
    this.N[0] = 8;
    this.O = 1;
    this.D.close();
  }
  
  public void d() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 2) {
      this.O--;
      this.P[this.O] = null;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      this.a = 0;
      return;
    } 
    throw new IllegalStateException("Expected END_OBJECT but was " + f() + x());
  }
  
  public boolean e() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    return (i != 2 && i != 4);
  }
  
  public epr f() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    switch (i) {
      default:
        throw new AssertionError();
      case 1:
        return epr.BEGIN_OBJECT;
      case 2:
        return epr.END_OBJECT;
      case 3:
        return epr.BEGIN_ARRAY;
      case 4:
        return epr.END_ARRAY;
      case 12:
      case 13:
      case 14:
        return epr.NAME;
      case 5:
      case 6:
        return epr.BOOLEAN;
      case 7:
        return epr.NULL;
      case 8:
      case 9:
      case 10:
      case 11:
        return epr.STRING;
      case 15:
      case 16:
        return epr.NUMBER;
      case 17:
        break;
    } 
    return epr.END_DOCUMENT;
  }
  
  public String g() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 14) {
      String str = t();
      this.a = 0;
      this.P[this.O - 1] = str;
      return str;
    } 
    if (i == 12) {
      String str = b('\'');
      this.a = 0;
      this.P[this.O - 1] = str;
      return str;
    } 
    if (i == 13) {
      String str = b('"');
      this.a = 0;
      this.P[this.O - 1] = str;
      return str;
    } 
    throw new IllegalStateException("Expected a name but was " + f() + x());
  }
  
  public String h() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 10) {
      String str = t();
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    if (i == 8) {
      String str = b('\'');
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    if (i == 9) {
      String str = b('"');
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    if (i == 11) {
      String str = this.M;
      this.M = null;
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    if (i == 15) {
      String str = Long.toString(this.K);
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    if (i == 16) {
      String str = new String(this.F, this.G, this.L);
      this.G += this.L;
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return str;
    } 
    throw new IllegalStateException("Expected a string but was " + f() + x());
  }
  
  public boolean i() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 5) {
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return true;
    } 
    if (i == 6) {
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return false;
    } 
    throw new IllegalStateException("Expected a boolean but was " + f() + x());
  }
  
  public void j() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 7) {
      this.a = 0;
      int[] arrayOfInt = this.Q;
      i = this.O - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
      return;
    } 
    throw new IllegalStateException("Expected null but was " + f() + x());
  }
  
  public double k() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 15) {
      this.a = 0;
      int[] arrayOfInt1 = this.Q;
      i = this.O - 1;
      arrayOfInt1[i] = arrayOfInt1[i] + 1;
      return this.K;
    } 
    if (i == 16) {
      this.M = new String(this.F, this.G, this.L);
      this.G += this.L;
    } else if (i == 8 || i == 9) {
      byte b;
      if (i == 8) {
        b = 39;
      } else {
        b = 34;
      } 
      this.M = b(b);
    } else if (i == 10) {
      this.M = t();
    } else if (i != 11) {
      throw new IllegalStateException("Expected a double but was " + f() + x());
    } 
    this.a = 11;
    double d = Double.parseDouble(this.M);
    if (!this.E && (Double.isNaN(d) || Double.isInfinite(d)))
      throw new ept("JSON forbids NaN and infinities: " + d + x()); 
    this.M = null;
    this.a = 0;
    int[] arrayOfInt = this.Q;
    i = this.O - 1;
    arrayOfInt[i] = arrayOfInt[i] + 1;
    return d;
  }
  
  public long l() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 15) {
      this.a = 0;
      int[] arrayOfInt1 = this.Q;
      i = this.O - 1;
      arrayOfInt1[i] = arrayOfInt1[i] + 1;
      return this.K;
    } 
    if (i == 16) {
      this.M = new String(this.F, this.G, this.L);
      this.G += this.L;
    } else if (i == 8 || i == 9 || i == 10) {
      if (i == 10) {
        this.M = t();
      } else {
        byte b;
        if (i == 8) {
          b = 39;
        } else {
          b = 34;
        } 
        this.M = b(b);
      } 
      try {
        long l1 = Long.parseLong(this.M);
        this.a = 0;
        int[] arrayOfInt1 = this.Q;
        i = this.O - 1;
        arrayOfInt1[i] = arrayOfInt1[i] + 1;
        return l1;
      } catch (NumberFormatException numberFormatException) {}
    } else {
      throw new IllegalStateException("Expected a long but was " + f() + x());
    } 
    this.a = 11;
    double d = Double.parseDouble(this.M);
    long l = (long)d;
    if (l != d)
      throw new NumberFormatException("Expected a long but was " + this.M + x()); 
    this.M = null;
    this.a = 0;
    int[] arrayOfInt = this.Q;
    i = this.O - 1;
    arrayOfInt[i] = arrayOfInt[i] + 1;
    return l;
  }
  
  public int m() {
    int j = this.a;
    int i = j;
    if (j == 0)
      i = r(); 
    if (i == 15) {
      i = (int)this.K;
      if (this.K != i)
        throw new NumberFormatException("Expected an int but was " + this.K + x()); 
      this.a = 0;
      int[] arrayOfInt1 = this.Q;
      j = this.O - 1;
      arrayOfInt1[j] = arrayOfInt1[j] + 1;
      return i;
    } 
    if (i == 16) {
      this.M = new String(this.F, this.G, this.L);
      this.G += this.L;
    } else if (i == 8 || i == 9 || i == 10) {
      if (i == 10) {
        this.M = t();
      } else {
        byte b;
        if (i == 8) {
          b = 39;
        } else {
          b = 34;
        } 
        this.M = b(b);
      } 
      try {
        i = Integer.parseInt(this.M);
        this.a = 0;
        int[] arrayOfInt1 = this.Q;
        j = this.O - 1;
        arrayOfInt1[j] = arrayOfInt1[j] + 1;
        return i;
      } catch (NumberFormatException numberFormatException) {}
    } else {
      throw new IllegalStateException("Expected an int but was " + f() + x());
    } 
    this.a = 11;
    double d = Double.parseDouble(this.M);
    i = (int)d;
    if (i != d)
      throw new NumberFormatException("Expected an int but was " + this.M + x()); 
    this.M = null;
    this.a = 0;
    int[] arrayOfInt = this.Q;
    j = this.O - 1;
    arrayOfInt[j] = arrayOfInt[j] + 1;
    return i;
  }
  
  public void n() {
    int i = 0;
    while (true) {
      int j = this.a;
      int k = j;
      if (j == 0)
        k = r(); 
      if (k == 3) {
        a(1);
        j = i + 1;
      } else if (k == 1) {
        a(3);
        j = i + 1;
      } else if (k == 4) {
        this.O--;
        j = i - 1;
      } else if (k == 2) {
        this.O--;
        j = i - 1;
      } else if (k == 14 || k == 10) {
        u();
        j = i;
      } else if (k == 8 || k == 12) {
        c('\'');
        j = i;
      } else if (k == 9 || k == 13) {
        c('"');
        j = i;
      } else {
        j = i;
        if (k == 16) {
          this.G += this.L;
          j = i;
        } 
      } 
      this.a = 0;
      i = j;
      if (j == 0) {
        int[] arrayOfInt = this.Q;
        j = this.O - 1;
        arrayOfInt[j] = arrayOfInt[j] + 1;
        this.P[this.O - 1] = "null";
        return;
      } 
    } 
  }
  
  public String p() {
    StringBuilder stringBuilder = (new StringBuilder()).append('$');
    int i = 0;
    int j = this.O;
    while (i < j) {
      switch (this.N[i]) {
        case 1:
        case 2:
          stringBuilder.append('[').append(this.Q[i]).append(']');
          i++;
          break;
        case 3:
        case 4:
        case 5:
          stringBuilder.append('.');
          if (this.P[i] != null)
            stringBuilder.append(this.P[i]); 
          i++;
          break;
      } 
    } 
    return stringBuilder.toString();
  }
  
  public final boolean q() {
    return this.E;
  }
  
  int r() {
    int i = this.N[this.O - 1];
    if (i == 1)
      this.N[this.O - 1] = 2; 
    if (i == 2) {
      switch (b(true)) {
        case 44:
          switch (b(true)) {
            default:
              this.G--;
              i = o();
              if (i != 0)
                return i; 
              break;
            case 93:
              if (i == 1) {
                this.a = 4;
                return 4;
              } 
            case 44:
            case 59:
              if (i == 1 || i == 2) {
                v();
                this.G--;
                this.a = 7;
                return 7;
              } 
              throw b("Unexpected value");
            case 39:
              v();
              this.a = 8;
              return 8;
            case 34:
              this.a = 9;
              return 9;
            case 91:
              this.a = 3;
              return 3;
            case 123:
              this.a = 1;
              return 1;
          } 
          break;
        default:
          throw b("Unterminated array");
        case 93:
          this.a = 4;
          return 4;
        case 59:
          v();
      } 
    } else {
      if (i == 3 || i == 5) {
        this.N[this.O - 1] = 4;
        if (i == 5)
          switch (b(true)) {
            default:
              throw b("Unterminated object");
            case 125:
              this.a = 2;
              return 2;
            case 59:
              v();
              break;
            case 44:
              break;
          }  
        int k = b(true);
        switch (k) {
          default:
            v();
            this.G--;
            if (a((char)k)) {
              this.a = 14;
              return 14;
            } 
            throw b("Expected name");
          case 34:
            this.a = 13;
            return 13;
          case 39:
            v();
            this.a = 12;
            return 12;
          case 125:
            break;
        } 
        if (i != 5) {
          this.a = 2;
          return 2;
        } 
        throw b("Expected name");
      } 
      if (i == 4) {
        this.N[this.O - 1] = 5;
        switch (b(true)) {
          case 58:
          
          default:
            throw b("Expected ':'");
          case 61:
            break;
        } 
        v();
        if ((this.G < this.H || b(1)) && this.F[this.G] == '>')
          this.G++; 
      } 
      if (i == 6) {
        if (this.E)
          z(); 
        this.N[this.O - 1] = 7;
      } 
      if (i == 7) {
        if (b(false) == -1) {
          this.a = 17;
          return 17;
        } 
        v();
        this.G--;
      } 
      if (i == 8)
        throw new IllegalStateException("JsonReader is closed"); 
    } 
    int j = s();
    i = j;
    if (j == 0) {
      if (!a(this.F[this.G]))
        throw b("Expected value"); 
      v();
      this.a = 10;
      return 10;
    } 
    return i;
  }
  
  public String toString() {
    return getClass().getSimpleName() + x();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
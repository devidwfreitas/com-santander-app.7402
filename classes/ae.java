import java.util.Iterator;
import java.util.Vector;

public class ae implements ac, x, y, z {
  private static final String bo = "70";
  
  private int A(aj paramaj, o paramo, String paramString) {
    bp bp;
    al al;
    try {
      Vector<String> vector = new Vector();
      if (g(paramo, paramString, vector) != 0)
        return 1423; 
      if (vector.size() < 2)
        return 1411; 
      int j = p(paramaj, paramo, vector.elementAt(0));
      int i = j;
      if (j == 0) {
        bp = new bp(paramo.a(), paramo.b());
        al = new al();
        if (al.a(paramaj.a(), bp, al) != 0)
          return 1310; 
        if (al.w() == 1 && al.L() == 1) {
          i = 1;
        } else {
          i = 0;
        } 
      } else {
        return i;
      } 
    } catch (bfy null) {
      throw exception;
    } catch (Exception exception) {
      return 1419;
    } 
    if (SYNTHETIC_LOCAL_VARIABLE_4 == null)
      return 1417; 
    al.c(0);
    al.i(2);
    StringBuffer stringBuffer = new StringBuffer();
    if (al.a(al, bp, stringBuffer) != 0)
      return 1310; 
    exception.a(stringBuffer.toString());
    return 0;
  }
  
  private int B(aj paramaj, o paramo, String paramString) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramString == null)
              return 1440; 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.l(paramString);
            StringBuffer stringBuffer = new StringBuffer();
            if (al.a(al, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int C(aj paramaj, o paramo, String paramString) {
    int i = 1315;
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (paramo != null) {
          j = i;
          if (paramo.c()) {
            if (paramString == null)
              return 1434; 
            bp bp = new bp(paramo.a(), paramo.b());
            ak ak = new ak();
            if (ak.a(paramaj.a(), bp, ak) != 0)
              return 1310; 
            if (paramString.equals(ak.m())) {
              ak.c(0);
              StringBuffer stringBuffer = new StringBuffer();
              i = ak.a(ak, bp, stringBuffer);
              j = i;
              if (i == 0) {
                paramaj.a(stringBuffer.toString());
                return 0;
              } 
            } else {
              ak.c(ak.o() + 1);
              StringBuffer stringBuffer = new StringBuffer();
              i = ak.a(ak, bp, stringBuffer);
              j = i;
              if (i == 0) {
                paramaj.a(stringBuffer.toString());
                return 1436;
              } 
            } 
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int D(aj paramaj, o paramo, String paramString) {
    int i = 1315;
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (paramo != null) {
          j = i;
          if (paramo.c()) {
            if (paramString == null)
              return 1434; 
            if (paramString.length() == 0)
              return 1434; 
            bp bp = new bp(paramo.a(), paramo.b());
            ak ak = new ak();
            if (ak.a(paramaj.a(), bp, ak) != 0)
              return 1310; 
            char[] arrayOfChar = paramString.toCharArray();
            String str = new String(j);
            for (j = 0;; j++) {
              if (j >= arrayOfChar.length) {
                ak.f(paramString);
                ak.c(0);
                ak.h(1);
                StringBuffer stringBuffer = new StringBuffer();
                i = ak.a(ak, bp, stringBuffer);
                j = i;
                if (i == 0) {
                  paramaj.a(stringBuffer.toString());
                  return 0;
                } 
                break;
              } 
              boolean bool = str.contains(String.valueOf(arrayOfChar[j]));
              if (!bool)
                return 1442; 
            } 
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int a(aj paramaj, al paramal, bl parambl) {
    StringBuffer stringBuffer = new StringBuffer();
    if (al.a(paramal, parambl, stringBuffer) != 0)
      return 1310; 
    paramaj.a(stringBuffer.toString());
    return 0;
  }
  
  private int a(aj paramaj, al paramal, bl parambl1, ap paramap, bl parambl2) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #9
    //   3: aconst_null
    //   4: astore #8
    //   6: aload #4
    //   8: invokevirtual i : ()Ljava/lang/String;
    //   11: invokevirtual length : ()I
    //   14: ifle -> 461
    //   17: aload #5
    //   19: aload #4
    //   21: invokevirtual i : ()Ljava/lang/String;
    //   24: invokeinterface d : (Ljava/lang/String;)Ljava/lang/String;
    //   29: astore #10
    //   31: aload #10
    //   33: ifnull -> 461
    //   36: aload #10
    //   38: ldc '#'
    //   40: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    //   43: astore #11
    //   45: aload #11
    //   47: invokevirtual size : ()I
    //   50: istore #7
    //   52: iload #7
    //   54: iconst_2
    //   55: irem
    //   56: iconst_1
    //   57: if_icmpne -> 475
    //   60: sipush #1321
    //   63: ireturn
    //   64: aload #4
    //   66: invokevirtual g : ()I
    //   69: ifne -> 221
    //   72: new al
    //   75: dup
    //   76: invokespecial <init> : ()V
    //   79: astore #5
    //   81: aload #5
    //   83: aload_2
    //   84: invokevirtual u : ()Ljava/lang/String;
    //   87: invokevirtual g : (Ljava/lang/String;)V
    //   90: aload #5
    //   92: aload_2
    //   93: invokevirtual j : ()Ljava/lang/String;
    //   96: invokevirtual c : (Ljava/lang/String;)V
    //   99: aload #5
    //   101: aload #4
    //   103: invokevirtual f : ()Ljava/lang/String;
    //   106: invokevirtual e : (Ljava/lang/String;)V
    //   109: aload #5
    //   111: iconst_0
    //   112: invokevirtual x : (I)V
    //   115: aload #5
    //   117: aload #4
    //   119: invokevirtual h : ()I
    //   122: invokevirtual j : (I)V
    //   125: aload_0
    //   126: aload_1
    //   127: aload_2
    //   128: aload_3
    //   129: invokespecial a : (Laj;Lal;Lbl;)I
    //   132: ireturn
    //   133: aload #11
    //   135: iload #6
    //   137: invokevirtual elementAt : (I)Ljava/lang/Object;
    //   140: checkcast java/lang/String
    //   143: astore #10
    //   145: aload #10
    //   147: ldc 'CMD_AT'
    //   149: invokevirtual equals : (Ljava/lang/Object;)Z
    //   152: ifeq -> 183
    //   155: aload #11
    //   157: iload #6
    //   159: iconst_1
    //   160: iadd
    //   161: invokevirtual elementAt : (I)Ljava/lang/Object;
    //   164: checkcast java/lang/String
    //   167: astore #10
    //   169: aload #10
    //   171: ldc ''
    //   173: invokevirtual equals : (Ljava/lang/Object;)Z
    //   176: ifeq -> 450
    //   179: sipush #1321
    //   182: ireturn
    //   183: aload #10
    //   185: ldc 'CMD_UP'
    //   187: invokevirtual equals : (Ljava/lang/Object;)Z
    //   190: ifeq -> 435
    //   193: aload #11
    //   195: iload #6
    //   197: iconst_1
    //   198: iadd
    //   199: invokevirtual elementAt : (I)Ljava/lang/Object;
    //   202: checkcast java/lang/String
    //   205: astore #10
    //   207: aload #10
    //   209: ldc ''
    //   211: invokevirtual equals : (Ljava/lang/Object;)Z
    //   214: ifeq -> 491
    //   217: sipush #1321
    //   220: ireturn
    //   221: aload #4
    //   223: invokevirtual g : ()I
    //   226: iconst_1
    //   227: if_icmpne -> 431
    //   230: aload_2
    //   231: invokevirtual L : ()I
    //   234: ifne -> 349
    //   237: aload_2
    //   238: aload #4
    //   240: invokevirtual b : ()Ljava/lang/String;
    //   243: invokevirtual g : (Ljava/lang/String;)V
    //   246: aload_2
    //   247: aload #4
    //   249: invokevirtual d : ()Ljava/lang/String;
    //   252: invokevirtual c : (Ljava/lang/String;)V
    //   255: aload_2
    //   256: aload #4
    //   258: invokevirtual f : ()Ljava/lang/String;
    //   261: invokevirtual e : (Ljava/lang/String;)V
    //   264: aload_2
    //   265: iconst_1
    //   266: invokevirtual x : (I)V
    //   269: aload_2
    //   270: aload #4
    //   272: invokevirtual h : ()I
    //   275: invokevirtual j : (I)V
    //   278: aload_2
    //   279: aload #4
    //   281: invokevirtual c : ()Ljava/lang/String;
    //   284: invokevirtual b : (Ljava/lang/String;)V
    //   287: aload #8
    //   289: ifnull -> 520
    //   292: aload #5
    //   294: aload #8
    //   296: invokeinterface d : (Ljava/lang/String;)Ljava/lang/String;
    //   301: astore #8
    //   303: aload #8
    //   305: iconst_0
    //   306: bipush #40
    //   308: invokevirtual substring : (II)Ljava/lang/String;
    //   311: astore #4
    //   313: aload #8
    //   315: bipush #41
    //   317: invokevirtual substring : (I)Ljava/lang/String;
    //   320: astore #8
    //   322: aload_2
    //   323: aload #4
    //   325: invokevirtual m : (Ljava/lang/String;)V
    //   328: aload_2
    //   329: aload #5
    //   331: aload #8
    //   333: invokeinterface c : (Ljava/lang/String;)Ljava/lang/String;
    //   338: invokevirtual n : (Ljava/lang/String;)V
    //   341: aload_0
    //   342: aload_1
    //   343: aload_2
    //   344: aload_3
    //   345: invokespecial a : (Laj;Lal;Lbl;)I
    //   348: ireturn
    //   349: aload_2
    //   350: invokevirtual L : ()I
    //   353: iconst_1
    //   354: if_icmpne -> 427
    //   357: aload_2
    //   358: invokevirtual h : ()Ljava/lang/String;
    //   361: aload #4
    //   363: invokevirtual c : ()Ljava/lang/String;
    //   366: invokevirtual equals : (Ljava/lang/Object;)Z
    //   369: ifne -> 406
    //   372: aload_2
    //   373: aload #4
    //   375: invokevirtual c : ()Ljava/lang/String;
    //   378: invokevirtual b : (Ljava/lang/String;)V
    //   381: aload #9
    //   383: ifnull -> 423
    //   386: aload_2
    //   387: aload #5
    //   389: aload #5
    //   391: aload #9
    //   393: invokeinterface d : (Ljava/lang/String;)Ljava/lang/String;
    //   398: invokeinterface c : (Ljava/lang/String;)Ljava/lang/String;
    //   403: invokevirtual n : (Ljava/lang/String;)V
    //   406: aload_2
    //   407: aload #4
    //   409: invokevirtual h : ()I
    //   412: invokevirtual j : (I)V
    //   415: goto -> 341
    //   418: astore_1
    //   419: sipush #1300
    //   422: ireturn
    //   423: sipush #1321
    //   426: ireturn
    //   427: sipush #1321
    //   430: ireturn
    //   431: sipush #1321
    //   434: ireturn
    //   435: aload #8
    //   437: astore #10
    //   439: aload #9
    //   441: astore #8
    //   443: aload #10
    //   445: astore #9
    //   447: goto -> 499
    //   450: aload #9
    //   452: astore #8
    //   454: aload #10
    //   456: astore #9
    //   458: goto -> 499
    //   461: aconst_null
    //   462: astore #10
    //   464: aload #8
    //   466: astore #9
    //   468: aload #10
    //   470: astore #8
    //   472: goto -> 64
    //   475: iconst_0
    //   476: istore #6
    //   478: aconst_null
    //   479: astore #8
    //   481: iload #6
    //   483: iload #7
    //   485: if_icmplt -> 133
    //   488: goto -> 64
    //   491: aload #8
    //   493: astore #9
    //   495: aload #10
    //   497: astore #8
    //   499: iload #6
    //   501: iconst_2
    //   502: iadd
    //   503: istore #6
    //   505: aload #9
    //   507: astore #10
    //   509: aload #8
    //   511: astore #9
    //   513: aload #10
    //   515: astore #8
    //   517: goto -> 481
    //   520: sipush #1321
    //   523: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	31	418	java/lang/Exception
    //   36	52	418	java/lang/Exception
    //   64	133	418	java/lang/Exception
    //   133	179	418	java/lang/Exception
    //   183	217	418	java/lang/Exception
    //   221	287	418	java/lang/Exception
    //   292	341	418	java/lang/Exception
    //   341	349	418	java/lang/Exception
    //   349	381	418	java/lang/Exception
    //   386	406	418	java/lang/Exception
    //   406	415	418	java/lang/Exception
  }
  
  private int a(aj paramaj, bo parambo) {
    char c = 'ԣ';
    if (paramaj == null)
      return 1314; 
    try {
      if (paramaj.a() != null)
        return 1310; 
      char c1 = c;
      if (parambo != null) {
        c1 = c;
        if (parambo.c()) {
          bp bp = new bp(parambo.a(), parambo.b());
          long l = System.currentTimeMillis();
          String str = bp.c(new String(ca.a((String.valueOf(new String(az.a(parambo.b()))) + String.valueOf(l)).getBytes()), 0, 8));
          al al = new al();
          al.c(str.substring(0, 8));
          byte[] arrayOfByte = (byte[])null;
          StringBuffer stringBuffer = new StringBuffer();
          if (al.a(al, bp, stringBuffer) != 0)
            return 1310; 
          paramaj.a(stringBuffer.toString());
          return 0;
        } 
      } 
      return c1;
    } catch (bv bv) {
      return 1316;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int a(aj paramaj, bo parambo, ai paramai) {
    char c = 'ԣ';
    if (paramai == null)
      return 1314; 
    if (paramaj != null) {
      int i;
      try {
        if (paramaj.a() == null)
          return 1310; 
        i = c;
        if (parambo != null) {
          i = c;
          if (parambo.c()) {
            bp bp = new bp(parambo.a(), parambo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.d(br.a());
            System.out.println("DATABLINK - GERAR PASSO1");
            System.out.println("DATABLINK - Numero_de_serie " + al.u());
            System.out.println("DATABLINK - Id_mobile " + al.j());
            System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
            System.out.println("DATABLINK - Id_server " + al.l());
            System.out.println("DATABLINK - Token_versao_configuracao " + al.h());
            System.out.println("DATABLINK - Status " + al.L());
            System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
            System.out.println("DATABLINK -\tStaStatusBO " + al.w());
            System.out.println("DATABLINK -\t-------------------------------------");
            bm bm = new bm(parambo.a());
            StringBuffer stringBuffer1 = new StringBuffer();
            i = ao.a(al, bm, stringBuffer1);
            if (i != 0) {
              paramai.a(null);
              return i;
            } 
            StringBuffer stringBuffer2 = new StringBuffer();
            if (al.a(al, bp, stringBuffer2) != 0)
              return 1310; 
            paramaj.a(stringBuffer2.toString());
            paramai.a(stringBuffer1.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        bv.printStackTrace();
        return 1316;
      } catch (Exception exception) {
        exception.printStackTrace();
        return 1300;
      } 
      return i;
    } 
    return 1310;
  }
  
  private int a(aj paramaj, bo parambo, am paramam) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (parambo != null) {
          c1 = c;
          if (parambo.c()) {
            if (paramam == null)
              return 1314; 
            byte[] arrayOfByte = parambo.a();
            bp bp = new bp(parambo.a(), parambo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            paramam.a(al, arrayOfByte);
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1310;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int a(aj paramaj, bo parambo, an paraman) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (parambo != null) {
          c1 = c;
          if (parambo.c()) {
            if (paraman == null)
              return 1314; 
            byte[] arrayOfByte = parambo.a();
            bp bp = new bp(parambo.a(), parambo.b());
            ak ak = new ak();
            if (ak.a(paramaj.a(), bp, ak) != 0)
              return 1310; 
            paraman.a(ak, arrayOfByte);
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1310;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int a(aj paramaj, bo parambo, String paramString) {
    if (paramaj != null) {
      try {
        if (paramaj.a() == null)
          return 1310; 
      } catch (bv null) {
        return 1316;
      } catch (Exception exception) {
        return 1326;
      } 
      if (parambo == null)
        return 1315; 
      if (!parambo.c())
        return 1315; 
      if (paramString == null)
        return 1321; 
      bp bp = new bp(parambo.a(), parambo.b());
      al al = new al();
      int i = al.a(exception.a(), bp, al);
      System.out.println("DATABLINK - GERAR PASSO2");
      System.out.println("DATABLINK - Numero_de_serie " + al.u());
      System.out.println("DATABLINK - Id_mobile " + al.j());
      System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
      System.out.println("DATABLINK - Id_server " + al.l());
      System.out.println("DATABLINK - Token_versao_configuracao " + al.h());
      System.out.println("DATABLINK - Status " + al.L());
      System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
      System.out.println("DATABLINK -\tStaStatusBO " + al.w());
      System.out.println("DATABLINK -\t-------------------------------------");
      if (i != 0)
        return 1310; 
      bm bm = new bm(parambo.a());
      ap ap = new ap();
      i = ap.a(paramString, bm, ap);
      System.out.println("DATABLINK - GERAR PASSO2");
      System.out.println("DATABLINK - tokenInfo.getNumero_de_serie: " + al.u());
      System.out.println("DATABLINK - infoGerenciamento.getNumero_de_serie: " + ap.b());
      System.out.println("DATABLINK - tokenInfo.getId_mobile: " + al.j());
      System.out.println("DATABLINK - infoGerenciamento.getFicha_mobile: " + ap.d());
      System.out.println("DATABLINK - tokenInfo.getId_server: " + al.l());
      System.out.println("DATABLINK - tinfoGerenciamento.getFicha_server: " + ap.f());
      System.out.println("DATABLINK - tokenInfo.getFicha_comunicacao: " + al.k());
      System.out.println("DATABLINK - infoGerenciamento.getFicha_comunicacao: " + ap.e());
      System.out.println("DATABLINK - tokenInfo.getToken_versao_configuracao: " + al.h());
      System.out.println("DATABLINK - infoGerenciamento.getVersao_configuracao: " + ap.c());
      System.out.println("DATABLINK - tokenInfo.getStatus: " + al.L());
      System.out.println("DATABLINK - infoGerenciamento.getStatus_server: " + ap.g());
      System.out.println("DATABLINK -\ttokenInfo.StaStatusBO: " + al.w());
      System.out.println("DATABLINK -\tinfoGerenciamento.getStatusBO_server: " + ap.h());
      System.out.println("DATABLINK -\t-------------------------------------");
      if (i != 0)
        return 1321; 
      al.a((int)(ap.j() - System.currentTimeMillis() / 1000L));
      if (al.L() != 0 && !al.u().equals(ap.b()))
        return 1322; 
      if (!al.j().equals(ap.d()))
        return 1323; 
      if (!al.k().equals(ap.e()))
        return 1324; 
      al.d("");
      if (ap.g() == 0) {
        if (al.L() == 0)
          return 0; 
        if (al.L() != 0) {
          aj aj1 = new aj();
          aj1.a(exception.a());
          int j = b(aj1, parambo);
          i = j;
          if (j == 0) {
            exception.a(aj1.a());
            return 0;
          } 
        } else {
          return 1326;
        } 
      } else {
        if (ap.g() == 1) {
          if (al.L() == 1)
            return a((aj)exception, al, bp, ap, bm); 
          if (al.L() == 0)
            return a((aj)exception, al, bp, ap, bm); 
          if (al.L() == 2) {
            al.x(ap.g());
            al.j(ap.h());
            return a((aj)exception, al, bp);
          } 
        } else {
          if (ap.g() == 2) {
            if (al.L() == 2) {
              al.j(ap.h());
              return a((aj)exception, al, bp);
            } 
            if (al.L() == 1) {
              al.x(2);
              al.j(ap.h());
              return a((aj)exception, al, bp);
            } 
            return 1325;
          } 
          return 1325;
        } 
        return 1325;
      } 
      return i;
    } 
    return 1310;
  }
  
  private int a(aj paramaj, bo parambo, String paramString1, String paramString2, StringBuffer paramStringBuffer) {
    if (paramStringBuffer == null)
      return 1314; 
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          if (parambo == null)
            return 1315; 
          if (!parambo.c())
            return 1315; 
          if (paramStringBuffer.length() > 0)
            paramStringBuffer.setLength(0); 
          bp bp = new bp(parambo.a(), parambo.b());
          al al = new al();
          if (al.a(paramaj.a(), bp, al) != 0)
            return 1310; 
          int i = al.L();
          if (i != 1) {
            if (i == 2)
              return 1312; 
          } else {
            if (!al.b())
              return 1320; 
            i = al.i();
            int j = al.A();
            int k = al.z();
            aw aw = new aw(a(al.M()));
            long l = System.currentTimeMillis() / 1000L;
            int m = (int)(i + l);
            av av = new av(new cq());
            av.a(aw);
            byte[] arrayOfByte1 = paramString2.getBytes("ASCII");
            byte[] arrayOfByte2 = (byte[])null;
            if (paramString1 != null) {
              byte[] arrayOfByte = az.a(paramString1);
              arrayOfByte2 = new byte[arrayOfByte.length + arrayOfByte1.length];
              for (i = 0;; i++) {
                if (i >= arrayOfByte1.length) {
                  for (i = 0;; i = 0) {
                    if (i >= arrayOfByte.length) {
                      arrayOfByte1 = a(arrayOfByte2);
                    } else {
                      arrayOfByte2[arrayOfByte1.length + i] = arrayOfByte[i];
                      i++;
                      continue;
                    } 
                  } 
                  break;
                } 
                arrayOfByte2[i] = arrayOfByte1[i];
              } 
            } 
            arrayOfByte1 = a(arrayOfByte1);
            i = 0;
          } 
          return (i == 0) ? 1311 : 1313;
        } 
      } catch (Exception exception) {
        return 1300;
      }  
    return 1310;
  }
  
  private int a(aj paramaj, bo parambo, String paramString, StringBuffer paramStringBuffer) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 504
    //   4: aload_1
    //   5: invokevirtual a : ()Ljava/lang/String;
    //   8: ifnonnull -> 508
    //   11: goto -> 504
    //   14: aload_2
    //   15: invokeinterface c : ()Z
    //   20: ifne -> 516
    //   23: sipush #1315
    //   26: ireturn
    //   27: aload #4
    //   29: invokevirtual length : ()I
    //   32: ifle -> 41
    //   35: aload #4
    //   37: iconst_0
    //   38: invokevirtual setLength : (I)V
    //   41: new bp
    //   44: dup
    //   45: aload_2
    //   46: invokeinterface a : ()[B
    //   51: aload_2
    //   52: invokeinterface b : ()[B
    //   57: invokespecial <init> : ([B[B)V
    //   60: astore_2
    //   61: new al
    //   64: dup
    //   65: invokespecial <init> : ()V
    //   68: astore #12
    //   70: aload_1
    //   71: invokevirtual a : ()Ljava/lang/String;
    //   74: aload_2
    //   75: aload #12
    //   77: invokestatic a : (Ljava/lang/String;Lbl;Lal;)I
    //   80: ifeq -> 87
    //   83: sipush #1310
    //   86: ireturn
    //   87: aload #12
    //   89: invokevirtual L : ()I
    //   92: istore #5
    //   94: iload #5
    //   96: iconst_1
    //   97: if_icmpeq -> 110
    //   100: iload #5
    //   102: iconst_2
    //   103: if_icmpne -> 525
    //   106: sipush #1312
    //   109: ireturn
    //   110: aload #12
    //   112: invokevirtual i : ()I
    //   115: istore #5
    //   117: aload #12
    //   119: invokevirtual x : ()I
    //   122: istore #7
    //   124: aload #12
    //   126: invokevirtual y : ()I
    //   129: istore #8
    //   131: aload #12
    //   133: invokevirtual M : ()Ljava/lang/String;
    //   136: astore_1
    //   137: new aw
    //   140: dup
    //   141: aload_1
    //   142: invokestatic a : (Ljava/lang/String;)[B
    //   145: invokespecial <init> : ([B)V
    //   148: astore_2
    //   149: invokestatic currentTimeMillis : ()J
    //   152: ldc2_w 1000
    //   155: ldiv
    //   156: lstore #10
    //   158: iload #5
    //   160: i2l
    //   161: lload #10
    //   163: ladd
    //   164: l2i
    //   165: istore #9
    //   167: new av
    //   170: dup
    //   171: new cq
    //   174: dup
    //   175: invokespecial <init> : ()V
    //   178: invokespecial <init> : (Lck;)V
    //   181: astore_1
    //   182: aload_1
    //   183: aload_2
    //   184: invokeinterface a : (Lci;)V
    //   189: aload_3
    //   190: ifnonnull -> 325
    //   193: aload_1
    //   194: iload #9
    //   196: iload #8
    //   198: idiv
    //   199: i2l
    //   200: invokestatic a : (J)[B
    //   203: iconst_0
    //   204: bipush #8
    //   206: invokeinterface a : ([BII)V
    //   211: bipush #20
    //   213: newarray byte
    //   215: astore_2
    //   216: aload_1
    //   217: aload_2
    //   218: iconst_0
    //   219: invokeinterface a : ([BI)I
    //   224: pop
    //   225: aload_2
    //   226: bipush #19
    //   228: baload
    //   229: bipush #15
    //   231: iand
    //   232: istore #5
    //   234: aload_2
    //   235: iload #5
    //   237: baload
    //   238: istore #6
    //   240: aload_2
    //   241: iload #5
    //   243: iconst_1
    //   244: iadd
    //   245: baload
    //   246: istore #8
    //   248: aload_2
    //   249: iload #5
    //   251: iconst_2
    //   252: iadd
    //   253: baload
    //   254: istore #9
    //   256: aload_2
    //   257: iload #5
    //   259: iconst_3
    //   260: iadd
    //   261: baload
    //   262: sipush #255
    //   265: iand
    //   266: iload #6
    //   268: bipush #127
    //   270: iand
    //   271: sipush #255
    //   274: iand
    //   275: bipush #24
    //   277: ishl
    //   278: iload #8
    //   280: sipush #255
    //   283: iand
    //   284: bipush #16
    //   286: ishl
    //   287: ior
    //   288: iload #9
    //   290: sipush #255
    //   293: iand
    //   294: bipush #8
    //   296: ishl
    //   297: ior
    //   298: ior
    //   299: istore #6
    //   301: iload #7
    //   303: newarray char
    //   305: astore_1
    //   306: iconst_0
    //   307: istore #5
    //   309: iload #5
    //   311: iload #7
    //   313: if_icmplt -> 465
    //   316: aload #4
    //   318: aload_1
    //   319: invokevirtual append : ([C)Ljava/lang/StringBuffer;
    //   322: pop
    //   323: iconst_0
    //   324: ireturn
    //   325: iconst_0
    //   326: istore #5
    //   328: new java/lang/StringBuilder
    //   331: dup
    //   332: iload #7
    //   334: invokestatic b : (I)Ljava/lang/String;
    //   337: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   340: invokespecial <init> : (Ljava/lang/String;)V
    //   343: bipush #21
    //   345: invokestatic a : (I)Ljava/lang/String;
    //   348: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: iload #8
    //   353: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   356: invokestatic a : ()Ljava/lang/String;
    //   359: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual toString : ()Ljava/lang/String;
    //   365: ldc_w 'US-ASCII'
    //   368: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   371: astore #12
    //   373: aload #12
    //   375: arraylength
    //   376: iconst_1
    //   377: iadd
    //   378: sipush #128
    //   381: iadd
    //   382: bipush #8
    //   384: iadd
    //   385: newarray byte
    //   387: astore_2
    //   388: iconst_0
    //   389: istore #6
    //   391: iload #6
    //   393: aload #12
    //   395: arraylength
    //   396: if_icmplt -> 543
    //   399: aload #12
    //   401: arraylength
    //   402: iconst_1
    //   403: iadd
    //   404: istore #5
    //   406: aload_3
    //   407: invokestatic a : (Ljava/lang/String;)[B
    //   410: astore_3
    //   411: iconst_0
    //   412: istore #6
    //   414: iload #6
    //   416: aload_3
    //   417: arraylength
    //   418: if_icmplt -> 567
    //   421: aload #12
    //   423: arraylength
    //   424: iconst_1
    //   425: iadd
    //   426: sipush #128
    //   429: iadd
    //   430: istore #5
    //   432: iload #9
    //   434: iload #8
    //   436: idiv
    //   437: i2l
    //   438: invokestatic a : (J)[B
    //   441: astore_3
    //   442: iconst_0
    //   443: istore #6
    //   445: iload #6
    //   447: aload_3
    //   448: arraylength
    //   449: if_icmplt -> 590
    //   452: aload_1
    //   453: aload_2
    //   454: iconst_0
    //   455: aload_2
    //   456: arraylength
    //   457: invokeinterface a : ([BII)V
    //   462: goto -> 211
    //   465: aload_1
    //   466: iload #7
    //   468: iload #5
    //   470: isub
    //   471: iconst_1
    //   472: isub
    //   473: iload #6
    //   475: bipush #10
    //   477: irem
    //   478: bipush #48
    //   480: iadd
    //   481: i2c
    //   482: castore
    //   483: iload #6
    //   485: bipush #10
    //   487: idiv
    //   488: istore #6
    //   490: iload #5
    //   492: iconst_1
    //   493: iadd
    //   494: istore #5
    //   496: goto -> 309
    //   499: astore_1
    //   500: sipush #1300
    //   503: ireturn
    //   504: sipush #1310
    //   507: ireturn
    //   508: aload_2
    //   509: ifnonnull -> 14
    //   512: sipush #1315
    //   515: ireturn
    //   516: aload #4
    //   518: ifnonnull -> 27
    //   521: sipush #1314
    //   524: ireturn
    //   525: iload #5
    //   527: ifne -> 534
    //   530: sipush #1311
    //   533: ireturn
    //   534: sipush #1313
    //   537: ireturn
    //   538: astore_1
    //   539: sipush #1300
    //   542: ireturn
    //   543: aload_2
    //   544: iload #5
    //   546: aload #12
    //   548: iload #6
    //   550: baload
    //   551: bastore
    //   552: iload #6
    //   554: iconst_1
    //   555: iadd
    //   556: istore #6
    //   558: iload #5
    //   560: iconst_1
    //   561: iadd
    //   562: istore #5
    //   564: goto -> 391
    //   567: aload_2
    //   568: iload #5
    //   570: aload_3
    //   571: iload #6
    //   573: baload
    //   574: bastore
    //   575: iload #6
    //   577: iconst_1
    //   578: iadd
    //   579: istore #6
    //   581: iload #5
    //   583: iconst_1
    //   584: iadd
    //   585: istore #5
    //   587: goto -> 414
    //   590: aload_2
    //   591: iload #5
    //   593: aload_3
    //   594: iload #6
    //   596: baload
    //   597: bastore
    //   598: iload #6
    //   600: iconst_1
    //   601: iadd
    //   602: istore #6
    //   604: iload #5
    //   606: iconst_1
    //   607: iadd
    //   608: istore #5
    //   610: goto -> 445
    // Exception table:
    //   from	to	target	type
    //   4	11	499	java/lang/Exception
    //   14	23	499	java/lang/Exception
    //   27	41	499	java/lang/Exception
    //   41	83	499	java/lang/Exception
    //   87	94	499	java/lang/Exception
    //   110	137	499	java/lang/Exception
    //   137	158	538	java/lang/Exception
    //   167	189	538	java/lang/Exception
    //   193	211	538	java/lang/Exception
    //   211	225	538	java/lang/Exception
    //   301	306	538	java/lang/Exception
    //   316	323	538	java/lang/Exception
    //   328	388	538	java/lang/Exception
    //   391	411	538	java/lang/Exception
    //   414	442	538	java/lang/Exception
    //   445	462	538	java/lang/Exception
    //   483	490	538	java/lang/Exception
  }
  
  private int a(aj paramaj, o paramo, StringBuffer paramStringBuffer, int paramInt) {
    char c = 'ԣ';
    if (paramaj != null) {
      long l1;
      long l2;
      try {
        if (paramaj.a() == null)
          return 1310; 
        char c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramStringBuffer == null)
              return 1314; 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.L() != 1)
              return 1404; 
            l1 = System.currentTimeMillis() / 1000L;
            l2 = al.i();
            if (paramInt == 1) {
              paramInt = al.y();
            } else if (paramInt == 2) {
              paramInt = al.z();
            } else if (paramInt == 3) {
              paramInt = al.B();
            } else {
              paramInt = 1;
            } 
          } else {
            return c1;
          } 
        } else {
          return c1;
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      float f = (float)((l2 + l1) % paramInt);
      if (f == 0.0F) {
        f = 100.0F;
        paramStringBuffer.append(f);
        return 0;
      } 
      f = f * 100.0F / paramInt;
      paramStringBuffer.append(f);
      return 0;
    } 
    return 1310;
  }
  
  private int a(o paramo, bgb parambgb, String paramString, StringBuffer paramStringBuffer) {
    try {
      paramStringBuffer.append((new af(paramo.a())).a("50&" + paramString, parambgb));
      return 0;
    } catch (Exception exception) {
      return 1451;
    } 
  }
  
  private static String a() {
    return "S";
  }
  
  private static String a(int paramInt) {
    return ":QH" + paramInt + "-T";
  }
  
  private static byte[] a(long paramLong) {
    return new byte[] { (byte)(int)(paramLong >>> 56L & 0xFFL), (byte)(int)(paramLong >>> 48L & 0xFFL), (byte)(int)(paramLong >>> 40L & 0xFFL), (byte)(int)(paramLong >>> 32L & 0xFFL), (byte)(int)(paramLong >>> 24L & 0xFFL), (byte)(int)(paramLong >>> 16L & 0xFFL), (byte)(int)(paramLong >>> 8L & 0xFFL), (byte)(int)(paramLong & 0xFFL) };
  }
  
  private static byte[] a(String paramString) {
    int i = 0;
    try {
      byte[] arrayOfByte2 = az.a(paramString);
      int j = paramString.length() / 2;
      byte[] arrayOfByte1 = new byte[j];
      while (true) {
        if (i >= arrayOfByte1.length) {
          for (i = j - arrayOfByte2.length;; i++) {
            if (i >= arrayOfByte2.length)
              return arrayOfByte1; 
            arrayOfByte1[i] = arrayOfByte2[i];
          } 
          break;
        } 
        arrayOfByte1[i] = 0;
        i++;
      } 
    } catch (Exception exception) {
      throw new Exception("Chave invalida.");
    } 
  }
  
  private byte[] a(byte[] paramArrayOfbyte) {
    at at = new at();
    at.a(paramArrayOfbyte, 0, paramArrayOfbyte.length);
    paramArrayOfbyte = new byte[at.b()];
    at.b(paramArrayOfbyte, 0);
    return paramArrayOfbyte;
  }
  
  private int b(aj paramaj, bo parambo) {
    char c2 = 'ԣ';
    if (paramaj == null)
      return 1314; 
    char c1 = c2;
    if (parambo != null) {
      c1 = c2;
      try {
        if (parambo.c()) {
          bp bp = new bp(parambo.a(), parambo.b());
          al al2 = new al();
          if (al.a(paramaj.a(), bp, al2) != 0)
            return 1310; 
          long l = System.currentTimeMillis();
          String str = bp.c(new String(ca.a((String.valueOf(new String(az.a(parambo.b()))) + String.valueOf(l)).getBytes()), 0, 8));
          al al1 = new al();
          al1.c(str.substring(0, 8));
          byte[] arrayOfByte = (byte[])null;
          al1.g(al2.u());
          al1.j(al2.H());
          al1.a(al2.g());
          StringBuffer stringBuffer = new StringBuffer();
          if (al.a(al1, bp, stringBuffer) != 0)
            return 1310; 
          paramaj.a(stringBuffer.toString());
          return 0;
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
    } 
    return c1;
  }
  
  private int b(aj paramaj, bo parambo, String paramString) {
    int i = 1315;
    if (paramaj != null) {
      try {
        if (paramaj.a() == null)
          return 1310; 
        int j = i;
        if (parambo != null) {
          j = i;
          if (parambo.c()) {
            Vector<String> vector = br.a((new bm(parambo.a())).b(paramString), "#");
            if (!((String)vector.get(0)).equals("CMD_SC"))
              return 1300; 
            long l = Long.parseLong(vector.get(1));
            bp bp = new bp(parambo.a(), parambo.b());
            al al = new al();
            i = al.a(paramaj.a(), bp, al);
            j = i;
            if (i == 0) {
              if (al.L() == 0)
                return 1311; 
              al.a((int)(l - System.currentTimeMillis() / 1000L));
              return a(paramaj, al, bp);
            } 
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return SYNTHETIC_LOCAL_VARIABLE_4;
    } 
    return 1310;
  }
  
  private int b(aj paramaj, bo parambo, String paramString1, String paramString2, StringBuffer paramStringBuffer) {
    if (paramStringBuffer == null)
      return 1314; 
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          if (parambo == null)
            return 1315; 
          if (!parambo.c())
            return 1315; 
          if (paramStringBuffer.length() > 0)
            paramStringBuffer.setLength(0); 
          bp bp = new bp(parambo.a(), parambo.b());
          al al = new al();
          if (al.a(paramaj.a(), bp, al) != 0)
            return 1310; 
          int i = al.L();
          if (i != 1) {
            if (i == 2)
              return 1312; 
          } else {
            if (!al.c())
              return 1320; 
            i = al.i();
            int j = al.C();
            int k = al.B();
            aw aw = new aw(a(al.M()));
            long l = System.currentTimeMillis() / 1000L;
            int m = (int)(i + l);
            av av = new av(new cq());
            av.a(aw);
            byte[] arrayOfByte1 = paramString2.getBytes("ASCII");
            byte[] arrayOfByte2 = (byte[])null;
            if (paramString1 != null) {
              byte[] arrayOfByte = az.a(paramString1);
              arrayOfByte2 = new byte[arrayOfByte.length + arrayOfByte1.length];
              for (i = 0;; i++) {
                if (i >= arrayOfByte1.length) {
                  for (i = 0;; i = 0) {
                    if (i >= arrayOfByte.length) {
                      arrayOfByte1 = a(arrayOfByte2);
                    } else {
                      arrayOfByte2[arrayOfByte1.length + i] = arrayOfByte[i];
                      i++;
                      continue;
                    } 
                  } 
                  break;
                } 
                arrayOfByte2[i] = arrayOfByte1[i];
              } 
            } 
            arrayOfByte1 = a(arrayOfByte1);
            i = 0;
          } 
          return (i == 0) ? 1311 : 1313;
        } 
      } catch (Exception exception) {
        return 1300;
      }  
    return 1310;
  }
  
  private int b(aj paramaj, bo parambo, String paramString, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramStringBuffer == null)
      return 1314; 
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (parambo != null) {
          j = i;
          if (parambo.c()) {
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            StringBuffer stringBuffer = new StringBuffer();
            Vector<String> vector = new Vector();
            i = b(paramaj, parambo, paramString, stringBuffer, vector);
            j = i;
            if (i == 0) {
              paramString = stringBuffer.toString();
              if (!paramString.equals("4") && !paramString.equals("2"))
                return 1300; 
              if (paramString.equals("4")) {
                vector.remove(0);
                vector.remove(0);
              } 
              paramString = "";
              Iterator<String> iterator = vector.iterator();
              while (true) {
                if (!iterator.hasNext()) {
                  i = a(paramaj, parambo, new String(az.a(parambo.b())), paramString, paramStringBuffer);
                  j = i;
                  return (i == 0) ? 0 : j;
                } 
                String str = iterator.next();
                paramString = String.valueOf(paramString) + str;
              } 
            } 
          } 
        } 
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int b(aj paramaj, bo parambo, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    char c = 'ԣ';
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int i = c;
          if (parambo != null) {
            i = c;
            if (parambo.c()) {
              if (paramVector == null)
                return 1314; 
              bp bp = new bp(parambo.a(), parambo.b());
              al al = new al();
              if (al.a(paramaj.a(), bp, al) != 0)
                return 1310; 
              i = al.L();
              if (i != 1) {
                if (i == 2)
                  return 1312; 
              } else {
                return !al.d() ? 1320 : ((paramString.split(":")[0].length() == 24) ? bu.a(al, parambo.a(), paramString, paramStringBuffer, paramVector) : bt.a(al, parambo.a(), paramString, paramStringBuffer, paramVector));
              } 
            } else {
              return i;
            } 
          } else {
            return i;
          } 
          return (i == 0) ? 1311 : 1313;
        } 
      } catch (Exception exception) {
        return 1300;
      }  
    return 1310;
  }
  
  private int b(aj paramaj, o paramo, int paramInt) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.i(paramInt);
            StringBuffer stringBuffer = new StringBuffer();
            if (al.a(al, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int b(aj paramaj, o paramo, String paramString1, String paramString2, String paramString3, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (paramo != null) {
          j = i;
          if (paramo.c()) {
            Vector<String> vector = new Vector();
            vector.add(paramString2);
            vector.add(paramString1);
            vector.add(paramString3);
            Iterator<String> iterator = vector.iterator();
            while (true) {
              if (!iterator.hasNext()) {
                if (paramStringBuffer == null)
                  return 1314; 
              } else {
                String str1 = iterator.next();
                if (str1 == null)
                  return 1446; 
                char[] arrayOfChar = str1.toCharArray();
                String str2 = new String(k);
                for (j = 0; j < arrayOfChar.length; j++) {
                  if (str2.contains(String.valueOf(arrayOfChar[j])))
                    return 1446; 
                } 
                continue;
              } 
              if (paramStringBuffer.length() > 0)
                paramStringBuffer.setLength(0); 
              bp bp = new bp(paramo.a(), paramo.b());
              al al = new al();
              if (al.a(paramaj.a(), bp, al) != 0)
                return 1310; 
              if (al.v() != 2)
                return 1313; 
              String str = String.valueOf(al.u()) + "&" + paramString2 + "&" + paramString1 + "&" + paramString3;
              StringBuffer stringBuffer = new StringBuffer();
              i = a(paramo, (bgb)null, str, stringBuffer);
              j = i;
              if (i == 0) {
                paramStringBuffer.append(stringBuffer.toString());
                return 0;
              } 
              return j;
            } 
          } 
        } 
      } catch (Exception exception) {
        return 1721;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int b(aj paramaj, o paramo, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    char c = 'ԣ';
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int i = c;
          if (paramo != null) {
            i = c;
            if (paramo.c()) {
              if (paramVector == null)
                return 1314; 
              bp bp = new bp(paramo.a(), paramo.b());
              al al = new al();
              if (al.a(paramaj.a(), bp, al) != 0)
                return 1310; 
              i = al.L();
              if (i != 1) {
                if (i == 2)
                  return 1312; 
              } else {
                return !al.e() ? 1320 : ((paramString.split(":")[0].length() == 24) ? bu.a(al, paramo.a(), paramString, paramStringBuffer1, paramStringBuffer2, paramVector) : bs.a(al, paramo.a(), paramString, paramStringBuffer1, paramStringBuffer2, paramVector));
              } 
            } else {
              return i;
            } 
          } else {
            return i;
          } 
          return (i == 0) ? 1311 : 1313;
        } 
      } catch (Exception exception) {
        return 1300;
      }  
    return 1310;
  }
  
  private int b(aj paramaj, o paramo, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null) {
      try {
        if (paramaj.a() == null)
          return 1310; 
        int k = i;
        if (paramo != null) {
          k = i;
          if (paramo.c()) {
            if (paramVector == null)
              return 1446; 
          } else {
            return k;
          } 
        } else {
          return k;
        } 
      } catch (bfy null) {
        throw exception;
      } catch (Exception exception) {
        return 1703;
      } 
      int j = 0;
      label63: while (true) {
        if (j >= paramVector.size()) {
          if (paramStringBuffer == null)
            return 1314; 
        } else {
          String str1 = paramVector.get(j);
          if (str1 == null)
            return 1446; 
          char[] arrayOfChar = str1.toCharArray();
          String str2 = new String(k);
          for (i = 0;; i++) {
            if (i >= arrayOfChar.length) {
              j++;
              continue label63;
            } 
            if (str2.contains(String.valueOf(arrayOfChar[i])))
              return 1446; 
          } 
        } 
        if (paramStringBuffer.length() > 0)
          paramStringBuffer.setLength(0); 
        Vector<String> vector = new Vector();
        i = g(paramo, paramString, vector);
        j = 0;
        while (true) {
          if (j >= vector.size()) {
            if (i != 0)
              return 1423; 
          } else {
            System.out.println("oVetorDadosRespostaAtivacaoPasso2[" + j + "]: " + (String)vector.get(j));
            j++;
            continue;
          } 
          if (p((aj)exception, paramo, vector.elementAt(0)) != 0)
            return 1431; 
          bp bp = new bp(paramo.a(), paramo.b());
          al al = new al();
          if (al.a(exception.a(), bp, al) != 0)
            return 1310; 
          if ((al.w() == 3 || al.w() == 5) && al.L() == 1) {
            aj aj1 = new aj();
            aj1.a(exception.a());
            String str = new String(az.a(paramo.b()));
            StringBuffer stringBuffer = new StringBuffer();
            i = b(aj1, paramo, str, stringBuffer);
            j = i;
            if (i == 0) {
              String str1 = stringBuffer.toString();
              str = String.valueOf(al.u()) + "&" + str + "&" + str1;
              for (j = 0;; j++) {
                StringBuffer stringBuffer1;
                if (j >= paramVector.size()) {
                  stringBuffer1 = new StringBuffer();
                  i = a(paramo, (bgb)null, str, stringBuffer1);
                  System.out.println("DATABLINK - GERAR PASSO2");
                  System.out.println("DATABLINK - Numero_de_serie " + al.u());
                  System.out.println("DATABLINK - Id_mobile " + al.j());
                  System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
                  System.out.println("DATABLINK - Id_server " + al.l());
                  System.out.println("DATABLINK - Token_versao_configuracao " + al.h());
                  System.out.println("DATABLINK - Status " + al.L());
                  System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
                  System.out.println("DATABLINK -\tStaStatusBO " + al.w());
                  System.out.println("DATABLINK -\t-------------------------------------");
                  j = i;
                  if (i == 0) {
                    paramStringBuffer.append(stringBuffer1.toString());
                    return 0;
                  } 
                  break;
                } 
                str = String.valueOf(str) + "&" + (String)stringBuffer1.get(j);
              } 
            } 
            break;
          } 
          return 1417;
        } 
        return j;
      } 
      return 1417;
    } 
    return 1310;
  }
  
  private int b(aj paramaj, o paramo, boolean paramBoolean, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2) {
    if (paramaj != null) {
      try {
        if (paramaj.a() == null)
          return 1310; 
      } catch (Exception exception) {
        return 1721;
      } 
      if (paramo == null)
        return 1315; 
      if (!paramo.c())
        return 1315; 
      if (paramString == null)
        return 1446; 
      if (paramStringBuffer2 == null)
        return 1314; 
      if (paramStringBuffer2.length() > 0)
        paramStringBuffer2.setLength(0); 
      bp bp = new bp(paramo.a(), paramo.b());
      al al = new al();
      if (al.a(exception.a(), bp, al) != 0)
        return 1310; 
      if (al.v() != 2)
        return 1313; 
      StringBuffer stringBuffer = new StringBuffer();
      Vector<String> vector = new Vector();
      int j = b((aj)exception, paramo, paramString, paramStringBuffer1, stringBuffer, vector);
      int i = j;
      if (j == 0) {
        String str2 = "";
        String str1 = paramStringBuffer1.toString();
        if (str1.equals("4")) {
          vector.remove(0);
          vector.remove(0);
          str1 = "2";
        } 
        Iterator<String> iterator = vector.iterator();
        while (true) {
          String str4;
          if (!iterator.hasNext()) {
            String str = new String(az.a(paramo.b()));
            str4 = "";
            if (str1.equals("1")) {
              StringBuffer stringBuffer1 = new StringBuffer();
              j = a((aj)exception, (bo)paramo, str, stringBuffer1);
              i = j;
              if (j == 0) {
                String str5 = stringBuffer1.toString();
              } else {
                break;
              } 
            } else if (str1.equals("3")) {
              StringBuffer stringBuffer1 = new StringBuffer();
              j = b((aj)exception, (bo)paramo, str, str2, stringBuffer1);
              i = j;
              if (j == 0) {
                String str5 = stringBuffer1.toString();
              } else {
                break;
              } 
            } else if (str1.equals("2")) {
              StringBuffer stringBuffer1 = new StringBuffer();
              j = a((aj)exception, (bo)paramo, str, str2, stringBuffer1);
              i = j;
              if (j == 0) {
                String str5 = stringBuffer1.toString();
              } else {
                break;
              } 
            } 
            str3 = String.valueOf(al.u()) + "&" + stringBuffer;
            if (paramBoolean) {
              str4 = String.valueOf(str3) + "&1";
              continue;
            } 
          } else {
            String str = str4.next();
            str2 = String.valueOf(str2) + str;
            continue;
          } 
          String str3 = String.valueOf(String.valueOf(str3) + "&0") + "&" + str4.toString();
          i = 0;
          while (true) {
            str4 = str3;
            if (i < vector.size()) {
              str3 = String.valueOf(str3) + "&" + (String)vector.get(i);
              i++;
              continue;
            } 
            StringBuffer stringBuffer1 = new StringBuffer();
            j = a(paramo, (bgb)null, str4, stringBuffer1);
            i = j;
            if (j == 0) {
              paramStringBuffer2.append(stringBuffer1.toString());
              return 0;
            } 
            break;
          } 
          break;
        } 
      } 
      return i;
    } 
    return 1310;
  }
  
  private int b(o paramo, bgb parambgb, String paramString, StringBuffer paramStringBuffer) {
    try {
      paramStringBuffer.append((new ab(paramo.a())).a("70&" + paramString, parambgb));
      return 0;
    } catch (Exception exception) {
      return 1451;
    } 
  }
  
  private static String b(int paramInt) {
    return "OCRA-1:HOTP-SHA1-" + paramInt;
  }
  
  private int c(aj paramaj, bo parambo, String paramString, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramStringBuffer == null)
      return 1314; 
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (parambo != null) {
          j = i;
          if (parambo.c()) {
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            Vector<String> vector = new Vector();
            StringBuffer stringBuffer = new StringBuffer();
            i = b(paramaj, parambo, paramString, stringBuffer, vector);
            j = i;
            if (i == 0) {
              if (!stringBuffer.toString().equals("3"))
                return 1300; 
              paramString = "";
              Iterator<String> iterator = vector.iterator();
              while (true) {
                if (!iterator.hasNext()) {
                  i = b(paramaj, parambo, new String(az.a(parambo.b())), paramString, paramStringBuffer);
                  j = i;
                  return (i == 0) ? 0 : j;
                } 
                String str = iterator.next();
                paramString = String.valueOf(paramString) + str;
              } 
            } 
          } 
        } 
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int d(aj paramaj, o paramo) {
    int i = 1315;
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (paramo != null) {
          j = i;
          if (paramo.c()) {
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.L() == 0)
              return 1404; 
            if (al.n() == 0)
              return 1439; 
            if (al.q() == 2)
              return 1439; 
            al.f("");
            al.c(0);
            al.h(2);
            StringBuffer stringBuffer = new StringBuffer();
            i = al.a(al, bp, stringBuffer);
            j = i;
            if (i == 0) {
              paramaj.a(stringBuffer.toString());
              return 0;
            } 
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int d(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (paramStringBuffer == null)
      return 1314; 
    try {
      af af = new af(paramo.a());
      String str = "99";
      int i = 0;
      while (true) {
        if (i >= paramVector.size()) {
          str = af.a(str, new bgb());
          if (str == null)
            return 1451; 
        } else {
          str = String.valueOf(str) + "&" + bz.b(((String)paramVector.get(i)).getBytes());
          i++;
          continue;
        } 
        paramStringBuffer.append(str);
        return 0;
      } 
    } catch (Exception exception) {
      return 1451;
    } 
  }
  
  private int e(aj paramaj, o paramo) {
    char c = 'ԣ';
    if (paramaj == null)
      return 1314; 
    try {
      if (paramaj.a() != null)
        return 1310; 
      char c1 = c;
      if (paramo != null) {
        c1 = c;
        if (paramo.c()) {
          bp bp = new bp(paramo.a(), paramo.b());
          long l = System.currentTimeMillis();
          String str = bp.c(new String(ca.a((String.valueOf(new String(az.a(paramo.b()))) + String.valueOf(l)).getBytes()), 0, 8));
          ak ak = new ak();
          ak.c(str.substring(0, 8));
          byte[] arrayOfByte = (byte[])null;
          StringBuffer stringBuffer = new StringBuffer();
          if (ak.a(ak, bp, stringBuffer) != 0)
            return 1310; 
          paramaj.a(stringBuffer.toString());
          return 0;
        } 
      } 
      return c1;
    } catch (bv bv) {
      return 1316;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int e(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramo != null)
      try {
        if (paramo.c()) {
          if (paramVector == null)
            return 1446; 
          if (paramVector.size() == 0)
            return 1446; 
          i = 0;
          label39: while (true) {
            if (i >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(i);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              int j;
              for (j = 0;; j++) {
                if (j >= arrayOfChar.length) {
                  i++;
                  continue label39;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[j])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            String str = paramVector.get(0);
            for (i = 1;; i++) {
              StringBuffer stringBuffer;
              if (i >= paramVector.size()) {
                stringBuffer = new StringBuffer();
                int j = a(paramo, (bgb)null, str, stringBuffer);
                i = j;
                if (j == 0) {
                  paramStringBuffer.append(stringBuffer.toString());
                  return 0;
                } 
                return i;
              } 
              str = String.valueOf(str) + "&" + (String)stringBuffer.get(i);
            } 
            break;
          } 
        } 
        return i;
      } catch (Exception exception) {
        return 1722;
      }  
    return i;
  }
  
  private int f(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramo != null)
      try {
        if (paramo.c()) {
          if (paramVector == null)
            return 1446; 
          if (paramVector.size() == 0)
            return 1446; 
          i = 0;
          label39: while (true) {
            if (i >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(i);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              int j;
              for (j = 0;; j++) {
                if (j >= arrayOfChar.length) {
                  i++;
                  continue label39;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[j])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            String str = paramVector.get(0);
            for (i = 1;; i++) {
              StringBuffer stringBuffer;
              if (i >= paramVector.size()) {
                stringBuffer = new StringBuffer();
                int j = b(paramo, (bgb)null, str, stringBuffer);
                i = j;
                if (j == 0) {
                  paramStringBuffer.append(stringBuffer.toString());
                  return 0;
                } 
                return i;
              } 
              str = String.valueOf(str) + "&" + (String)stringBuffer.get(i);
            } 
            break;
          } 
        } 
        return i;
      } catch (Exception exception) {
        return 1722;
      }  
    return i;
  }
  
  private int g(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label48: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label48;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            ai ai = new ai();
            i = a(paramaj, paramo, ai);
            j = i;
            if (i == 0) {
              bp bp = new bp(paramo.a(), paramo.b());
              al al = new al();
              if (al.a(paramaj.a(), bp, al) != 0)
                return 1310; 
              String str = String.valueOf(ai.a()) + "&" + al.u();
              for (j = 0;; j++) {
                StringBuffer stringBuffer;
                if (j >= paramVector.size()) {
                  stringBuffer = new StringBuffer();
                  i = a(paramo, (bgb)null, str, stringBuffer);
                  j = i;
                  if (i == 0) {
                    paramStringBuffer.append(stringBuffer.toString());
                    return 0;
                  } 
                  break;
                } 
                str = String.valueOf(str) + "&" + (String)stringBuffer.get(j);
              } 
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        return 1704;
      }  
    return 1310;
  }
  
  private int h(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label46: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label46;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            String str = al.u();
            for (j = 0;; j++) {
              StringBuffer stringBuffer;
              if (j >= paramVector.size()) {
                stringBuffer = new StringBuffer();
                i = a(paramo, (bgb)null, str, stringBuffer);
                j = i;
                if (i == 0) {
                  paramStringBuffer.append(stringBuffer.toString());
                  return 0;
                } 
                break;
              } 
              str = String.valueOf(str) + "&" + (String)stringBuffer.get(j);
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        return 1704;
      }  
    return 1310;
  }
  
  private int i(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label51: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label51;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.v() != 0 && al.v() != 5)
              return 1313; 
            ai ai = new ai();
            i = a(paramaj, paramo, ai);
            j = i;
            if (i == 0) {
              String str = new String(az.a(paramo.b()));
              str = String.valueOf(ai.a()) + "&" + str;
              for (j = 0;; j++) {
                StringBuffer stringBuffer;
                if (j >= paramVector.size()) {
                  stringBuffer = new StringBuffer();
                  i = a(paramo, (bgb)null, str, stringBuffer);
                  j = i;
                  if (i == 0) {
                    paramStringBuffer.append(stringBuffer.toString());
                    return 0;
                  } 
                  break;
                } 
                str = String.valueOf(str) + "&" + (String)stringBuffer.get(j);
              } 
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        return 1702;
      }  
    return 1310;
  }
  
  private int i(o paramo, String paramString, Vector<String> paramVector) {
    try {
      int i = h(paramo, paramString, paramVector);
      return (i != 0) ? i : 0;
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int j(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label55: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label55;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.v() != 2)
              return 1313; 
            ai ai = new ai();
            i = a(paramaj, paramo, ai);
            j = i;
            if (i == 0) {
              String str = new String(az.a(paramo.b()));
              StringBuffer stringBuffer = new StringBuffer();
              i = b(paramaj, paramo, str, stringBuffer);
              j = i;
              if (i == 0) {
                al al1 = new al();
                if (al.a(paramaj.a(), bp, al1) != 0)
                  return 1310; 
                String str1 = ai.a();
                String str2 = stringBuffer.toString();
                String str3 = al1.u();
                str1 = String.valueOf(str1) + "&" + str3 + "&" + str2;
                for (j = 0;; j++) {
                  StringBuffer stringBuffer1;
                  if (j >= paramVector.size()) {
                    stringBuffer1 = new StringBuffer();
                    i = a(paramo, (bgb)null, str1, stringBuffer1);
                    j = i;
                    if (i == 0) {
                      paramStringBuffer.append(stringBuffer1.toString());
                      return 0;
                    } 
                    break;
                  } 
                  str1 = String.valueOf(str1) + "&" + (String)stringBuffer1.get(j);
                } 
              } 
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        return 1705;
      }  
    return 1310;
  }
  
  private int j(o paramo, String paramString, Vector<String> paramVector) {
    if (paramString == null)
      return 1446; 
    if (paramVector == null)
      return 1314; 
    try {
      int i = h(paramo, paramString, paramVector);
      return (i != 0) ? 1423 : 0;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int k(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label54: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label54;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.v() != 6 && al.v() != 2)
              return 1313; 
            ai ai = new ai();
            i = a(paramaj, paramo, ai);
            j = i;
            if (i == 0) {
              al al1 = new al();
              if (al.a(paramaj.a(), bp, al1) != 0)
                return 1310; 
              String str = String.valueOf(ai.a()) + "&" + al1.u();
              for (j = 0;; j++) {
                StringBuffer stringBuffer;
                if (j >= paramVector.size()) {
                  stringBuffer = new StringBuffer();
                  i = a(paramo, (bgb)null, str, stringBuffer);
                  j = i;
                  if (i == 0) {
                    paramStringBuffer.append(stringBuffer.toString());
                    return 0;
                  } 
                  break;
                } 
                str = String.valueOf(str) + "&" + (String)stringBuffer.get(j);
              } 
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        return 1707;
      }  
    return 1310;
  }
  
  private int k(o paramo, String paramString, Vector<String> paramVector) {
    int i;
    if (paramVector == null)
      return 1314; 
    Vector<String> vector = new Vector();
    try {
      int j = (new af(paramo.a())).a(paramString, vector);
      i = j;
      if (j == 0) {
        i = j;
        if (j == 0)
          try {
            if (vector.size() > 1 && ((String)vector.get(0)).equals("99")) {
              vector.remove(0);
              for (i = 0;; i++) {
                if (i >= vector.size())
                  return 0; 
                paramVector.add(bz.d(((String)vector.get(i)).getBytes()));
              } 
            } 
            if (vector.size() > 0)
              vector.clear(); 
            return 1429;
          } catch (Exception exception) {
            if (paramVector != null && paramVector.size() > 0)
              paramVector.clear(); 
            return 1429;
          }  
      } 
    } catch (Exception exception) {
      return 1421;
    } 
    return i;
  }
  
  private int l(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    int i = 1315;
    if (paramaj != null)
      try {
        if (paramaj.a() != null) {
          int j = i;
          if (paramo != null) {
            j = i;
            if (paramo.c()) {
              if (paramVector == null)
                return 1446; 
            } else {
              return j;
            } 
          } else {
            return j;
          } 
          j = 0;
          label58: while (true) {
            if (j >= paramVector.size()) {
              if (paramStringBuffer == null)
                return 1314; 
            } else {
              String str1 = paramVector.get(j);
              if (str1 == null)
                return 1446; 
              char[] arrayOfChar = str1.toCharArray();
              String str2 = new String(k);
              for (i = 0;; i++) {
                if (i >= arrayOfChar.length) {
                  j++;
                  continue label58;
                } 
                if (str2.contains(String.valueOf(arrayOfChar[i])))
                  return 1446; 
              } 
              break;
            } 
            if (paramStringBuffer.length() > 0)
              paramStringBuffer.setLength(0); 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.v() != 4 && al.v() != 3)
              return 1313; 
            ai ai = new ai();
            i = a(paramaj, paramo, ai);
            j = i;
            if (i == 0) {
              al al1 = new al();
              if (al.a(paramaj.a(), bp, al1) != 0)
                return 1310; 
              String str = new String(az.a(paramo.b()));
              StringBuffer stringBuffer = new StringBuffer();
              i = b(paramaj, paramo, str, stringBuffer);
              j = i;
              if (i == 0) {
                String str1 = stringBuffer.toString();
                String str2 = String.valueOf(ai.a()) + "&" + al1.u() + "&" + str1;
                str1 = str2;
                if (paramVector != null) {
                  j = 0;
                  str1 = str2;
                  while (true) {
                    StringBuffer stringBuffer1;
                    if (j >= paramVector.size()) {
                      stringBuffer1 = new StringBuffer();
                      i = a(paramo, (bgb)null, str1, stringBuffer1);
                      j = i;
                      if (i == 0) {
                        paramStringBuffer.append(stringBuffer1.toString());
                        return 0;
                      } 
                      break;
                    } 
                    str1 = String.valueOf(str1) + "&" + (String)stringBuffer1.get(j);
                    j++;
                  } 
                  return j;
                } 
                continue;
              } 
            } 
            return j;
          } 
        } 
      } catch (Exception exception) {
        return 1708;
      }  
    return 1310;
  }
  
  private int l(o paramo, String paramString, Vector<String> paramVector) {
    if (paramVector == null)
      return 1314; 
    try {
      int i = g(paramo, paramString, paramVector);
      return (i != 0) ? 1423 : 0;
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      return 1723;
    } 
  }
  
  private int q(aj paramaj, o paramo, String paramString) {
    try {
      bp bp = new bp(paramo.a(), paramo.b());
      al al = new al();
      if (al.a(paramaj.a(), bp, al) != 0)
        return 1310; 
      if (al.v() == 0)
        return 1404; 
      Vector<String> vector = new Vector();
      int i = g(paramo, paramString, vector);
      if (i != 0) {
        if (i == 1007) {
          int j = b(paramaj, paramo, 0);
          i = j;
          return (j == 0) ? 1445 : i;
        } 
      } else {
        if (vector.size() < 1)
          return 1411; 
        if (p(paramaj, paramo, vector.elementAt(0)) != 0)
          return 1415; 
        al al1 = new al();
        if (al.a(paramaj.a(), bp, al1) != 0)
          return 1310; 
        if (al1.L() == 1 && al1.w() == 2) {
          int j = b(paramaj, paramo, 3);
          i = j;
          if (j == 0)
            return 1444; 
        } else {
          return 0;
        } 
        return i;
      } 
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      return 1415;
    } 
    return 1423;
  }
  
  private int r(aj paramaj, o paramo, String paramString) {
    char c;
    try {
      Vector<String> vector = new Vector();
      if (g(paramo, paramString, vector) != 0)
        return 1423; 
      if (vector.size() < 3)
        return 1411; 
      paramString = vector.elementAt(0);
      String str = vector.elementAt(1);
      System.out.println("DATABLINK - ATIVAR");
      int i = 0;
      while (true) {
        bp bp;
        al al;
        if (i >= vector.size()) {
          bp = new bp(paramo.a(), paramo.b());
          al = new al();
          if (al.a(paramaj.a(), bp, al) != 0)
            return 1310; 
        } else {
          System.out.println("DATABLINK -oVetorDadosRespostaAtivacaoPasso2[" + i + "]: " + (String)bp.elementAt(i));
          i++;
          continue;
        } 
        if (al.v() != 0 && al.v() != 5)
          return 1313; 
        System.out.println("DATABLINK - ATIVAR");
        System.out.println("DATABLINK - Numero_de_serie " + al.u());
        System.out.println("DATABLINK - Id_mobile " + al.j());
        System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
        System.out.println("DATABLINK - Id_server " + al.l());
        System.out.println("DATABLINK - Token_versao_configuracao " + al.h());
        System.out.println("DATABLINK - Status " + al.L());
        System.out.println("DATABLINK - Ficha_comunicacao " + al.k());
        System.out.println("DATABLINK -\tStaStatusBO " + al.w());
        System.out.println("DATABLINK -\t-------------------------------------");
        if (!al.j().equals(paramString))
          return 1412; 
        if (!al.l().equals(str))
          return 1413; 
        if ((al.w() != 3 && al.w() != 5) || al.L() != 1)
          return 1417; 
        i = super.a(paramaj, paramo, 2);
        c = i;
        return (i == 0) ? 0 : c;
      } 
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      c = '֐';
    } 
    return c;
  }
  
  private int s(aj paramaj, o paramo, String paramString) {
    int i = 1315;
    if (paramaj != null) {
      int j;
      try {
        if (paramaj.a() == null)
          return 1310; 
        j = i;
        if (paramo != null) {
          j = i;
          if (paramo.c()) {
            if (paramString == null)
              return 1434; 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            if (al.L() != 1)
              return 1404; 
            if (al.n() == 0)
              return 1439; 
            if (al.m().length() == 0)
              return 1443; 
            if (paramString.equals(al.m())) {
              al.c(0);
              StringBuffer stringBuffer = new StringBuffer();
              i = al.a(al, bp, stringBuffer);
              j = i;
              if (i == 0) {
                paramaj.a(stringBuffer.toString());
                return 0;
              } 
            } else if (al.p() > 0) {
              al.c(al.o() + 1);
              if (al.o() >= al.p())
                al.i(6); 
              StringBuffer stringBuffer = new StringBuffer();
              i = al.a(al, bp, stringBuffer);
              j = i;
              if (i == 0) {
                paramaj.a(stringBuffer.toString());
                if (al.o() >= al.p())
                  return 1437; 
                j = al.o();
                i = al.p();
                return (j == i - 1) ? 1438 : 1436;
              } 
            } else {
              return 1436;
            } 
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return j;
    } 
    return 1310;
  }
  
  private int t(aj paramaj, o paramo, String paramString) {
    // Byte code:
    //   0: sipush #1315
    //   3: istore #5
    //   5: aload_1
    //   6: ifnull -> 319
    //   9: aload_1
    //   10: invokevirtual a : ()Ljava/lang/String;
    //   13: ifnonnull -> 19
    //   16: goto -> 319
    //   19: iload #5
    //   21: istore #4
    //   23: aload_2
    //   24: ifnull -> 324
    //   27: iload #5
    //   29: istore #4
    //   31: aload_2
    //   32: invokevirtual c : ()Z
    //   35: ifeq -> 324
    //   38: aload_3
    //   39: ifnonnull -> 46
    //   42: sipush #1434
    //   45: ireturn
    //   46: aload_3
    //   47: invokevirtual length : ()I
    //   50: ifne -> 57
    //   53: sipush #1434
    //   56: ireturn
    //   57: new bp
    //   60: dup
    //   61: aload_2
    //   62: invokevirtual a : ()[B
    //   65: aload_2
    //   66: invokevirtual b : ()[B
    //   69: invokespecial <init> : ([B[B)V
    //   72: astore #7
    //   74: new al
    //   77: dup
    //   78: invokespecial <init> : ()V
    //   81: astore #8
    //   83: aload_1
    //   84: invokevirtual a : ()Ljava/lang/String;
    //   87: aload #7
    //   89: aload #8
    //   91: invokestatic a : (Ljava/lang/String;Lbl;Lal;)I
    //   94: ifeq -> 101
    //   97: sipush #1310
    //   100: ireturn
    //   101: aload #8
    //   103: invokevirtual L : ()I
    //   106: iconst_1
    //   107: if_icmpeq -> 114
    //   110: sipush #1404
    //   113: ireturn
    //   114: aload #8
    //   116: invokevirtual n : ()I
    //   119: ifne -> 126
    //   122: sipush #1439
    //   125: ireturn
    //   126: aload_3
    //   127: invokevirtual length : ()I
    //   130: aload #8
    //   132: invokevirtual n : ()I
    //   135: if_icmpge -> 142
    //   138: sipush #1435
    //   141: ireturn
    //   142: aload_3
    //   143: invokevirtual length : ()I
    //   146: bipush #10
    //   148: if_icmple -> 155
    //   151: sipush #1435
    //   154: ireturn
    //   155: aload #8
    //   157: invokevirtual s : ()I
    //   160: ifeq -> 206
    //   163: aload_3
    //   164: invokevirtual toCharArray : ()[C
    //   167: astore #9
    //   169: iconst_0
    //   170: newarray byte
    //   172: astore_2
    //   173: aload #8
    //   175: invokevirtual s : ()I
    //   178: iconst_1
    //   179: if_icmpne -> 261
    //   182: getstatic ae.i : [B
    //   185: astore_2
    //   186: new java/lang/String
    //   189: dup
    //   190: aload_2
    //   191: invokespecial <init> : ([B)V
    //   194: astore_2
    //   195: iconst_0
    //   196: istore #4
    //   198: iload #4
    //   200: aload #9
    //   202: arraylength
    //   203: if_icmplt -> 277
    //   206: aload #8
    //   208: aload_3
    //   209: invokevirtual f : (Ljava/lang/String;)V
    //   212: aload #8
    //   214: iconst_0
    //   215: invokevirtual c : (I)V
    //   218: aload #8
    //   220: iconst_1
    //   221: invokevirtual h : (I)V
    //   224: new java/lang/StringBuffer
    //   227: dup
    //   228: invokespecial <init> : ()V
    //   231: astore_2
    //   232: aload #8
    //   234: aload #7
    //   236: aload_2
    //   237: invokestatic a : (Lal;Lbl;Ljava/lang/StringBuffer;)I
    //   240: istore #5
    //   242: iload #5
    //   244: istore #4
    //   246: iload #5
    //   248: ifne -> 324
    //   251: aload_1
    //   252: aload_2
    //   253: invokevirtual toString : ()Ljava/lang/String;
    //   256: invokevirtual a : (Ljava/lang/String;)V
    //   259: iconst_0
    //   260: ireturn
    //   261: aload #8
    //   263: invokevirtual s : ()I
    //   266: iconst_2
    //   267: if_icmpne -> 186
    //   270: getstatic ae.j : [B
    //   273: astore_2
    //   274: goto -> 186
    //   277: aload_2
    //   278: aload #9
    //   280: iload #4
    //   282: caload
    //   283: invokestatic valueOf : (C)Ljava/lang/String;
    //   286: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   289: istore #6
    //   291: iload #6
    //   293: ifne -> 300
    //   296: sipush #1442
    //   299: ireturn
    //   300: iload #4
    //   302: iconst_1
    //   303: iadd
    //   304: istore #4
    //   306: goto -> 198
    //   309: astore_1
    //   310: sipush #1316
    //   313: ireturn
    //   314: astore_1
    //   315: sipush #1300
    //   318: ireturn
    //   319: sipush #1310
    //   322: istore #4
    //   324: iload #4
    //   326: ireturn
    // Exception table:
    //   from	to	target	type
    //   9	16	309	bv
    //   9	16	314	java/lang/Exception
    //   31	38	309	bv
    //   31	38	314	java/lang/Exception
    //   46	53	309	bv
    //   46	53	314	java/lang/Exception
    //   57	97	309	bv
    //   57	97	314	java/lang/Exception
    //   101	110	309	bv
    //   101	110	314	java/lang/Exception
    //   114	122	309	bv
    //   114	122	314	java/lang/Exception
    //   126	138	309	bv
    //   126	138	314	java/lang/Exception
    //   142	151	309	bv
    //   142	151	314	java/lang/Exception
    //   155	186	309	bv
    //   155	186	314	java/lang/Exception
    //   186	195	309	bv
    //   186	195	314	java/lang/Exception
    //   198	206	309	bv
    //   198	206	314	java/lang/Exception
    //   206	242	309	bv
    //   206	242	314	java/lang/Exception
    //   251	259	309	bv
    //   251	259	314	java/lang/Exception
    //   261	274	309	bv
    //   261	274	314	java/lang/Exception
    //   277	291	309	bv
    //   277	291	314	java/lang/Exception
  }
  
  private int u(aj paramaj, o paramo, String paramString) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramString == null)
              return 1440; 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.a(paramString);
            StringBuffer stringBuffer = new StringBuffer();
            if (al.a(al, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int v(aj paramaj, o paramo, String paramString) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramString == null)
              return 1452; 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.j(paramString);
            StringBuffer stringBuffer = new StringBuffer();
            if (al.a(al, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int w(aj paramaj, o paramo, String paramString) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramString == null)
              return 1720; 
            bp bp = new bp(paramo.a(), paramo.b());
            ak ak = new ak();
            if (ak.a(paramaj.a(), bp, ak) != 0)
              return 1310; 
            ak.k(paramString);
            StringBuffer stringBuffer = new StringBuffer();
            if (ak.a(ak, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int x(aj paramaj, o paramo, String paramString) {
    char c = 'ԣ';
    if (paramaj != null) {
      char c1;
      try {
        if (paramaj.a() == null)
          return 1310; 
        c1 = c;
        if (paramo != null) {
          c1 = c;
          if (paramo.c()) {
            if (paramString == null)
              return 1720; 
            bp bp = new bp(paramo.a(), paramo.b());
            al al = new al();
            if (al.a(paramaj.a(), bp, al) != 0)
              return 1310; 
            al.k(paramString);
            StringBuffer stringBuffer = new StringBuffer();
            if (al.a(al, bp, stringBuffer) != 0)
              return 1310; 
            paramaj.a(stringBuffer.toString());
            return 0;
          } 
        } 
      } catch (bv bv) {
        return 1316;
      } catch (Exception exception) {
        return 1300;
      } 
      return c1;
    } 
    return 1310;
  }
  
  private int y(aj paramaj, o paramo, String paramString) {
    char c;
    try {
      Vector<String> vector = new Vector();
      if (g(paramo, paramString, vector) != 0)
        return 1423; 
      if (vector.size() < 2)
        return 1411; 
      int i = p(paramaj, paramo, vector.elementAt(0));
      c = i;
      if (i == 0) {
        bp bp = new bp(paramo.a(), paramo.b());
        al al = new al();
        if (al.a(paramaj.a(), bp, al) != 0)
          return 1310; 
        if (al.w() != 0 || al.L() != 0)
          return 1417; 
        i = super.a(paramaj, paramo, 5);
        c = i;
        if (i == 0)
          return 0; 
      } 
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      c = '֌';
    } 
    return c;
  }
  
  private int z(aj paramaj, o paramo, String paramString) {
    char c;
    try {
      bp bp = new bp(paramo.a(), paramo.b());
      al al2 = new al();
      if (al.a(paramaj.a(), bp, al2) != 0)
        return 1310; 
      if (al2.w() == 0)
        return 1404; 
      Vector<String> vector = new Vector();
      if (g(paramo, paramString, vector) != 0)
        return 1423; 
      if (vector.size() < 1)
        return 1411; 
      if (p(paramaj, paramo, vector.elementAt(0)) != 0)
        return 1418; 
      al al1 = new al();
      if (al.a(paramaj.a(), bp, al1) != 0)
        return 1310; 
      if (al1.w() != 4 || al1.L() != 1)
        return 1417; 
      int i = super.a(paramaj, paramo, 4);
      c = i;
      if (i == 0)
        return 0; 
    } catch (bfy bfy) {
      throw bfy;
    } catch (Exception exception) {
      c = '֊';
    } 
    return c;
  }
  
  public int a(aj paramaj, bo parambo, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    return b(paramaj, parambo, paramString, paramStringBuffer, paramVector);
  }
  
  public int a(aj paramaj, o paramo) {
    return a(paramaj, (bo)paramo);
  }
  
  public int a(aj paramaj, o paramo, int paramInt) {
    return b(paramaj, paramo, paramInt);
  }
  
  public int a(aj paramaj, o paramo, ai paramai) {
    return a(paramaj, (bo)paramo, paramai);
  }
  
  public int a(aj paramaj, o paramo, am paramam) {
    return a(paramaj, (bo)paramo, paramam);
  }
  
  public int a(aj paramaj, o paramo, an paraman) {
    return a(paramaj, (bo)paramo, paraman);
  }
  
  public int a(aj paramaj, o paramo, String paramString) {
    return b(paramaj, (bo)paramo, paramString);
  }
  
  public int a(aj paramaj, o paramo, String paramString1, String paramString2, String paramString3, StringBuffer paramStringBuffer) {
    return b(paramaj, paramo, paramString1, paramString2, paramString3, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, String paramString1, String paramString2, StringBuffer paramStringBuffer) {
    return a(paramaj, (bo)paramo, paramString1, paramString2, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, String paramString, StringBuffer paramStringBuffer) {
    return b(paramaj, (bo)paramo, paramString, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    return b(paramaj, paramo, paramString, paramStringBuffer1, paramStringBuffer2, paramVector);
  }
  
  public int a(aj paramaj, o paramo, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return b(paramaj, paramo, paramString, paramVector, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, StringBuffer paramStringBuffer) {
    return a(paramaj, (bo)paramo, (String)null, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return i(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int a(aj paramaj, o paramo, boolean paramBoolean, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2) {
    return b(paramaj, paramo, paramBoolean, paramString, paramStringBuffer1, paramStringBuffer2);
  }
  
  public int a(o paramo, String paramString, Vector<String> paramVector) {
    return j(paramo, paramString, paramVector);
  }
  
  public int a(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return d(paramo, paramVector, paramStringBuffer);
  }
  
  public int b(aj paramaj, o paramo) {
    return d(paramaj, paramo);
  }
  
  public int b(aj paramaj, o paramo, String paramString) {
    return u(paramaj, paramo, paramString);
  }
  
  public int b(aj paramaj, o paramo, String paramString, StringBuffer paramStringBuffer) {
    return a(paramaj, (bo)paramo, paramString, paramStringBuffer);
  }
  
  public int b(aj paramaj, o paramo, StringBuffer paramStringBuffer) {
    return a(paramaj, paramo, paramStringBuffer, 2);
  }
  
  public int b(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return g(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int b(o paramo, String paramString, Vector<String> paramVector) {
    return i(paramo, paramString, paramVector);
  }
  
  public int b(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return e(paramo, paramVector, paramStringBuffer);
  }
  
  public int c(aj paramaj, o paramo) {
    return e(paramaj, paramo);
  }
  
  public int c(aj paramaj, o paramo, String paramString) {
    return t(paramaj, paramo, paramString);
  }
  
  public int c(aj paramaj, o paramo, String paramString, StringBuffer paramStringBuffer) {
    return c(paramaj, (bo)paramo, paramString, paramStringBuffer);
  }
  
  public int c(aj paramaj, o paramo, StringBuffer paramStringBuffer) {
    return a(paramaj, paramo, paramStringBuffer, 1);
  }
  
  public int c(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return h(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int c(o paramo, String paramString, Vector<String> paramVector) {
    return k(paramo, paramString, paramVector);
  }
  
  public int c(o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return f(paramo, paramVector, paramStringBuffer);
  }
  
  public int d(aj paramaj, o paramo, String paramString) {
    return s(paramaj, paramo, paramString);
  }
  
  public int d(aj paramaj, o paramo, StringBuffer paramStringBuffer) {
    return a(paramaj, paramo, paramStringBuffer, 3);
  }
  
  public int d(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return j(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int d(o paramo, String paramString, Vector<String> paramVector) {
    int i;
    if (paramVector == null)
      return 1314; 
    Vector<String> vector = new Vector();
    try {
      int j = (new af(paramo.a())).a(paramString, vector);
      i = j;
      if (j == 0) {
        i = j;
        if (j == 0)
          try {
            if (vector.size() > 1 && ((String)vector.get(0)).equals("10")) {
              vector.remove(0);
              for (i = 0;; i++) {
                if (i >= vector.size())
                  return 0; 
                paramVector.add(vector.get(i));
              } 
            } 
            if (vector.size() > 0)
              vector.clear(); 
            return 1429;
          } catch (Exception exception) {
            exception.printStackTrace();
            if (paramVector != null && paramVector.size() > 0)
              paramVector.clear(); 
            return 1429;
          }  
      } 
    } catch (Exception exception) {
      return 1421;
    } 
    return i;
  }
  
  public int e(aj paramaj, o paramo, String paramString) {
    return r(paramaj, paramo, paramString);
  }
  
  public int e(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return k(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int e(o paramo, String paramString, Vector<String> paramVector) {
    return l(paramo, paramString, paramVector);
  }
  
  public int f(aj paramaj, o paramo, String paramString) {
    return q(paramaj, paramo, paramString);
  }
  
  public int f(aj paramaj, o paramo, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return l(paramaj, paramo, paramVector, paramStringBuffer);
  }
  
  public int f(o paramo, String paramString, Vector<String> paramVector) {
    if (paramVector == null)
      return 1314; 
    try {
      Vector<String> vector = new Vector();
      try {
        int j = (new ab(paramo.a())).a(paramString, vector);
        int i = j;
        if (j == 0) {
          if (vector.size() != 2)
            return 1423; 
          String str = bz.d(((String)vector.get(1)).getBytes());
          try {
            String[] arrayOfString = str.split("&");
            paramVector.add(arrayOfString[0]);
            if (arrayOfString.length == 2)
              paramVector.add(arrayOfString[1]); 
            return 0;
          } catch (Exception exception) {
            return 1423;
          } 
        } 
      } catch (Exception exception) {
        return 1421;
      } 
    } catch (Throwable throwable) {
      throwable.printStackTrace();
      return 1723;
    } 
  }
  
  public int g(aj paramaj, o paramo, String paramString) {
    return y(paramaj, paramo, paramString);
  }
  
  public int g(o paramo, String paramString, Vector<String> paramVector) {
    Vector<String> vector = new Vector();
    try {
      i = (new af(paramo.a())).a(paramString, vector);
      if (i != 0)
        return i; 
    } catch (Exception exception) {
      return 1421;
    } 
    if (i == 0) {
      try {
        i = Integer.parseInt(vector.get(0));
        if (i == 10) {
          if (vector.size() >= 1) {
            vector.remove(0);
            paramVector.addAll(vector);
          } 
          return 0;
        } 
      } catch (Exception exception) {
        if (vector.size() > 0)
          vector.clear(); 
        return 1429;
      } 
      if (i == 60)
        try {
          throw new bfy(60, 0, w.b((String)vector.get(1)));
        } catch (bfy bfy) {
          throw bfy;
        } catch (Exception exception) {
          return 1425;
        } finally {
          if (vector.size() > 0)
            vector.clear(); 
        }  
      if (i == 40)
        try {
          throw new bfy(40, Integer.parseInt((String)vector.get(1)), "");
        } catch (bfy bfy) {
          throw bfy;
        } catch (Exception exception) {
          if (vector.size() > 0)
            vector.clear(); 
          return 1426;
        }  
      if (i == 20)
        try {
          String str = vector.get(1);
          i = str.indexOf(':');
          if (i > 0) {
            i = Integer.parseInt(str.substring(0, i));
            throw new bfy(20, i, "");
          } 
          i = Integer.parseInt(str);
          throw new bfy(20, i, "");
        } catch (bfy bfy) {
          throw bfy;
        } catch (Exception exception) {
          if (vector.size() > 0)
            vector.clear(); 
          return 1427;
        }  
      if (i == 30) {
        try {
          if (vector.size() == 3) {
            i = Integer.parseInt(vector.get(1));
            if (i == 1007) {
              if (vector.size() > 0)
                vector.clear(); 
              return 1007;
            } 
            if (i == 1003) {
              if (vector.size() > 0)
                vector.clear(); 
              return 1003;
            } 
            if (i == 1004) {
              if (vector.size() > 0)
                vector.clear(); 
              return 1004;
            } 
            throw new bfy(30, i, "");
          } 
        } catch (bfy bfy) {
          throw bfy;
        } catch (Exception exception) {}
        if (vector.size() > 0)
          vector.clear(); 
        return 1428;
      } 
      if (vector.size() > 0)
        vector.clear(); 
      return 1430;
    } 
    int i = -1;
    if (i == 10) {
      if (vector.size() >= 1) {
        vector.remove(0);
        paramVector.addAll(vector);
      } 
      return 0;
    } 
  }
  
  public int h(aj paramaj, o paramo, String paramString) {
    return z(paramaj, paramo, paramString);
  }
  
  public int h(o paramo, String paramString, Vector<String> paramVector) {
    try {
      int i = (new af(paramo.a())).a(paramString, paramVector);
      if (i == 0 && i == 0)
        try {
          if (paramVector.size() == 2 && ((String)paramVector.get(0)).equals("40")) {
            paramVector.remove(0);
            return 0;
          } 
          if (paramVector.size() > 0)
            paramVector.clear(); 
          return 1429;
        } catch (Exception exception) {
          if (paramVector != null && paramVector.size() > 0)
            paramVector.clear(); 
          return 1429;
        }  
      return i;
    } catch (Exception exception) {
      return 1421;
    } 
  }
  
  public int i(aj paramaj, o paramo, String paramString) {
    return A(paramaj, paramo, paramString);
  }
  
  public int j(aj paramaj, o paramo, String paramString) {
    return B(paramaj, paramo, paramString);
  }
  
  public int k(aj paramaj, o paramo, String paramString) {
    return C(paramaj, paramo, paramString);
  }
  
  public int l(aj paramaj, o paramo, String paramString) {
    return D(paramaj, paramo, paramString);
  }
  
  public int m(aj paramaj, o paramo, String paramString) {
    return v(paramaj, paramo, paramString);
  }
  
  public int n(aj paramaj, o paramo, String paramString) {
    return x(paramaj, paramo, paramString);
  }
  
  public int o(aj paramaj, o paramo, String paramString) {
    return w(paramaj, paramo, paramString);
  }
  
  public int p(aj paramaj, o paramo, String paramString) {
    return a(paramaj, (bo)paramo, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
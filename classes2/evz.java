import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class evz extends ezm implements evy {
  private static final eqm[] a = new eqm[0];
  
  private static final eqo[] b = new eqo[0];
  
  private static List<eqm> a(List<eqm> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface iterator : ()Ljava/util/Iterator;
    //   6: astore #5
    //   8: aload #5
    //   10: invokeinterface hasNext : ()Z
    //   15: ifeq -> 517
    //   18: aload #5
    //   20: invokeinterface next : ()Ljava/lang/Object;
    //   25: checkcast eqm
    //   28: invokevirtual e : ()Ljava/util/Map;
    //   31: getstatic eqn.STRUCTURED_APPEND_SEQUENCE : Leqn;
    //   34: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   39: ifeq -> 8
    //   42: iconst_1
    //   43: istore_1
    //   44: iload_1
    //   45: ifne -> 50
    //   48: aload_0
    //   49: areturn
    //   50: new java/util/ArrayList
    //   53: dup
    //   54: invokespecial <init> : ()V
    //   57: astore #5
    //   59: new java/util/ArrayList
    //   62: dup
    //   63: invokespecial <init> : ()V
    //   66: astore #6
    //   68: aload_0
    //   69: invokeinterface iterator : ()Ljava/util/Iterator;
    //   74: astore_0
    //   75: aload_0
    //   76: invokeinterface hasNext : ()Z
    //   81: ifeq -> 134
    //   84: aload_0
    //   85: invokeinterface next : ()Ljava/lang/Object;
    //   90: checkcast eqm
    //   93: astore #7
    //   95: aload #5
    //   97: aload #7
    //   99: invokeinterface add : (Ljava/lang/Object;)Z
    //   104: pop
    //   105: aload #7
    //   107: invokevirtual e : ()Ljava/util/Map;
    //   110: getstatic eqn.STRUCTURED_APPEND_SEQUENCE : Leqn;
    //   113: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   118: ifeq -> 75
    //   121: aload #6
    //   123: aload #7
    //   125: invokeinterface add : (Ljava/lang/Object;)Z
    //   130: pop
    //   131: goto -> 75
    //   134: aload #6
    //   136: new ewb
    //   139: dup
    //   140: aconst_null
    //   141: invokespecial <init> : (Lewa;)V
    //   144: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   147: new java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial <init> : ()V
    //   154: astore_0
    //   155: aload #6
    //   157: invokeinterface iterator : ()Ljava/util/Iterator;
    //   162: astore #7
    //   164: iconst_0
    //   165: istore_1
    //   166: iconst_0
    //   167: istore_2
    //   168: aload #7
    //   170: invokeinterface hasNext : ()Z
    //   175: ifeq -> 286
    //   178: aload #7
    //   180: invokeinterface next : ()Ljava/lang/Object;
    //   185: checkcast eqm
    //   188: astore #8
    //   190: aload_0
    //   191: aload #8
    //   193: invokevirtual a : ()Ljava/lang/String;
    //   196: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: pop
    //   200: iload_2
    //   201: aload #8
    //   203: invokevirtual b : ()[B
    //   206: arraylength
    //   207: iadd
    //   208: istore_3
    //   209: iload_1
    //   210: istore_2
    //   211: aload #8
    //   213: invokevirtual e : ()Ljava/util/Map;
    //   216: getstatic eqn.BYTE_SEGMENTS : Leqn;
    //   219: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   224: ifeq -> 279
    //   227: aload #8
    //   229: invokevirtual e : ()Ljava/util/Map;
    //   232: getstatic eqn.BYTE_SEGMENTS : Leqn;
    //   235: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   240: checkcast java/lang/Iterable
    //   243: invokeinterface iterator : ()Ljava/util/Iterator;
    //   248: astore #8
    //   250: iload_1
    //   251: istore_2
    //   252: aload #8
    //   254: invokeinterface hasNext : ()Z
    //   259: ifeq -> 279
    //   262: iload_1
    //   263: aload #8
    //   265: invokeinterface next : ()Ljava/lang/Object;
    //   270: checkcast [B
    //   273: arraylength
    //   274: iadd
    //   275: istore_1
    //   276: goto -> 250
    //   279: iload_2
    //   280: istore_1
    //   281: iload_3
    //   282: istore_2
    //   283: goto -> 168
    //   286: iload_2
    //   287: newarray byte
    //   289: astore #8
    //   291: iload_1
    //   292: newarray byte
    //   294: astore #7
    //   296: aload #6
    //   298: invokeinterface iterator : ()Ljava/util/Iterator;
    //   303: astore #6
    //   305: iconst_0
    //   306: istore_2
    //   307: iconst_0
    //   308: istore_3
    //   309: aload #6
    //   311: invokeinterface hasNext : ()Z
    //   316: ifeq -> 453
    //   319: aload #6
    //   321: invokeinterface next : ()Ljava/lang/Object;
    //   326: checkcast eqm
    //   329: astore #9
    //   331: aload #9
    //   333: invokevirtual b : ()[B
    //   336: iconst_0
    //   337: aload #8
    //   339: iload_3
    //   340: aload #9
    //   342: invokevirtual b : ()[B
    //   345: arraylength
    //   346: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   349: iload_3
    //   350: aload #9
    //   352: invokevirtual b : ()[B
    //   355: arraylength
    //   356: iadd
    //   357: istore #4
    //   359: iload_2
    //   360: istore_3
    //   361: aload #9
    //   363: invokevirtual e : ()Ljava/util/Map;
    //   366: getstatic eqn.BYTE_SEGMENTS : Leqn;
    //   369: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   374: ifeq -> 445
    //   377: aload #9
    //   379: invokevirtual e : ()Ljava/util/Map;
    //   382: getstatic eqn.BYTE_SEGMENTS : Leqn;
    //   385: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   390: checkcast java/lang/Iterable
    //   393: invokeinterface iterator : ()Ljava/util/Iterator;
    //   398: astore #9
    //   400: iload_2
    //   401: istore_3
    //   402: aload #9
    //   404: invokeinterface hasNext : ()Z
    //   409: ifeq -> 445
    //   412: aload #9
    //   414: invokeinterface next : ()Ljava/lang/Object;
    //   419: checkcast [B
    //   422: astore #10
    //   424: aload #10
    //   426: iconst_0
    //   427: aload #7
    //   429: iload_2
    //   430: aload #10
    //   432: arraylength
    //   433: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   436: iload_2
    //   437: aload #10
    //   439: arraylength
    //   440: iadd
    //   441: istore_2
    //   442: goto -> 400
    //   445: iload_3
    //   446: istore_2
    //   447: iload #4
    //   449: istore_3
    //   450: goto -> 309
    //   453: new eqm
    //   456: dup
    //   457: aload_0
    //   458: invokevirtual toString : ()Ljava/lang/String;
    //   461: aload #8
    //   463: getstatic evz.b : [Leqo;
    //   466: getstatic epu.QR_CODE : Lepu;
    //   469: invokespecial <init> : (Ljava/lang/String;[B[Leqo;Lepu;)V
    //   472: astore_0
    //   473: iload_1
    //   474: ifle -> 505
    //   477: new java/util/ArrayList
    //   480: dup
    //   481: invokespecial <init> : ()V
    //   484: astore #6
    //   486: aload #6
    //   488: aload #7
    //   490: invokeinterface add : (Ljava/lang/Object;)Z
    //   495: pop
    //   496: aload_0
    //   497: getstatic eqn.BYTE_SEGMENTS : Leqn;
    //   500: aload #6
    //   502: invokevirtual a : (Leqn;Ljava/lang/Object;)V
    //   505: aload #5
    //   507: aload_0
    //   508: invokeinterface add : (Ljava/lang/Object;)Z
    //   513: pop
    //   514: aload #5
    //   516: areturn
    //   517: iconst_0
    //   518: istore_1
    //   519: goto -> 44
  }
  
  public eqm[] a_(epw paramepw) {
    return a_(paramepw, null);
  }
  
  public eqm[] a_(epw paramepw, Map<epy, ?> paramMap) {
    ArrayList<eqm> arrayList = new ArrayList();
    ety[] arrayOfEty = (new ewc(paramepw.c())).a(paramMap);
    int j = arrayOfEty.length;
    int i = 0;
    while (true) {
      if (i < j) {
        ety ety = arrayOfEty[i];
        try {
          etw etw = b().a(ety.d(), paramMap);
          eqo[] arrayOfEqo = ety.e();
          if (etw.g() instanceof faf)
            ((faf)etw.g()).a(arrayOfEqo); 
          eqm eqm1 = new eqm(etw.b(), etw.a(), arrayOfEqo, epu.QR_CODE);
          List<byte[]> list1 = etw.c();
          if (list1 != null)
            eqm1.a(eqn.BYTE_SEGMENTS, list1); 
          String str = etw.d();
          if (str != null)
            eqm1.a(eqn.ERROR_CORRECTION_LEVEL, str); 
          if (etw.h()) {
            eqm1.a(eqn.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(etw.j()));
            eqm1.a(eqn.STRUCTURED_APPEND_PARITY, Integer.valueOf(etw.i()));
          } 
          arrayList.add(eqm1);
        } catch (eql eql) {}
        i++;
        continue;
      } 
      if (arrayList.isEmpty())
        return a; 
      List<eqm> list = a(arrayList);
      return list.<eqm>toArray(new eqm[list.size()]);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.util.Log;
import java.io.InputStream;

public class hbi extends hbm {
  private String a(String paramString1, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:init>" + "<request>" + "<deviceData>" + paramString2 + "</deviceData>" + "<deviceKey>" + paramString1 + "</deviceKey>" + "</request>" + "</web:init>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularAlterarProgramacaoRecarga>" + "<entrada>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString1 + "</banco>" + "<conta>" + paramString3 + "</conta>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<idSessao>" + this.a.j() + "</idSessao>" + "</entrada>" + "</web:simularAlterarProgramacaoRecarga>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularCancelarContratoEmprestimo>" + "<entrada>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString1 + "</banco>" + "<conta>" + paramString3 + "</conta>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<idSessao>" + this.a.j() + "</idSessao>" + "</entrada>" + "</web:simularCancelarContratoEmprestimo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularCancelarProgramacaoRecarga>" + "<entrada>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString1 + "</banco>" + "<conta>" + paramString3 + "</conta>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<idSessao>" + this.a.j() + "</idSessao>" + "</entrada>" + "</web:simularCancelarProgramacaoRecarga>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String h() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:getPublicKey/>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String i() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>" + "<soapenv:Body>" + "<web:validarSessao>" + "<idSessao>" + this.a.j() + "</idSessao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "</web:validarSessao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String j() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>" + "<soapenv:Body>" + "<web:invalidarSessao>" + "<idSessao>" + this.a.j() + "</idSessao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "</web:invalidarSessao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fwu a() {
    myu myu = myu.a();
    myu.a(false);
    myu.b(false);
    try {
      String str = h();
      str = jcd.a(has.e(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kao kao = new kao(inputStream);
          kao.b();
          fwu fwu = kao.a();
          if (fwu != null && !fwu.hasError() && fwu.a() != null) {
            this.a.a(fwu);
            return fwu;
          } 
          return null;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("KeyService", "sendPublicKeyRequest", exception);
      return null;
    } 
    return null;
  }
  
  public fwo b() {
    // Byte code:
    //   0: new naf
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: aload #4
    //   11: invokevirtual a : ()V
    //   14: aload_0
    //   15: getfield a : Lmiq;
    //   18: invokevirtual k : ()Lfwv;
    //   21: astore_3
    //   22: aload_3
    //   23: ifnull -> 63
    //   26: aload_3
    //   27: invokevirtual g : ()Ljava/lang/String;
    //   30: ifnull -> 63
    //   33: aload_3
    //   34: invokevirtual f : ()Ljava/lang/String;
    //   37: ifnull -> 63
    //   40: aload_3
    //   41: invokevirtual e : ()Ljava/lang/String;
    //   44: ifnull -> 63
    //   47: aload_3
    //   48: invokevirtual i : ()Ljava/lang/String;
    //   51: ifnull -> 63
    //   54: aload_3
    //   55: astore_2
    //   56: aload_3
    //   57: invokevirtual h : ()Ljava/lang/String;
    //   60: ifnonnull -> 85
    //   63: aload_0
    //   64: getfield a : Lmiq;
    //   67: new fwv
    //   70: dup
    //   71: invokespecial <init> : ()V
    //   74: invokevirtual a : (Lfwv;)V
    //   77: aload_0
    //   78: getfield a : Lmiq;
    //   81: invokevirtual k : ()Lfwv;
    //   84: astore_2
    //   85: aload #4
    //   87: new java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial <init> : ()V
    //   94: aload_2
    //   95: invokevirtual g : ()Ljava/lang/String;
    //   98: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: ldc '\\n'
    //   103: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload_2
    //   107: invokevirtual f : ()Ljava/lang/String;
    //   110: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: ldc '\\nnull\\n'
    //   115: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload_2
    //   119: invokevirtual e : ()Ljava/lang/String;
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: ldc '\\n'
    //   127: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_2
    //   131: invokevirtual i : ()Ljava/lang/String;
    //   134: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: ldc '\\n'
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload_2
    //   143: invokevirtual h : ()Ljava/lang/String;
    //   146: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual toString : ()Ljava/lang/String;
    //   152: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   155: astore_2
    //   156: aload_0
    //   157: getfield a : Lmiq;
    //   160: invokevirtual g : ()Lfwu;
    //   163: ifnull -> 491
    //   166: aload_0
    //   167: getfield a : Lmiq;
    //   170: invokevirtual g : ()Lfwu;
    //   173: invokevirtual a : ()Ljava/lang/String;
    //   176: ifnull -> 491
    //   179: aload_0
    //   180: getfield a : Lmiq;
    //   183: invokevirtual g : ()Lfwu;
    //   186: invokevirtual a : ()Ljava/lang/String;
    //   189: invokevirtual trim : ()Ljava/lang/String;
    //   192: invokevirtual isEmpty : ()Z
    //   195: ifne -> 491
    //   198: aload_2
    //   199: ifnull -> 491
    //   202: aload_2
    //   203: invokevirtual trim : ()Ljava/lang/String;
    //   206: invokevirtual isEmpty : ()Z
    //   209: ifne -> 491
    //   212: aload #4
    //   214: aload_2
    //   215: ldc 'UTF-8'
    //   217: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   220: aload_0
    //   221: getfield a : Lmiq;
    //   224: invokevirtual g : ()Lfwu;
    //   227: invokevirtual a : ()Ljava/lang/String;
    //   230: invokevirtual a : ([BLjava/lang/String;)Ljava/lang/String;
    //   233: astore_2
    //   234: aload #4
    //   236: aload #4
    //   238: getfield c : Ljava/security/PublicKey;
    //   241: invokeinterface getEncoded : ()[B
    //   246: aload_0
    //   247: getfield a : Lmiq;
    //   250: invokevirtual g : ()Lfwu;
    //   253: invokevirtual a : ()Ljava/lang/String;
    //   256: invokevirtual a : ([BLjava/lang/String;)Ljava/lang/String;
    //   259: astore_3
    //   260: aload_2
    //   261: ifnull -> 489
    //   264: aload_2
    //   265: invokevirtual trim : ()Ljava/lang/String;
    //   268: invokevirtual isEmpty : ()Z
    //   271: ifne -> 489
    //   274: aload_3
    //   275: ifnull -> 489
    //   278: aload_3
    //   279: invokevirtual trim : ()Ljava/lang/String;
    //   282: invokevirtual isEmpty : ()Z
    //   285: ifeq -> 291
    //   288: goto -> 489
    //   291: aload_0
    //   292: aload_3
    //   293: aload_2
    //   294: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   297: astore_2
    //   298: invokestatic e : ()Ljava/lang/String;
    //   301: aload_2
    //   302: ldc ''
    //   304: iconst_1
    //   305: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   308: astore_2
    //   309: aload_2
    //   310: ifnull -> 487
    //   313: aload_2
    //   314: ldc 'UTF-8'
    //   316: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    //   319: astore_2
    //   320: new jzp
    //   323: dup
    //   324: aload_2
    //   325: invokespecial <init> : (Ljava/io/InputStream;)V
    //   328: astore_3
    //   329: aload_3
    //   330: invokevirtual b : ()V
    //   333: aload_3
    //   334: invokevirtual a : ()Lfwo;
    //   337: astore_3
    //   338: aload_3
    //   339: ifnull -> 358
    //   342: aload_3
    //   343: invokevirtual hasError : ()Z
    //   346: ifne -> 358
    //   349: aload_3
    //   350: invokevirtual c : ()Z
    //   353: istore_1
    //   354: iload_1
    //   355: ifeq -> 364
    //   358: aload_2
    //   359: invokevirtual close : ()V
    //   362: aconst_null
    //   363: areturn
    //   364: aload_3
    //   365: invokevirtual a : ()Ljava/lang/String;
    //   368: ifnull -> 406
    //   371: aload_3
    //   372: invokevirtual a : ()Ljava/lang/String;
    //   375: invokevirtual trim : ()Ljava/lang/String;
    //   378: invokevirtual isEmpty : ()Z
    //   381: ifne -> 406
    //   384: aload_3
    //   385: invokevirtual b : ()Ljava/lang/String;
    //   388: ifnull -> 406
    //   391: aload_3
    //   392: invokevirtual b : ()Ljava/lang/String;
    //   395: invokevirtual trim : ()Ljava/lang/String;
    //   398: invokevirtual isEmpty : ()Z
    //   401: istore_1
    //   402: iload_1
    //   403: ifeq -> 412
    //   406: aload_2
    //   407: invokevirtual close : ()V
    //   410: aconst_null
    //   411: areturn
    //   412: aload #4
    //   414: aload_3
    //   415: invokevirtual a : ()Ljava/lang/String;
    //   418: invokevirtual b : (Ljava/lang/String;)[B
    //   421: astore #5
    //   423: aload_0
    //   424: getfield a : Lmiq;
    //   427: aload #5
    //   429: invokevirtual a : ([B)V
    //   432: new java/lang/String
    //   435: dup
    //   436: aload #4
    //   438: aload_3
    //   439: invokevirtual b : ()Ljava/lang/String;
    //   442: invokevirtual b : (Ljava/lang/String;)[B
    //   445: ldc 'UTF-8'
    //   447: invokespecial <init> : ([BLjava/lang/String;)V
    //   450: astore #4
    //   452: aload_0
    //   453: getfield a : Lmiq;
    //   456: aload #4
    //   458: invokevirtual a : (Ljava/lang/String;)V
    //   461: aload_2
    //   462: invokevirtual close : ()V
    //   465: aload_3
    //   466: areturn
    //   467: astore_2
    //   468: ldc 'KeyService'
    //   470: ldc_w 'sendKeyStoreRequest'
    //   473: aload_2
    //   474: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   477: pop
    //   478: aconst_null
    //   479: areturn
    //   480: astore_3
    //   481: aload_2
    //   482: invokevirtual close : ()V
    //   485: aload_3
    //   486: athrow
    //   487: aconst_null
    //   488: areturn
    //   489: aconst_null
    //   490: areturn
    //   491: aconst_null
    //   492: areturn
    // Exception table:
    //   from	to	target	type
    //   0	22	467	java/lang/Exception
    //   26	54	467	java/lang/Exception
    //   56	63	467	java/lang/Exception
    //   63	85	467	java/lang/Exception
    //   85	198	467	java/lang/Exception
    //   202	260	467	java/lang/Exception
    //   264	274	467	java/lang/Exception
    //   278	288	467	java/lang/Exception
    //   291	309	467	java/lang/Exception
    //   313	320	467	java/lang/Exception
    //   320	338	480	finally
    //   342	354	480	finally
    //   358	362	467	java/lang/Exception
    //   364	402	480	finally
    //   406	410	467	java/lang/Exception
    //   412	461	480	finally
    //   461	465	467	java/lang/Exception
    //   481	487	467	java/lang/Exception
  }
  
  public fwu c() {
    try {
      String str = i();
      str = jcd.a(has.y(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kao kao = new kao(inputStream);
          kao.b();
          fwu fwu = kao.a();
          if (fwu != null && !fwu.hasFaultError() && fwu.a() != null)
            this.a.a(fwu); 
          return fwu;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    return null;
  }
  
  public fwu d() {
    try {
      String str = j();
      jcd.a(has.y(), str, "", true);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    return null;
  }
  
  public jxf e() {
    try {
      String str1 = mzr.e();
      String str2 = mzr.f();
      str1 = a(mzr.h(), str1, str2);
      str1 = jcd.a(has.y(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jww jww = new jww(inputStream);
          jww.b();
          if (jww.a() != null && !jww.a().hasFaultError())
            this.a.f().i(jww.a().a()); 
          return jww.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jxf jxf = new jxf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jxf.setError(fvu);
      return jxf;
    } 
    return null;
  }
  
  public jxf f() {
    try {
      String str1 = mzr.e();
      String str2 = mzr.f();
      str1 = b(mzr.h(), str1, str2);
      str1 = jcd.a(has.y(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jww jww = new jww(inputStream);
          jww.b();
          if (jww.a() != null && !jww.a().hasFaultError())
            this.a.f().i(jww.a().a()); 
          return jww.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jxf jxf = new jxf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jxf.setError(fvu);
      return jxf;
    } 
    return null;
  }
  
  public jxf g() {
    try {
      String str1 = mzr.e();
      String str2 = mzr.f();
      str1 = c(mzr.h(), str1, str2);
      str1 = jcd.a(has.y(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jww jww = new jww(inputStream);
          jww.b();
          if (jww.a() != null && !jww.a().hasFaultError())
            this.a.f().i(jww.a().a()); 
          return jww.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jxf jxf = new jxf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jxf.setError(fvu);
      return jxf;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
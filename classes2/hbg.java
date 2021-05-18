import android.util.Log;
import java.io.InputStream;

public class hbg extends hbm {
  private String a(String paramString1, String paramString2) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidadaPoupancaNovo>" + "<arg0>" + "<agencia>" + str1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:consultarPosicaoConsolidadaPoupancaNovo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarLimiteOK>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:consultarLimiteOK>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:buscarSaldo>" + "<arg0>" + "<agencia>" + paramString2 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<penumper>" + paramString4 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString5 + "</tokenTransacao>" + "</arg0>" + "</web:buscarSaldo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultaSaldoCartao>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:consultaSaldoCartao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidada>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:consultarPosicaoConsolidada>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidadaPoupanca>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</arg0>" + "</web:consultarPosicaoConsolidadaPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String e(String paramString1, String paramString2, String paramString3) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidadaNovo>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<agendamento>false</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataAgendamento></dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil></dataContabil>" + "<listaEmail>" + "<email></email>" + "</listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper>" + paramString2 + "</penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto></produto>" + "<subProduto></subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</entrada>" + "</web:consultarPosicaoConsolidadaNovo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String f(String paramString1, String paramString2, String paramString3) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarDadosFundos>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<codigoFundo></codigoFundo>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataReferencia></dataReferencia>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</entrada>" + "</web:consultarDadosFundos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fuv a() {
    try {
      String str = a(this.a.j(), mzr.e(), mzr.f(), "", this.a.f().m());
      str = jcd.a(has.h(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
      } else {
        return null;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fuv = new fuv();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuv.setError(fvu);
      return new fuv();
    } 
    fuv fuv = fuv.a();
  }
  
  public fvy b() {
    try {
      String str = b(this.a.j(), "", this.a.f().m());
      str = jcd.a(has.h(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyn jyn = new jyn(inputStream);
          jyn.b();
          if (jyn.a() != null && !jyn.a().hasFaultError())
            hau.a().a(jyn.a()); 
          return jyn.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvy fvy = new fvy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvy.setError(fvu);
      return fvy;
    } 
    return null;
  }
  
  public fux c() {
    try {
      String str = a(this.a.j(), "", this.a.f().m());
      str = jcd.a(has.h(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyz jyz = new jyz(inputStream);
          jyz.b();
          if (jyz.a() != null && !jyz.a().hasFaultError())
            hau.a().a(jyz.a()); 
          return jyz.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fux fux = new fux();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fux.setError(fvu);
      return fux;
    } 
    return null;
  }
  
  public fwb d() {
    try {
      String str = e(this.a.j(), "", this.a.f().m());
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kaj kaj = new kaj(inputStream);
          kaj.b();
          return kaj.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fwb fwb = new fwb();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fwb.setError(fvu);
      return fwb;
    } 
    return null;
  }
  
  public ftc e() {
    try {
      String str = a(this.a.j(), this.a.f().m());
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxt jxt = new jxt(inputStream);
          jxt.b();
          return jxt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftc ftc = new ftc();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftc.setError(fvu);
      return ftc;
    } 
    return null;
  }
  
  public fwa f() {
    try {
      String str = f(this.a.j(), "", this.a.f().m());
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyv jyv = new jyv(inputStream);
          jyv.b();
          if (jyv.a() != null && !jyv.a().hasFaultError())
            hau.a().a(jyv.a()); 
          return jyv.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fwa fwa = new fwa();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fwa.setError(fvu);
      return fwa;
    } 
    return null;
  }
  
  public String g() {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield a : Lmiq;
    //   5: invokevirtual j : ()Ljava/lang/String;
    //   8: ldc ''
    //   10: aload_0
    //   11: getfield a : Lmiq;
    //   14: invokevirtual f : ()Lmir;
    //   17: invokevirtual m : ()Ljava/lang/String;
    //   20: invokespecial c : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   23: astore_1
    //   24: invokestatic h : ()Ljava/lang/String;
    //   27: aload_1
    //   28: ldc ''
    //   30: iconst_1
    //   31: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   34: astore_1
    //   35: aload_1
    //   36: ifnull -> 179
    //   39: aload_1
    //   40: ldc 'UTF-8'
    //   42: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    //   45: astore_3
    //   46: new java/io/BufferedReader
    //   49: dup
    //   50: new java/io/InputStreamReader
    //   53: dup
    //   54: aload_3
    //   55: invokespecial <init> : (Ljava/io/InputStream;)V
    //   58: invokespecial <init> : (Ljava/io/Reader;)V
    //   61: astore #4
    //   63: ldc ''
    //   65: astore_1
    //   66: aload #4
    //   68: invokevirtual readLine : ()Ljava/lang/String;
    //   71: astore_2
    //   72: aload_2
    //   73: ifnull -> 100
    //   76: new java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial <init> : ()V
    //   83: aload_1
    //   84: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_2
    //   88: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual toString : ()Ljava/lang/String;
    //   94: astore_2
    //   95: aload_2
    //   96: astore_1
    //   97: goto -> 66
    //   100: aload #4
    //   102: invokevirtual close : ()V
    //   105: aload_1
    //   106: ldc_w '<saldoDisponivel>'
    //   109: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   112: astore_1
    //   113: aload_1
    //   114: arraylength
    //   115: iconst_1
    //   116: if_icmple -> 175
    //   119: aload_1
    //   120: iconst_1
    //   121: aaload
    //   122: ldc_w '</saldoDisponivel>'
    //   125: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   128: iconst_0
    //   129: aaload
    //   130: astore_1
    //   131: aload_3
    //   132: invokevirtual close : ()V
    //   135: aload_1
    //   136: areturn
    //   137: astore_2
    //   138: ldc_w 'Error'
    //   141: aload_2
    //   142: invokevirtual getMessage : ()Ljava/lang/String;
    //   145: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   148: pop
    //   149: goto -> 105
    //   152: astore_1
    //   153: aload_3
    //   154: invokevirtual close : ()V
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: ldc_w 'Error'
    //   163: aload_1
    //   164: invokevirtual getMessage : ()Ljava/lang/String;
    //   167: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   170: pop
    //   171: ldc_w 'Hash validation error'
    //   174: areturn
    //   175: aload_3
    //   176: invokevirtual close : ()V
    //   179: ldc ''
    //   181: areturn
    // Exception table:
    //   from	to	target	type
    //   0	35	159	java/lang/Exception
    //   39	46	159	java/lang/Exception
    //   46	63	152	finally
    //   66	72	137	java/io/IOException
    //   66	72	152	finally
    //   76	95	137	java/io/IOException
    //   76	95	152	finally
    //   100	105	137	java/io/IOException
    //   100	105	152	finally
    //   105	131	152	finally
    //   131	135	159	java/lang/Exception
    //   138	149	152	finally
    //   153	159	159	java/lang/Exception
    //   175	179	159	java/lang/Exception
  }
  
  public String h() {
    String str = null;
    try {
      String str1 = d(this.a.j(), "", this.a.f().m());
      String str2 = jcd.a(has.h(), str1, "", true);
      str1 = str;
      if (str2 != null) {
        String[] arrayOfString = str2.split("<valorDisponivel>");
        str1 = str;
        if (arrayOfString.length > 1)
          str1 = arrayOfString[1].split("</valorDisponivel>")[0]; 
      } 
      return str1;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return "Hash validation error";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
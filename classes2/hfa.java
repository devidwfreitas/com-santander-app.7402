import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import java.util.Vector;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class hfa extends hbm {
  public String a() {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    String str3 = this.a.i();
    List<Conta> list = this.a.f().q().a();
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:consultarDepositosProgramados>").append("<consultaDepositoProgramadoRequest>").append("<connUuid>").append(str3).append("</connUuid>").append("<hash>").append("").append("</hash>").append("<tokenSessao>").append(str1).append("</tokenSessao>").append("<tokenTransacao>").append(str2).append("</tokenTransacao>");
    for (Conta conta : list)
      stringBuilder.append("<contas>").append("<agencia>").append(conta.getAgencia()).append("</agencia>").append("<autentEletronic>").append("</autentEletronic>").append("<banco>").append("</banco>").append("<conta>").append(conta.getCuenta()).append("</conta>").append("</contas>"); 
    stringBuilder.append("</consultaDepositoProgramadoRequest>").append("</web:consultarDepositosProgramados>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  public String a(fuu paramfuu) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    String str3 = this.a.i();
    Vector<fuu> vector = new Vector();
    vector.add(paramfuu);
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:consultarDepositosProgramados>").append("<consultaDepositoProgramadoRequest>").append("<connUuid>").append(str3).append("</connUuid>").append("<hash>").append("").append("</hash>").append("<tokenSessao>").append(str1).append("</tokenSessao>").append("<tokenTransacao>").append(str2).append("</tokenTransacao>");
    for (fuu fuu1 : vector)
      stringBuilder.append("<contas>").append("<agencia>").append(fuu1.getAgencia()).append("</agencia>").append("<autentEletronic>").append("</autentEletronic>").append("<banco>").append("</banco>").append("<conta>").append(fuu1.getCuenta()).append("</conta>").append("</contas>"); 
    stringBuilder.append("</consultaDepositoProgramadoRequest>").append("</web:consultarDepositosProgramados>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  public String a(heq paramheq) {
    String str1 = this.a.j();
    String str2 = this.a.i();
    String str3 = this.a.f().m();
    String[] arrayOfString = paramheq.k().split("/");
    String str4 = arrayOfString[0];
    String str5 = arrayOfString[1];
    str4 = paramheq.n() + "/" + str4 + "/" + str5;
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:incluirDepositoProgramado>" + "<manutencaoDepositoProgramadoRequest>" + "<connUuid>" + str2 + "</connUuid>" + "<hash></hash>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str3 + "</tokenTransacao>" + "<dadosCredito>" + "<agencia>" + paramheq.d() + "</agencia>" + "<banco>0033</banco>" + "<conta>" + paramheq.g() + "</conta>" + "</dadosCredito>" + "<dadosDebito>" + "<agencia>" + paramheq.c() + "</agencia>" + "<banco>0033</banco>" + "<conta>" + paramheq.f() + "</conta>" + "</dadosDebito>" + "<dataProximaTransf>" + str4 + "</dataProximaTransf>" + "<numeroDia>" + paramheq.n() + "</numeroDia>" + "<qtdeVezesTransf>" + paramheq.r() + "</qtdeVezesTransf>" + "<valorTransfer>" + paramheq.s().replace(".", "").replace(",", "") + "</valorTransfer>" + "<indicadorNovaPoupanca>" + paramheq.v() + "</indicadorNovaPoupanca>" + "</manutencaoDepositoProgramadoRequest>" + "</web:incluirDepositoProgramado>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public String a(String paramString) {
    paramString = this.a.j();
    String str1 = this.a.f().m();
    String str2 = this.a.i();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarValorMinimoDepositoProgramado>" + "<consultaValorMinimoDepositoRequest>" + " <hash>" + "" + "</hash>" + "<connUuid>" + str2 + "</connUuid>" + "<tokenSessao>" + paramString + "</tokenSessao>" + "<tokenTransacao>" + str1 + "</tokenTransacao>" + "</consultaValorMinimoDepositoRequest>" + "</web:consultarValorMinimoDepositoProgramado>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public hem b(heq paramheq) {
    try {
      String str = a(paramheq);
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          heu heu = new heu(inputStream);
          heu.b();
          return heu.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      hem hem = new hem();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      hem.setError(fvu);
      return hem;
    } 
    return null;
  }
  
  public hen b() {
    try {
      String str = a();
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          hew hew = new hew(inputStream);
          hew.b();
          return hew.a();
        } finally {
          inputStream.close();
        } 
      } 
      return null;
    } catch (InvalidKeyException invalidKeyException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
    
    } catch (NoSuchPaddingException noSuchPaddingException) {
    
    } catch (IllegalBlockSizeException illegalBlockSizeException) {
    
    } catch (BadPaddingException badPaddingException) {}
    Log.e("Error", badPaddingException.getMessage());
    return null;
  }
  
  public hen b(fuu paramfuu) {
    try {
      String str = a(paramfuu);
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          hew hew = new hew(inputStream);
          hew.b();
          return hew.a();
        } finally {
          inputStream.close();
        } 
      } 
      return null;
    } catch (InvalidKeyException invalidKeyException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
    
    } catch (NoSuchPaddingException noSuchPaddingException) {
    
    } catch (IllegalBlockSizeException illegalBlockSizeException) {
    
    } catch (BadPaddingException badPaddingException) {}
    Log.e("Error", badPaddingException.toString());
    return null;
  }
  
  public heo c() {
    try {
      String str = a("");
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          hey hey = new hey(inputStream);
          hey.b();
          this.a.f().i(hey.a().e());
          return hey.a();
        } finally {
          inputStream.close();
        } 
      } 
      return null;
    } catch (InvalidKeyException invalidKeyException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
    
    } catch (NoSuchPaddingException noSuchPaddingException) {
    
    } catch (IllegalBlockSizeException illegalBlockSizeException) {
    
    } catch (BadPaddingException badPaddingException) {}
    Log.e("Error", badPaddingException.getMessage());
    return null;
  }
  
  public String c(heq paramheq) {
    String str1 = this.a.j();
    String str2 = this.a.i();
    String[] arrayOfString = paramheq.k().split("/");
    String str3 = arrayOfString[0];
    String str4 = arrayOfString[1];
    str3 = paramheq.n() + "/" + str3 + "/" + str4;
    str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:alterarDepositoProgramado>" + "<web:manutencaoDepositoProgramadoRequest>" + "<connUuid>" + str2 + "</connUuid>" + "<hash>" + "" + "</hash>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "<dadosCredito>" + "<agencia>" + paramheq.d() + "</agencia>" + "<banco></banco>" + "<conta>" + paramheq.g() + "</conta>" + "</dadosCredito>" + "<dadosDebito>" + "<agencia>" + paramheq.c() + "</agencia>" + "<banco></banco>" + "<conta>" + paramheq.f() + "</conta>" + "</dadosDebito>" + "<dataProximaTransf>" + str3 + "</dataProximaTransf>" + "<numeroDia>" + paramheq.n() + "</numeroDia>" + "<qtdeVezesTransf>" + paramheq.r() + "</qtdeVezesTransf>" + "<sequenciaTransfer>" + paramheq.q() + "</sequenciaTransfer>" + "<valorTransfer>" + paramheq.s().replace(".", "") + "</valorTransfer>" + "<indicadorNovaPoupanca></indicadorNovaPoupanca>" + "</web:manutencaoDepositoProgramadoRequest>" + "</web:alterarDepositoProgramado>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public hem d(heq paramheq) {
    try {
      String str = c(paramheq);
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          heu heu = new heu(inputStream);
          heu.b();
          return heu.a();
        } finally {
          inputStream.close();
        } 
      } 
      return null;
    } catch (InvalidKeyException invalidKeyException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
    
    } catch (NoSuchPaddingException noSuchPaddingException) {
    
    } catch (IllegalBlockSizeException illegalBlockSizeException) {
    
    } catch (BadPaddingException badPaddingException) {}
    Log.e("Error", badPaddingException.getMessage());
    return null;
  }
  
  public String e(heq paramheq) {
    String str1 = this.a.j();
    String str2 = this.a.i();
    String str3 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:excluirDepositoProgramado>" + "<web:manutencaoDepositoProgramadoRequest>" + "<connUuid>" + str2 + "</connUuid>" + "<tokenTransacao>" + str3 + "</tokenTransacao>" + "<hash>" + "" + "</hash>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<dadosCredito>" + "<agencia>" + paramheq.d() + "</agencia>" + "<banco></banco>" + "<conta>" + paramheq.g() + "</conta>" + "</dadosCredito>" + "<dadosDebito>" + "<agencia>" + paramheq.c() + "</agencia>" + "<banco></banco>" + "<conta>" + paramheq.f() + "</conta>" + "</dadosDebito>" + "<dataProximaTransf>" + paramheq.l() + "</dataProximaTransf>" + "<numeroDia>" + "</numeroDia>" + "<qtdeVezesTransf>" + "</qtdeVezesTransf>" + "<sequenciaTransfer>" + paramheq.q() + "</sequenciaTransfer>" + "<valorTransfer>" + "</valorTransfer>" + "<indicadorNovaPoupanca></indicadorNovaPoupanca>" + "</web:manutencaoDepositoProgramadoRequest>" + "</web:excluirDepositoProgramado>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public hem f(heq paramheq) {
    try {
      String str = e(paramheq);
      str = jcd.a(has.N(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          heu heu = new heu(inputStream);
          heu.b();
          return heu.a();
        } finally {
          inputStream.close();
        } 
      } 
      return null;
    } catch (InvalidKeyException invalidKeyException) {
    
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
    
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
    
    } catch (NoSuchPaddingException noSuchPaddingException) {
    
    } catch (IllegalBlockSizeException illegalBlockSizeException) {
    
    } catch (BadPaddingException badPaddingException) {}
    Log.e("Error", badPaddingException.getMessage());
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
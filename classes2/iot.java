import android.util.Log;
import java.io.InputStream;
import java.util.ArrayList;

public class iot extends hbm {
  private String b() {
    String str1 = this.a.j();
    this.a.f().m();
    String str2 = this.a.i();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "  <soapenv:Header/>" + " <soapenv:Body>" + "<web:consultarPaises>" + "<ConsultaPaisRequest>" + "<connUuid>" + str2 + "</connUuid>" + "<hash>" + "</hash>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "</ConsultaPaisRequest>" + "</web:consultarPaises>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString) {
    String str1 = this.a.j();
    this.a.f().m();
    String str2 = this.a.i();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarViagensVigentes>" + "<consultaViagemExteriorRequest>" + "<connUuid>" + str2 + "</connUuid>" + "<hash>" + "</hash>" + "<listaViagemExterior>" + "<codigoPais>0</codigoPais>" + "<dataFim>0</dataFim>" + "<dataInicio>0</dataInicio>" + "<nomePais>0</nomePais>" + "</listaViagemExterior>" + "<numeroCartao>" + paramString + "</numeroCartao>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "</consultaViagemExteriorRequest>" + "</web:consultarViagensVigentes>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c() {
    String str1 = this.a.j();
    this.a.f().m();
    String str2 = this.a.i();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarCartoesInternacionais>" + "<ConsultaCartaoInternacionalRequest>" + "<codigoAgenciaContrato>0010</codigoAgenciaContrato>" + "<codigoAgenciaRechamada>?</codigoAgenciaRechamada>" + "<codigoEntidade></codigoEntidade>" + "<codigoFuncao>07</codigoFuncao>" + "<connUuid>" + str2 + "</connUuid>" + "<hash>" + "</hash>" + "<indicadorRechamada>?</indicadorRechamada>" + "<numBenefContratoRechamada></numBenefContratoRechamada>" + "<numCartaoRechamada>?</numCartaoRechamada>" + "<numeroCliente>?</numeroCliente>" + "<numeroContrato>660000776700</numeroContrato>" + "<numeroContratoRechamada>?</numeroContratoRechamada>" + "<tipoEntrada>2</tipoEntrada>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "</ConsultaCartaoInternacionalRequest>" + "</web:consultarCartoesInternacionais>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(String paramString) {
    String str1 = paramString.substring(0, 4);
    String str2 = paramString.substring(5, 7);
    paramString = paramString.substring(8, 10);
    return paramString + "/" + str2 + "/" + str1;
  }
  
  private String d(ArrayList<inx> paramArrayList, String paramString) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:incluirViagemExterior>").append("<incluirViagemExteriorRequest>").append("<connUuid>").append(this.a.i()).append("</connUuid>").append("<hash>").append("</hash>");
    for (inx inx : paramArrayList)
      stringBuilder.append("<listaViagemExterior>").append("<dataInicio>").append(inx.c()).append("</dataInicio>").append("<dataFim>").append(inx.d()).append("</dataFim>").append("<codigoPais>").append(inx.a()).append("</codigoPais>").append("</listaViagemExterior>"); 
    stringBuilder.append("<numeroCartao>").append(paramString).append("</numeroCartao>").append("<tokenSessao>").append(str1).append("</tokenSessao>").append("<tokenTransacao>").append(str2).append("</tokenTransacao>").append("</incluirViagemExteriorRequest>").append("</web:incluirViagemExterior>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String e(ArrayList<ioi> paramArrayList, String paramString) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    String str3 = this.a.i();
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:alterarViagemExterior>").append("<alterarViagemExteriorRequest>").append("<connUuid>").append(str3).append("</connUuid>").append("<hash>").append("</hash>");
    for (ioi ioi : paramArrayList)
      stringBuilder.append("<listaViagemExterior>").append("<codigoPais>").append(ioi.a().toString()).append("</codigoPais>").append("<dataFim>").append(ioi.g().toString()).append("</dataFim>").append("<dataInicio>").append(ioi.f().toString()).append("</dataInicio>").append("<nomePais>").append(ioi.b().toString()).append("</nomePais>").append("</listaViagemExterior>"); 
    stringBuilder.append("<numeroCartao>").append(paramString).append("</numeroCartao>").append("<tokenSessao>").append(str1).append("</tokenSessao>").append("<tokenTransacao>").append(str2).append("</tokenTransacao>").append("</alterarViagemExteriorRequest>").append("</web:alterarViagemExterior>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String f(ArrayList<ioi> paramArrayList, String paramString) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    String str3 = this.a.i();
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:excluirViagemExterior>").append("<excluirViagemExteriorRequest>").append("<connUuid>").append(str3).append("</connUuid>").append("<hash>").append("</hash>");
    for (ioi ioi : paramArrayList)
      stringBuilder.append("<listaViagemExterior>").append("<codigoPais>").append(ioi.a().toString()).append("</codigoPais>").append("<dataFim>").append(ioi.d().toString()).append("</dataFim>").append("<dataInicio>").append(ioi.c().toString()).append("</dataInicio>").append("<nomePais>").append(ioi.b().toString()).append("</nomePais>").append("</listaViagemExterior>"); 
    stringBuilder.append("<numeroCartao>").append(paramString).append("</numeroCartao>").append("<tokenSessao>").append(str1).append("</tokenSessao>").append("<tokenTransacao>").append(str2).append("</tokenTransacao>").append("</excluirViagemExteriorRequest>").append("</web:excluirViagemExterior>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  public iog a(ArrayList<inx> paramArrayList, String paramString) {
    try {
      String str = d(paramArrayList, paramString);
      str = jcd.a(has.M(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          ion ion = new ion(inputStream);
          ion.b();
          return ion.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      iog iog = new iog();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      iog.setError(fvu);
      return iog;
    } 
    return null;
  }
  
  public ioh a(String paramString) {
    try {
      paramString = b(paramString);
      paramString = jcd.a(has.M(), paramString, "", true);
      if (paramString != null) {
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          iop iop = new iop(inputStream);
          iop.b();
          return iop.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ioh ioh = new ioh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ioh.setError(fvu);
      return ioh;
    } 
    return null;
  }
  
  public iok a() {
    try {
      String str = b();
      str = jcd.a(has.M(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          ior ior = new ior(inputStream);
          ior.b();
          return ior.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      iok iok = new iok();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      iok.setError(fvu);
      return iok;
    } 
    return null;
  }
  
  public ioh b(ArrayList<ioi> paramArrayList, String paramString) {
    try {
      String str = e(paramArrayList, paramString);
      str = jcd.a(has.M(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          iol iol = new iol(inputStream);
          iol.b();
          return iol.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ioh ioh = new ioh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ioh.setError(fvu);
      return ioh;
    } 
    return null;
  }
  
  public ioh c(ArrayList<ioi> paramArrayList, String paramString) {
    try {
      String str = f(paramArrayList, paramString);
      str = jcd.a(has.M(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          iol iol = new iol(inputStream);
          iol.b();
          return iol.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ioh ioh = new ioh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ioh.setError(fvu);
      return ioh;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
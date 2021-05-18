import android.util.Log;
import java.io.InputStream;
import java.util.List;

public class fyz extends hbm {
  private String a(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:loginComplementarCadastro>" + "<arg0>" + "<contaPreferencial>" + paramString3 + "</contaPreferencial>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:loginComplementarCadastro>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:cadastrarPasso3>" + "<ContaPreferencialRequest>" + "<contaPreferencial>" + paramString3 + "</contaPreferencial>" + "<senha>" + paramString4 + "</senha>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</ContaPreferencialRequest>" + "</web:cadastrarPasso3>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(List<fyg> paramList, String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:cadastrarPasso2>").append("<arg0>").append("<connUuid>").append(this.a.i()).append("</connUuid>").append("<dataHoraOcorrencia>").append(paramString1).append("</dataHoraOcorrencia>");
    for (fyg fyg : paramList)
      stringBuilder.append("<listaRespostaQuiz>").append("<codigoPergunta>").append(fyg.a()).append("</codigoPergunta>").append("<indRespostaCriptografada>").append(fyg.b()).append("</indRespostaCriptografada>").append("<resposta>").append(fyg.c()).append("</resposta>").append("<tamanhoResposta>").append(fyg.d()).append("</tamanhoResposta>").append("<formatoResposta>").append(fyg.g()).append("</formatoResposta>").append("</listaRespostaQuiz>"); 
    stringBuilder.append("<tokenSessao>").append(paramString2).append("</tokenSessao>").append("<tokenTransacao>").append(paramString3).append("</tokenTransacao>").append("</arg0>").append("</web:cadastrarPasso2>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String b(fym paramfym) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:resetPwdEsqueciSenhaPasso4>" + "<ResetPassWordRequest>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<identificacaoUsuario>" + paramfym.d() + "</identificacaoUsuario>" + "<newPwd>" + paramfym.a() + "</newPwd>" + "<newPwdConf>" + paramfym.b() + "</newPwdConf>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</ResetPassWordRequest>" + "</web:resetPwdEsqueciSenhaPasso4>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:recadastrarSenhaPasso3>" + "<ResetPassWordDtoRequest>" + "<newPwd>" + paramString3 + "</newPwd>" + "<newPwdConf>" + paramString4 + "</newPwdConf>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</ResetPassWordDtoRequest>" + "</web:recadastrarSenhaPasso3>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(List<fyg> paramList, String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:recadastrarSenhaPasso2>").append("<arg0>").append("<connUuid>").append(this.a.i()).append("</connUuid>").append("<dataHoraOcorrencia>").append(paramString1).append("</dataHoraOcorrencia>");
    for (fyg fyg : paramList)
      stringBuilder.append("<listaRespostaQuiz>").append("<codigoPergunta>").append(fyg.a()).append("</codigoPergunta>").append("<indRespostaCriptografada>").append(fyg.b()).append("</indRespostaCriptografada>").append("<resposta>").append(fyg.c()).append("</resposta>").append("<tamanhoResposta>").append(fyg.d()).append("</tamanhoResposta>").append("<formatoResposta>").append(fyg.g()).append("</formatoResposta>").append("</listaRespostaQuiz>"); 
    stringBuilder.append("<tokenSessao>").append(paramString2).append("</tokenSessao>").append("<tokenTransacao>").append(paramString3).append("</tokenTransacao>").append("</arg0>").append("</web:recadastrarSenhaPasso2>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String c(List<fyg> paramList, String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = (new StringBuilder()).append("<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">").append("<soapenv:Header/>").append("<soapenv:Body>").append("<web:obterQuizEsqueciSenhaPasso2>").append("<arg0>").append("<connUuid>").append(this.a.i()).append("</connUuid>").append("<dataHoraOcorrencia>").append(paramString1).append("</dataHoraOcorrencia>");
    for (fyg fyg : paramList)
      stringBuilder.append("<listaRespostaQuiz>").append("<codigoPergunta>").append(fyg.a()).append("</codigoPergunta>").append("<indRespostaCriptografada>").append(fyg.b()).append("</indRespostaCriptografada>").append("<resposta>").append(fyg.c()).append("</resposta>").append("<tamanhoResposta>").append(fyg.d()).append("</tamanhoResposta>").append("</listaRespostaQuiz>"); 
    stringBuilder.append("<tokenSessao>").append(paramString2).append("</tokenSessao>").append("<tokenTransacao>").append(paramString3).append("</tokenTransacao>").append("</arg0>").append("</web:obterQuizEsqueciSenhaPasso2>").append("</soapenv:Body>").append("</soapenv:Envelope>");
    return stringBuilder.toString();
  }
  
  private String d() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:obterQuizEsqueciSenhaPasso1>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<dataHash>" + "" + "</dataHash>" + "<requestId>" + "" + "</requestId>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</arg0>" + "</web:obterQuizEsqueciSenhaPasso1>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d(String paramString1, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:cadastrarPasso1>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:cadastrarPasso1>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String e() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:isUsuarioNMSEsqueciSenhaPasso3>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<dataHash>" + "" + "</dataHash>" + "<requestId>" + "" + "</requestId>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</arg0>" + "</web:isUsuarioNMSEsqueciSenhaPasso3>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String e(String paramString1, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:recadastrarSenhaPasso1>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:recadastrarSenhaPasso1>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String f() {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:getUsuarioSN>" + "<arg0>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + this.a.j() + "</tokenSessao>" + "<tokenTransacao>" + this.a.f().m() + "</tokenTransacao>" + "</arg0>" + "</web:getUsuarioSN>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fyf a() {
    try {
      String str = d(this.a.j(), this.a.f().m());
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyp fyp = new fyp(inputStream);
          fyp.b();
          return fyp.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fyf fyf = new fyf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyf.setError(fvu);
      return fyf;
    } 
    return null;
  }
  
  public fyh a(List<fyg> paramList, String paramString) {
    try {
      String str = a(paramList, paramString, this.a.j(), this.a.f().m());
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyr fyr = new fyr(inputStream);
          fyr.b();
          return fyr.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyh fyh = new fyh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyh.setError(fvu);
      return fyh;
    } 
    return null;
  }
  
  public fyi a(String paramString1, String paramString2) {
    try {
      paramString1 = a(this.a.j(), this.a.f().m(), paramString1, paramString2);
      paramString1 = jcd.a(has.H(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          fyt fyt = new fyt(inputStream);
          fyt.b();
          return fyt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyi fyi = new fyi();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyi.setError(fvu);
      return fyi;
    } 
    return null;
  }
  
  public fyj a(String paramString) {
    try {
      paramString = a(this.a.j(), this.a.f().m(), paramString);
      paramString = jcd.a(has.G(), paramString, "", true);
      if (paramString != null) {
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          fyv fyv = new fyv(inputStream);
          fyv.b();
          return fyv.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyj fyj = new fyj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyj.setError(fvu);
      return fyj;
    } 
    return null;
  }
  
  public fyo a(fym paramfym) {
    try {
      String str = b(paramfym);
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyx fyx = new fyx(inputStream);
          fyx.b();
          return fyx.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyo fyo = new fyo();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyo.setError(fvu);
      return fyo;
    } 
    return null;
  }
  
  public jqm a(jqk paramjqk) {
    try {
      String str = d();
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
  
  public fyf b() {
    try {
      String str = e(this.a.j(), this.a.f().m());
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyp fyp = new fyp(inputStream);
          fyp.b();
          return fyp.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyf fyf = new fyf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyf.setError(fvu);
      return fyf;
    } 
    return null;
  }
  
  public fyh b(List<fyg> paramList, String paramString) {
    try {
      String str = b(paramList, paramString, this.a.j(), this.a.f().m());
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyr fyr = new fyr(inputStream);
          fyr.b();
          return fyr.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyh fyh = new fyh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyh.setError(fvu);
      return fyh;
    } 
    return null;
  }
  
  public fyi b(String paramString1, String paramString2) {
    try {
      paramString1 = b(this.a.j(), this.a.f().m(), paramString1, paramString2);
      paramString1 = jcd.a(has.H(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          fyt fyt = new fyt(inputStream);
          fyt.b();
          return fyt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyi fyi = new fyi();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyi.setError(fvu);
      return fyi;
    } 
    return null;
  }
  
  public jqm b(jqk paramjqk) {
    try {
      String str = e();
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
  
  public fyo c() {
    try {
      String str = f();
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          fyx fyx = new fyx(inputStream);
          fyx.b();
          return fyx.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fyo fyo = new fyo();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fyo.setError(fvu);
      return fyo;
    } 
    return null;
  }
  
  public jqm c(List<fyg> paramList, String paramString) {
    try {
      String str = c(paramList, paramString, this.a.j(), this.a.f().m());
      str = jcd.a(has.H(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jqs jqs = new jqs(inputStream);
          jqs.b();
          return jqs.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      jqm jqm = new jqm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      jqm.setError(fvu);
      return jqm;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fyz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
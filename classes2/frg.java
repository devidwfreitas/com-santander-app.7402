import android.util.Log;
import java.io.InputStream;

public class frg extends hbm {
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:detalhar>" + "<arg0>" + "<dataSolicitada>" + paramString1 + "</dataSolicitada>" + "<horaSolicitada>" + paramString2 + "</horaSolicitada>" + "<numProtocoloAgendamento>" + paramString3 + "</numProtocoloAgendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString4 + "</tokenSessao>" + "<tokenTransacao>" + paramString5 + "</tokenTransacao>" + "</arg0>" + "</web:detalhar>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listar>" + "<arg0>" + "<agencia>" + paramString1 + "</agencia>" + "<contaCorrente>" + paramString2 + "</contaCorrente>" + "<dataFinal>" + paramString3 + "</dataFinal>" + "<dataInicial>" + paramString4 + "</dataInicial>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString5 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "</arg0>" + "</web:listar>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarAgendamentos>" + "<request>" + "<codAgencia>" + paramString1 + "</codAgencia>" + "<codBanco>" + paramString2 + "</codBanco>" + "<codConta>" + paramString3 + "</codConta>" + "<dataFim>" + paramString4 + "</dataFim>" + "<dataInicial>" + paramString5 + "</dataInicial>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString6 + "</tokenSessao>" + "<tokenTransacao>" + paramString7 + "</tokenTransacao>" + "</request>" + "</web:consultarAgendamentos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:cancelar>" + "<arg0>" + "<dataSolicitada>" + paramString1 + "</dataSolicitada>" + "<horaSolicitada>" + paramString2 + "</horaSolicitada>" + "<numProtocoloAgendamento>" + paramString3 + "</numProtocoloAgendamento>" + "<indiceAgendamento>" + paramString4 + "</indiceAgendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString5 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "</arg0>" + "</web:cancelar>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public frb a(String paramString1, String paramString2, String paramString3) {
    try {
      paramString1 = a(paramString1, paramString2, paramString3, this.a.j(), this.a.f().m());
      paramString1 = jcd.a(has.L(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          frm frm = new frm(inputStream);
          frm.b();
          return frm.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      frb frb = new frb();
      (new fvu()).setFaultstring(exception.getMessage());
      frb.e(exception.getMessage());
      return frb;
    } 
    return null;
  }
  
  public frc a(String paramString1, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = a(paramString3, mzr.h(), paramString4, paramString1, paramString2, this.a.j(), this.a.f().m());
      paramString1 = jcd.a(has.c(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          frh frh = new frh(inputStream);
          frh.b();
          return frh.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      frc frc = new frc();
      (new fvu()).setFaultstring(exception.getMessage());
      frc.setMensagemErro(exception.getMessage());
      return frc;
    } 
    return null;
  }
  
  public frc b(String paramString1, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = a(paramString3, paramString4, paramString1, paramString2, this.a.j(), this.a.f().m());
      paramString1 = jcd.a(has.L(), paramString1, "", false);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          fro fro = new fro(inputStream);
          fro.b();
          return fro.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      frc frc = new frc();
      (new fvu()).setFaultstring(exception.getMessage());
      frc.setMensagemErro(exception.getMessage());
      return frc;
    } 
    return null;
  }
  
  public frb c(String paramString1, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = b(paramString1, paramString2, paramString3, paramString4, this.a.j(), this.a.f().m());
      paramString1 = jcd.a(has.L(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          frk frk = new frk(inputStream);
          frk.b();
          return frk.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      frb frb = new frb();
      frb.e(exception.getMessage());
      return frb;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
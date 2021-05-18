import android.util.Log;
import java.io.InputStream;

public class hbl extends hbm {
  private String a(String paramString1, fvh paramfvh, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagamentoTituloCartorio>" + "<arg0>" + "<agencia>" + paramfvh.o() + "</agencia>" + "<agendamento>" + paramfvh.p() + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvh.q() + "</conta>" + "<dataContabil>" + paramfvh.r() + "</dataContabil>" + "<identificadorTituloSeltec>" + paramfvh.w() + "</identificadorTituloSeltec>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:pagamentoTituloCartorio>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, fvi paramfvi, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagtoConcessionaria>" + "<arg0>" + "<agencia>" + paramfvi.a() + "</agencia>" + "<agendamento>" + paramfvi.b() + "</agendamento>" + "<codBarra>" + paramfvi.c() + "</codBarra>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvi.d() + "</conta>" + "<dataContabil>" + paramfvi.e() + "</dataContabil>" + "<descricao>" + paramfvi.f() + "</descricao>" + "<dtAgendamento>" + paramfvi.g() + "</dtAgendamento>" + "<formaPagamento>" + paramfvi.h() + "</formaPagamento>" + "<mensagemAEA>" + paramfvi.i() + "</mensagemAEA>" + "<numCartaoCredito>" + paramfvi.j() + "</numCartaoCredito>" + "<numContratoCartao>" + paramfvi.k() + "</numContratoCartao>" + "<numOper>" + paramfvi.l() + "</numOper>" + "<produto>" + paramfvi.m() + "</produto>" + "<subProduto>" + paramfvi.n() + "</subProduto>" + "<tipoConta>" + paramfvi.o() + "</tipoConta>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "<valor>" + paramfvi.q() + "</valor>" + "<VALPRIN>" + paramfvi.p() + "</VALPRIN>" + "<vencto>" + paramfvi.r() + "</vencto>" + "</arg0>" + "</web:pagtoConcessionaria>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, fvk paramfvk, String paramString2) {
    try {
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagarTitulo>" + "<arg0>" + "<agencia>" + paramfvk.d() + "</agencia>" + "<agendamento>" + paramfvk.e() + "</agendamento>" + "<bancoDestino>" + paramfvk.f() + "</bancoDestino>" + "<codigoBarras>" + paramfvk.g() + "</codigoBarras>" + "<codigoCaptura>" + paramfvk.h() + "</codigoCaptura>" + "<codigoCedente>" + paramfvk.i() + "</codigoCedente>" + "<codigoMoeda>" + paramfvk.j() + "</codigoMoeda>" + "<codigoNossoNum>" + paramfvk.k() + "</codigoNossoNum>" + "<codigoSeuNum>" + paramfvk.l() + "</codigoSeuNum>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvk.m() + "</conta>" + "<dataContabil>" + paramfvk.n() + "</dataContabil>" + "<dataPagamento>" + paramfvk.s() + "</dataPagamento>" + "<dataVencimento>" + paramfvk.p() + "</dataVencimento>" + "<docCedente>" + paramfvk.q() + "</docCedente>" + "<docSacado>" + paramfvk.r() + "</docSacado>" + "<dtAgendamento>" + paramfvk.s() + "</dtAgendamento>" + "<formaPagamento>" + paramfvk.t() + "</formaPagamento>" + "<horarioLimitePagto>" + paramfvk.v() + "</horarioLimitePagto>" + "<indCartorio>" + paramfvk.w() + "</indCartorio>" + "<indicaBoletoVR>" + paramfvk.y() + "</indicaBoletoVR>" + "<indPagtoCheque>" + paramfvk.x() + "</indPagtoCheque>" + "<mensagemAEA>" + paramfvk.z() + "</mensagemAEA>" + "<nomeCedente>" + paramfvk.B() + "</nomeCedente>" + "<nomeSacado>" + paramfvk.A() + "</nomeSacado>" + "<numCartaoCredito>" + paramfvk.C() + "</numCartaoCredito>" + "<numContratoCartao>" + paramfvk.D() + "</numContratoCartao>" + "<numOper>" + paramfvk.E() + "</numOper>" + "<produto>" + paramfvk.F() + "</produto>" + "<subProduto>" + paramfvk.G() + "</subProduto>" + "<tipoConta>" + paramfvk.H() + "</tipoConta>" + "<tipoPessoaCedente>" + paramfvk.I() + "</tipoPessoaCedente>" + "<tipoPessoaSacado>" + paramfvk.J() + "</tipoPessoaSacado>" + "<tipoTitulo>" + paramfvk.K() + "</tipoTitulo>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "<valorAbatimento>" + paramfvk.N() + "</valorAbatimento>" + "<valorDesconto>" + paramfvk.O() + "</valorDesconto>" + "<valorIOF>1</valorIOF>" + "<valorJuros>" + paramfvk.Q() + "</valorJuros>" + "<valorMulta>" + paramfvk.R() + "</valorMulta>" + "<valorRecebido>" + naj.u(paramfvk.U()) + "</valorRecebido>" + "<valorRefBoleto>" + paramfvk.T() + "</valorRefBoleto>" + "<valorTituloRegistrado>" + paramfvk.V() + "</valorTituloRegistrado>" + "<valorTotalRecebido>" + paramfvk.W() + "</valorTotalRecebido>" + "<nomeTipoCartao>" + paramfvk.b() + "</nomeTipoCartao>" + "</arg0>" + "</web:pagarTitulo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  private String a(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:fatorVencimento>" + "<entrada>" + "<codigoBarras>" + paramString1 + "</codigoBarras>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<indicadorDeLeitura>" + paramString2 + "</indicadorDeLeitura>" + "<tokenSessao>" + paramString3 + "</tokenSessao>" + "</entrada>" + "</web:fatorVencimento>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, fvh paramfvh, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagamentoTituloCartorioImp>" + "<arg0>" + "<agencia>" + paramfvh.o() + "</agencia>" + "<agendamento>" + paramfvh.p() + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvh.q() + "</conta>" + "<dataContabil>" + paramfvh.r() + "</dataContabil>" + "<identificadorTituloSeltec>" + paramfvh.w() + "</identificadorTituloSeltec>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:pagamentoTituloCartorioImp>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, fvi paramfvi, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagtoConcessionariaImp>" + "<arg0>" + "<agencia>" + paramfvi.a() + "</agencia>" + "<agendamento>" + paramfvi.b() + "</agendamento>" + "<codBarra>" + paramfvi.c() + "</codBarra>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvi.d() + "</conta>" + "<dataContabil>" + paramfvi.e() + "</dataContabil>" + "<descricao>" + paramfvi.f() + "</descricao>" + "<dtAgendamento>" + paramfvi.g() + "</dtAgendamento>" + "<formaPagamento>" + paramfvi.h() + "</formaPagamento>" + "<mensagemAEA>" + paramfvi.i() + "</mensagemAEA>" + "<numCartaoCredito>" + paramfvi.j() + "</numCartaoCredito>" + "<numContratoCartao>" + paramfvi.k() + "</numContratoCartao>" + "<numOper>" + paramfvi.l() + "</numOper>" + "<produto>" + paramfvi.m() + "</produto>" + "<subProduto>" + paramfvi.n() + "</subProduto>" + "<tipoConta>" + paramfvi.o() + "</tipoConta>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "<valor>" + paramfvi.q() + "</valor>" + "<VALPRIN>" + paramfvi.p() + "</VALPRIN>" + "<vencto>" + paramfvi.r() + "</vencto>" + "</arg0>" + "</web:pagtoConcessionariaImp>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, fvk paramfvk, String paramString2) {
    try {
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarPagtoTitulo>" + "<arg0>" + "<agencia>" + paramfvk.d() + "</agencia>" + "<agendamento>" + paramfvk.e() + "</agendamento>" + "<bancoDestino>" + paramfvk.f() + "</bancoDestino>" + "<codigoBarras>" + paramfvk.g() + "</codigoBarras>" + "<codigoCaptura>" + paramfvk.h() + "</codigoCaptura>" + "<codigoCedente>" + paramfvk.i() + "</codigoCedente>" + "<codigoMoeda>" + paramfvk.j() + "</codigoMoeda>" + "<codigoNossoNum>" + paramfvk.k() + "</codigoNossoNum>" + "<codigoSeuNum>" + paramfvk.l() + "</codigoSeuNum>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramfvk.m() + "</conta>" + "<dataContabil>" + paramfvk.n() + "</dataContabil>" + "<dataPagamento>" + paramfvk.o() + "</dataPagamento>" + "<dataVencimento>" + paramfvk.p() + "</dataVencimento>" + "<docCedente>" + paramfvk.q() + "</docCedente>" + "<docSacado>" + paramfvk.r() + "</docSacado>" + "<dtAgendamento>" + paramfvk.s() + "</dtAgendamento>" + "<formaPagamento>" + paramfvk.t() + "</formaPagamento>" + "<horarioLimitePagto>" + paramfvk.v() + "</horarioLimitePagto>" + "<indCartorio>" + paramfvk.w() + "</indCartorio>" + "<indicaBoletoVR>" + paramfvk.y() + "</indicaBoletoVR>" + "<indPagtoCheque>" + paramfvk.x() + "</indPagtoCheque>" + "<mensagemAEA>" + paramfvk.z() + "</mensagemAEA>" + "<nomeCedente>" + paramfvk.A() + "</nomeCedente>" + "<nomeSacado>" + paramfvk.B() + "</nomeSacado>" + "<numCartaoCredito>" + paramfvk.C() + "</numCartaoCredito>" + "<numContratoCartao>" + paramfvk.D() + "</numContratoCartao>" + "<numOper>" + paramfvk.E() + "</numOper>" + "<produto>" + paramfvk.F() + "</produto>" + "<subProduto>" + paramfvk.G() + "</subProduto>" + "<tipoConta>" + paramfvk.H() + "</tipoConta>" + "<tipoPessoaCedente>" + paramfvk.I() + "</tipoPessoaCedente>" + "<tipoPessoaSacado>" + paramfvk.J() + "</tipoPessoaSacado>" + "<tipoTitulo>" + paramfvk.K() + "</tipoTitulo>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "<valorAbatimento>" + paramfvk.N() + "</valorAbatimento>" + "<valorDesconto>" + paramfvk.O() + "</valorDesconto>" + "<valorIOF>" + paramfvk.P() + "</valorIOF>" + "<valorJuros>" + paramfvk.Q() + "</valorJuros>" + "<valorMulta>" + paramfvk.R() + "</valorMulta>" + "<valorRecebido>" + String.format("%012d", new Object[] { Integer.valueOf(naj.u(paramfvk.U())) }) + "</valorRecebido>" + "<valorRefBoleto>" + paramfvk.T() + "</valorRefBoleto>" + "<valorTitulo>" + paramfvk.U() + "</valorTitulo>" + "<valorTituloRegistrado>" + paramfvk.V() + "</valorTituloRegistrado>" + "<valorTotalRecebido>" + paramfvk.W() + "</valorTotalRecebido>" + "</arg0>" + "</web:confirmarPagtoTitulo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public fuz a(String paramString1, String paramString2) {
    try {
      paramString1 = a(paramString1, paramString2, this.a.j());
      paramString1 = jcd.a(has.B(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jzd jzd = new jzd(inputStream);
          jzd.b();
          return jzd.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuz fuz = new fuz();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuz.setError(fvu);
      return fuz;
    } 
    return null;
  }
  
  public fvh a(fvh paramfvh) {
    try {
      String str = a(this.a.j(), paramfvh, this.a.f().m());
      str = jcd.a(has.o(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzx jzx = new jzx(inputStream);
          jzx.b();
          this.a.f().i(jzx.a().A());
          return jzx.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvh fvh1 = new fvh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvh1.setError(fvu);
      return fvh1;
    } 
    return null;
  }
  
  public fvi a(fvi paramfvi) {
    try {
      String str = a(this.a.j(), paramfvi, this.a.f().m());
      str = jcd.a(has.m(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kab kab = new kab(inputStream);
          kab.b();
          this.a.f().i(kab.a().t());
          return kab.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      fvi fvi1 = new fvi();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvi1.setError(fvu);
      return fvi1;
    } 
    return null;
  }
  
  public fvk a(fvk paramfvk) {
    try {
      String str = a(this.a.j(), paramfvk, this.a.f().m());
      str = jcd.a(has.n(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kad kad = new kad(inputStream);
          kad.b();
          this.a.f().i(kad.a().M());
          return kad.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvk fvk1 = new fvk();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvk1.setError(fvu);
      return fvk1;
    } 
    return null;
  }
  
  public fvh b(fvh paramfvh) {
    try {
      String str = b(this.a.j(), paramfvh, this.a.f().m());
      str = jcd.a(has.o(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzx jzx = new jzx(inputStream);
          jzx.b();
          return jzx.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvh fvh1 = new fvh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvh1.setError(fvu);
      return fvh1;
    } 
    return null;
  }
  
  public fvj b(fvi paramfvi) {
    try {
      String str = b(this.a.j(), paramfvi, this.a.f().m());
      str = jcd.a(has.m(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzz jzz = new jzz(inputStream);
          jzz.b();
          return jzz.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvj fvj = new fvj();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvj.setError(fvu);
      return fvj;
    } 
    return null;
  }
  
  public fvk b(fvk paramfvk) {
    try {
      String str = b(this.a.j(), paramfvk, this.a.f().m());
      str = jcd.a(has.n(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kad kad = new kad(inputStream);
          kad.b();
          return kad.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvk fvk1 = new fvk();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvk1.setError(fvu);
      return fvk1;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
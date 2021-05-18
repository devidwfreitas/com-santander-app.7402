import android.util.Log;
import java.io.InputStream;

public class hbh extends hbm {
  private String a(String paramString1, String paramString2) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidadaPoupancaNovo>" + "<arg0>" + "<agencia>" + str1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</arg0>" + "</web:consultarPosicaoConsolidadaPoupancaNovo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    String str = this.a.j();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPerfilInvestidor>" + "<ApiClienteRequest>" + "<agencia>" + paramString1 + "</agencia>" + "<codigoBanco>" + paramString5 + "</codigoBanco>" + "<codigoSubProduto>" + paramString3 + "</codigoSubProduto>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<numeroConta>" + paramString2 + "</numeroConta>" + "<tokenSessao>" + str + "</tokenSessao>" + "<tokenTransacao>" + str + "</tokenTransacao>" + "<valor>" + paramString4 + "</valor>" + "</ApiClienteRequest>" + "</web:consultarPerfilInvestidor>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarDadosFundosRetroativos>" + "<entrada>" + "<agencia>" + paramString2 + "</agencia>" + "<codigoFundo></codigoFundo>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<dataReferencia>" + paramString5 + "</dataReferencia>" + "<penumper>" + paramString4 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "</entrada>" + "</web:consultarDadosFundosRetroativos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(fsy paramfsy, ftl paramftl, boolean paramBoolean, String paramString1, String paramString2, String paramString3) {
    String str2 = this.a.j();
    if (paramBoolean) {
      String str4 = "true";
      String str5 = this.a.f().m();
      paramString1 = nak.t(paramString1);
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacaoPoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftl.c().a() + "</agenciaDestino>" + "<agenciaOrigem>" + paramString2 + "</agenciaOrigem>" + "<agendamento>" + d(str4) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftl.c().d() + "</contaDestino>" + "<contaOrigem>" + paramString3 + "</contaOrigem>" + "<dataContabil>" + paramfsy.f() + "</dataContabil>" + "<dtAgendamento>" + paramString1 + "</dtAgendamento>" + "<numOper>" + paramfsy.b() + "</numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valor>" + paramfsy.k() + "</valor>" + "</arg0>" + "</web:confirmarAplicacaoPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str1 = "false";
    String str3 = this.a.f().m();
    paramString1 = nak.t(paramString1);
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacaoPoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftl.c().a() + "</agenciaDestino>" + "<agenciaOrigem>" + paramString2 + "</agenciaOrigem>" + "<agendamento>" + d(str1) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftl.c().d() + "</contaDestino>" + "<contaOrigem>" + paramString3 + "</contaOrigem>" + "<dataContabil>" + paramfsy.f() + "</dataContabil>" + "<dtAgendamento>" + paramString1 + "</dtAgendamento>" + "<numOper>" + paramfsy.b() + "</numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str3 + "</tokenTransacao>" + "<valor>" + paramfsy.k() + "</valor>" + "</arg0>" + "</web:confirmarAplicacaoPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(fsy paramfsy, boolean paramBoolean, String paramString1, String paramString2, String paramString3) {
    String str2 = this.a.j();
    if (paramBoolean) {
      String str4 = "true";
      String str5 = this.a.f().m();
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacaoNovaPoupanca>" + "<arg0>" + "<agenciaDestino></agenciaDestino>" + "<agenciaOrigem>" + paramString2 + "</agenciaOrigem>" + "<agendamento>" + d(str4) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino></contaDestino>" + "<contaOrigem>" + paramString3 + "</contaOrigem>" + "<dataContabil>" + paramfsy.f() + "</dataContabil>" + "<dtAgendamento>" + paramString1 + "</dtAgendamento>" + "<numOper>" + paramfsy.b() + "</numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valor>" + paramfsy.k() + "</valor>" + "</arg0>" + "</web:confirmarAplicacaoNovaPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str1 = "false";
    String str3 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacaoNovaPoupanca>" + "<arg0>" + "<agenciaDestino></agenciaDestino>" + "<agenciaOrigem>" + paramString2 + "</agenciaOrigem>" + "<agendamento>" + d(str1) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino></contaDestino>" + "<contaOrigem>" + paramString3 + "</contaOrigem>" + "<dataContabil>" + paramfsy.f() + "</dataContabil>" + "<dtAgendamento>" + paramString1 + "</dtAgendamento>" + "<numOper>" + paramfsy.b() + "</numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str3 + "</tokenTransacao>" + "<valor>" + paramfsy.k() + "</valor>" + "</arg0>" + "</web:confirmarAplicacaoNovaPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(ftk paramftk) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    String str3 = this.a.j();
    String str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarDadosResgate>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<agendamento>false</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataAgendamento></dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil></dataContabil>" + "<listaEmail></listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper></penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto></produto>" + "<subProduto>" + paramftk.a() + "</subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str3 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "</entrada>" + "</web:consultarDadosResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(ftr paramftr) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:resgatarPoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftr.i() + "</agenciaDestino>" + "<agenciaOrigem>" + paramftr.g() + "</agenciaOrigem>" + "<agendamento>" + paramftr.d() + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftr.j() + "</contaDestino>" + "<contaOrigem>" + paramftr.h() + "</contaOrigem>" + "<dataContabil></dataContabil>" + "<dtAgendamento>" + paramftr.e() + "</dtAgendamento>" + "<numOper>" + paramftr.f() + "</numOper>" + "<produto></produto>" + "<resgateTotal>" + paramftr.c() + "</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe>PP</tipoContaDe>" + "<tipoContaPara>CC</tipoContaPara>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str2 + "</tokenTransacao>" + "<valor>" + paramftr.b() + "</valor>" + "</arg0>" + "</web:resgatarPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(ftr paramftr, fts paramfts) {
    String str1 = this.a.j();
    String str2 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarResgatePoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftr.i() + "</agenciaDestino>" + "<agenciaOrigem>" + paramfts.l() + "</agenciaOrigem>" + "<agendamento>" + paramftr.d() + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftr.j() + "</contaDestino>" + "<contaOrigem>" + paramfts.o() + "</contaOrigem>" + "<dataContabil>" + paramfts.p() + "</dataContabil>" + "<dtAgendamento>" + paramftr.e() + "</dtAgendamento>" + "<numOper>" + paramfts.d() + "</numOper>" + "<produto>" + paramfts.s() + "</produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd>" + paramfts.u() + "</subProd>" + "<tipoContaDe>PP</tipoContaDe>" + "<tipoContaPara>CC</tipoContaPara>" + "<tokenSessao>" + str1 + "</tokenSessao>" + "<tokenTransacao>" + str2 + "</tokenTransacao>" + "<valor>" + paramfts.x() + "</valor>" + "</arg0>" + "</web:confirmarResgatePoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(ftw paramftw) {
    String str2 = mzr.e();
    String str3 = mzr.f();
    String str4 = this.a.j();
    String str5 = this.a.f().m();
    if (paramftw.k()) {
      String str = "<valorParcial>" + naj.a(paramftw.h(), 15) + "</valorParcial>";
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularResgate>" + "<entrada>" + "<agencia>" + str2 + "</agencia>" + "<agendamento>" + paramftw.b() + "</agendamento>" + "<autenticacaoBancaria/>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str3 + "</conta>" + "<dataAgendamento>" + paramftw.a() + "</dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil>" + paramftw.c() + "</dataContabil>" + "<listaEmail><email></email></listaEmail>" + "<numeroOperacao>" + paramftw.d() + "</numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto>" + paramftw.e() + "</produto>" + "<subProduto>" + paramftw.f() + "</subProduto>" + "<taxaCDI>" + paramftw.g() + "</taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + str + "<valorResgate></valorResgate>" + "<valorTotal>" + paramftw.l() + "</valorTotal>" + "</entrada>" + "</web:simularResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str1 = "";
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularResgate>" + "<entrada>" + "<agencia>" + str2 + "</agencia>" + "<agendamento>" + paramftw.b() + "</agendamento>" + "<autenticacaoBancaria/>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str3 + "</conta>" + "<dataAgendamento>" + paramftw.a() + "</dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil>" + paramftw.c() + "</dataContabil>" + "<listaEmail><email></email></listaEmail>" + "<numeroOperacao>" + paramftw.d() + "</numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto>" + paramftw.e() + "</produto>" + "<subProduto>" + paramftw.f() + "</subProduto>" + "<taxaCDI>" + paramftw.g() + "</taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + str1 + "<valorResgate></valorResgate>" + "<valorTotal>" + paramftw.l() + "</valorTotal>" + "</entrada>" + "</web:simularResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(ftw paramftw, ftv paramftv) {
    String str2 = mzr.e();
    String str3 = mzr.f();
    String str4 = this.a.j();
    String str5 = this.a.f().m();
    if (paramftw.k()) {
      String str = "<valorParcial>" + naj.a(paramftw.h(), 15) + "</valorParcial>";
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarResgate>" + "<entrada>" + "<agencia>" + str2 + "</agencia>" + "<agendamento>" + paramftw.b() + "</agendamento>" + "<autenticacaoBancaria>" + paramftv.o() + "</autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str3 + "</conta>" + "<dataAgendamento>" + paramftw.a() + "</dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil>" + paramftv.b() + "</dataContabil>" + "<listaEmail><email></email></listaEmail>" + "<numeroOperacao>" + paramftw.d() + "</numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo>" + paramftv.d() + "</prazo>" + "<produto>" + paramftv.e() + "</produto>" + "<subProduto>" + paramftw.f() + "</subProduto>" + "<taxaCDI>" + paramftv.f() + "</taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado>" + paramftv.g() + "</valorAplicado>" + "<valorInformado></valorInformado>" + str + "<valorResgate></valorResgate>" + "<valorTotal>" + paramftw.l() + "</valorTotal>" + "</entrada>" + "</web:confirmarResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str1 = "";
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarResgate>" + "<entrada>" + "<agencia>" + str2 + "</agencia>" + "<agendamento>" + paramftw.b() + "</agendamento>" + "<autenticacaoBancaria>" + paramftv.o() + "</autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str3 + "</conta>" + "<dataAgendamento>" + paramftw.a() + "</dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil>" + paramftv.b() + "</dataContabil>" + "<listaEmail><email></email></listaEmail>" + "<numeroOperacao>" + paramftw.d() + "</numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo>" + paramftv.d() + "</prazo>" + "<produto>" + paramftv.e() + "</produto>" + "<subProduto>" + paramftw.f() + "</subProduto>" + "<taxaCDI>" + paramftv.f() + "</taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado>" + paramftv.g() + "</valorAplicado>" + "<valorInformado></valorInformado>" + str1 + "<valorResgate></valorResgate>" + "<valorTotal>" + paramftw.l() + "</valorTotal>" + "</entrada>" + "</web:confirmarResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(fuu paramfuu, ftt paramftt, boolean paramBoolean, String paramString1, ftq paramftq, String paramString2, String paramString3, String paramString4, String paramString5, ftd paramftd) {
    String str4 = paramfuu.getAgencia();
    if (paramBoolean) {
      String str7 = "true";
      str1 = paramfuu.getCuenta();
      str2 = paramftq.a();
      String str8 = this.a.j();
      String str9 = this.a.f().m();
      return "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacao>" + "<entrada>" + "<agencia>" + str4 + "</agencia>" + "<agendamento>" + str7 + "</agendamento>" + "<autenticacaoBancaria>" + paramftt.j() + "</autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str1 + "</conta>" + "<dataContabil>" + paramftd.g() + "</dataContabil>" + "<dataAgendamento>" + paramString1 + "</dataAgendamento>" + "<numeroOperacao/>" + "<penumper>" + "" + "</penumper>" + "<percentual>" + paramString4 + "</percentual>" + "<prazo>" + paramString2 + "</prazo>" + "<produto/>" + "<subProduto>" + str2 + "</subProduto>" + "<taxaCDI>" + paramString4 + "</taxaCDI>" + "<tipoInteresse>" + paramString5 + "</tipoInteresse>" + "<tokenSessao>" + str8 + "</tokenSessao>" + "<tokenTransacao>" + str9 + "</tokenTransacao>" + "<valorAplicado>" + paramString3 + "</valorAplicado>" + "</entrada>" + "</web:confirmarAplicacao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str3 = "false";
    String str1 = str1.getCuenta();
    String str2 = str2.a();
    String str5 = this.a.j();
    String str6 = this.a.f().m();
    return "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:confirmarAplicacao>" + "<entrada>" + "<agencia>" + str4 + "</agencia>" + "<agendamento>" + str3 + "</agendamento>" + "<autenticacaoBancaria>" + paramftt.j() + "</autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str1 + "</conta>" + "<dataContabil>" + paramftd.g() + "</dataContabil>" + "<dataAgendamento>" + paramString1 + "</dataAgendamento>" + "<numeroOperacao/>" + "<penumper>" + "" + "</penumper>" + "<percentual>" + paramString4 + "</percentual>" + "<prazo>" + paramString2 + "</prazo>" + "<produto/>" + "<subProduto>" + str2 + "</subProduto>" + "<taxaCDI>" + paramString4 + "</taxaCDI>" + "<tipoInteresse>" + paramString5 + "</tipoInteresse>" + "<tokenSessao>" + str5 + "</tokenSessao>" + "<tokenTransacao>" + str6 + "</tokenTransacao>" + "<valorAplicado>" + paramString3 + "</valorAplicado>" + "</entrada>" + "</web:confirmarAplicacao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(fuu paramfuu, boolean paramBoolean, String paramString1, ftq paramftq, String paramString2, String paramString3, String paramString4) {
    String str3;
    String str4 = paramfuu.getAgencia();
    if (paramBoolean) {
      str3 = "true";
    } else {
      str3 = "false";
    } 
    String str1 = paramfuu.getCuenta();
    if (!paramBoolean)
      paramString1 = ""; 
    String str2 = paramftq.a();
    String str5 = this.a.j();
    String str6 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:simularAplicacao>" + "<entrada>" + "<agencia>" + str4 + "</agencia>" + "<agendamento>" + str3 + "</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str1 + "</conta>" + "<dataAgendamento>" + paramString1 + "</dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil>" + paramString4 + "</dataContabil>" + "<listaEmail><email></email></listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo>" + paramString2 + "</prazo>" + "<produto></produto>" + "<subProduto>" + str2 + "</subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str5 + "</tokenSessao>" + "<tokenTransacao>" + str6 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado>" + paramString3 + "</valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "</entrada>" + "</web:simularAplicacao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, ftl paramftl, boolean paramBoolean, String paramString2) {
    String str1;
    String str2 = mzr.e();
    String str3 = mzr.f();
    String str4 = this.a.j();
    if (paramBoolean) {
      str1 = "true";
    } else {
      str1 = "false";
    } 
    if (paramBoolean) {
      paramString2 = nak.t(paramString2);
      String str = this.a.f().m();
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:aplicarPoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftl.c().a() + "</agenciaDestino>" + "<agenciaOrigem>" + str2 + "</agenciaOrigem>" + "<agendamento>" + d(str1) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftl.c().d() + "</contaDestino>" + "<contaOrigem>" + str3 + "</contaOrigem>" + "<dataContabil></dataContabil>" + "<dtAgendamento>" + paramString2 + "</dtAgendamento>" + "<numOper></numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str + "</tokenTransacao>" + "<valor>" + paramString1 + "</valor>" + "</arg0>" + "</web:aplicarPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    paramString2 = "";
    String str5 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:aplicarPoupanca>" + "<arg0>" + "<agenciaDestino>" + paramftl.c().a() + "</agenciaDestino>" + "<agenciaOrigem>" + str2 + "</agenciaOrigem>" + "<agendamento>" + d(str1) + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino>" + paramftl.c().d() + "</contaDestino>" + "<contaOrigem>" + str3 + "</contaOrigem>" + "<dataContabil></dataContabil>" + "<dtAgendamento>" + paramString2 + "</dtAgendamento>" + "<numOper></numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str4 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valor>" + paramString1 + "</valor>" + "</arg0>" + "</web:aplicarPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4) {
    String str = this.a.j();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:obterAceite>" + "<AceiteRequest>" + "<agencia>" + paramString1 + "</agencia>" + "<codigoBanco>" + paramString4 + "</codigoBanco>" + "<codigoSubProduto>" + paramString3 + "</codigoSubProduto>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<numeroConta>" + paramString2 + "</numeroConta>" + "<tokenSessao>" + str + "</tokenSessao>" + "<tokenTransacao>" + str + "</tokenTransacao>" + "</AceiteRequest>" + "</web:obterAceite>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarFundos>" + "<entrada>" + "<agencia>" + paramString5 + "</agencia>" + "<codigoFundo>" + paramString4 + "</codigoFundo>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString6 + "</conta>" + "<dataReferencia></dataReferencia>" + "<penumper>" + paramString2 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</entrada>" + "</web:consultarFundos>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4) {
    String str2 = this.a.j();
    if (paramBoolean) {
      String str4 = "true";
      String str5 = this.a.f().m();
      return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:aplicarNovaPoupanca>" + "<arg0>" + "<agenciaDestino></agenciaDestino>" + "<agenciaOrigem>" + paramString3 + "</agenciaOrigem>" + "<agendamento>" + str4 + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino></contaDestino>" + "<contaOrigem>" + paramString4 + "</contaOrigem>" + "<dataContabil></dataContabil>" + "<dtAgendamento>" + paramString2 + "</dtAgendamento>" + "<numOper></numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str5 + "</tokenTransacao>" + "<valor>" + paramString1 + "</valor>" + "</arg0>" + "</web:aplicarNovaPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    } 
    String str1 = "false";
    String str3 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:aplicarNovaPoupanca>" + "<arg0>" + "<agenciaDestino></agenciaDestino>" + "<agenciaOrigem>" + paramString3 + "</agenciaOrigem>" + "<agendamento>" + str1 + "</agendamento>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contaDestino></contaDestino>" + "<contaOrigem>" + paramString4 + "</contaOrigem>" + "<dataContabil></dataContabil>" + "<dtAgendamento>" + paramString2 + "</dtAgendamento>" + "<numOper></numOper>" + "<produto></produto>" + "<resgateTotal>false</resgateTotal>" + "<subProd></subProd>" + "<tipoContaDe></tipoContaDe>" + "<tipoContaPara></tipoContaPara>" + "<tokenSessao>" + str2 + "</tokenSessao>" + "<tokenTransacao>" + str3 + "</tokenTransacao>" + "<valor>" + paramString1 + "</valor>" + "</arg0>" + "</web:aplicarNovaPoupanca>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(String paramString) {
    String str1 = mzr.e();
    String str2 = mzr.f();
    String str3 = this.a.j();
    String str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarDadosAplicacao>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<agendamento>false</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataAgendamento></dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil></dataContabil>" + "<listaEmail></listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto></produto>" + "<subProduto>" + paramString + "</subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str3 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "</entrada>" + "</web:consultarDadosAplicacao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String e() {
    String str1 = mzr.e();
    String str2 = mzr.f();
    String str3 = this.a.j();
    String str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listarProdutosAplicacao>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<agendamento>false</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataAgendamento></dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil></dataContabil>" + "<listaEmail></listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper>" + "" + "</penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto>" + "" + "</produto>" + "<subProduto></subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str3 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "</entrada>" + "</web:listarProdutosAplicacao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String f() {
    String str1 = mzr.e();
    String str2 = mzr.f();
    String str3 = this.a.j();
    String str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPosicaoConsolidadaPoupancaNovo>" + "<arg0>" + "<agencia>" + str1 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<tokenSessao>" + str3 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "</arg0>" + "</web:consultarPosicaoConsolidadaPoupancaNovo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String g() {
    String str1 = mzr.e();
    String str2 = mzr.f();
    String str3 = this.a.j();
    String str4 = this.a.f().m();
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listarProdutosResgate>" + "<entrada>" + "<agencia>" + str1 + "</agencia>" + "<agendamento>false</agendamento>" + "<autenticacaoBancaria></autenticacaoBancaria>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + str2 + "</conta>" + "<dataAgendamento></dataAgendamento>" + "<dataAplicacao></dataAplicacao>" + "<dataContabil></dataContabil>" + "<listaEmail></listaEmail>" + "<numeroOperacao></numeroOperacao>" + "<penumper></penumper>" + "<percentual></percentual>" + "<prazo></prazo>" + "<produto></produto>" + "<subProduto></subProduto>" + "<taxaCDI></taxaCDI>" + "<tipoAplicacao></tipoAplicacao>" + "<tipoInteresse></tipoInteresse>" + "<tokenSessao>" + str3 + "</tokenSessao>" + "<tokenTransacao>" + str4 + "</tokenTransacao>" + "<valorAgendado></valorAgendado>" + "<valorAplicado></valorAplicado>" + "<valorInformado></valorInformado>" + "<valorParcial></valorParcial>" + "<valorResgate></valorResgate>" + "<valorTotal></valorTotal>" + "</entrada>" + "</web:listarProdutosResgate>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public fsy a(fsy paramfsy, ftl paramftl, boolean paramBoolean, String paramString1, String paramString2, String paramString3) {
    try {
      String str = b(paramfsy, paramftl, paramBoolean, paramString1, paramString2, paramString3);
      str = jcd.a(has.k(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxl jxl = new jxl(inputStream);
          jxl.b();
          return jxl.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fsy fsy1 = new fsy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fsy1.setError(fvu);
      return fsy1;
    } 
    return null;
  }
  
  public fsy a(fsy paramfsy, boolean paramBoolean, String paramString1, String paramString2, String paramString3) {
    try {
      String str = b(paramfsy, paramBoolean, paramString1, paramString2, paramString3);
      str = jcd.a(has.k(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxl jxl = new jxl(inputStream);
          jxl.b();
          return jxl.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fsy fsy1 = new fsy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fsy1.setError(fvu);
      return fsy1;
    } 
    return null;
  }
  
  public fsy a(String paramString1, ftl paramftl, boolean paramBoolean, String paramString2) {
    try {
      paramString1 = b(paramString1, paramftl, paramBoolean, paramString2);
      paramString1 = jcd.a(has.k(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxl jxl = new jxl(inputStream);
          jxl.b();
          this.a.f().i(jxl.a().p());
          return jxl.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fsy fsy = new fsy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fsy.setError(fvu);
      return fsy;
    } 
    return null;
  }
  
  public fsy a(String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = b(paramString1, paramBoolean, paramString2, paramString3, paramString4);
      paramString1 = jcd.a(has.k(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxl jxl = new jxl(inputStream);
          jxl.b();
          this.a.f().i(jxl.a().p());
          return jxl.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fsy fsy = new fsy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fsy.setError(fvu);
      return fsy;
    } 
    return null;
  }
  
  public fsz a(fuu paramfuu, ftt paramftt, boolean paramBoolean, String paramString1, ftq paramftq, String paramString2, String paramString3, String paramString4, String paramString5, ftd paramftd) {
    try {
      String str = b(paramfuu, paramftt, paramBoolean, paramString1, paramftq, paramString2, paramString3, paramString4, paramString5, paramftd);
      str = jcd.a(has.k(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxn jxn = new jxn(inputStream);
          jxn.b();
          return jxn.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fsz fsz = new fsz();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fsz.setError(fvu);
      return fsz;
    } 
    return null;
  }
  
  public ftd a(String paramString) {
    try {
      paramString = c(paramString);
      paramString = jcd.a(has.k(), paramString, "", true);
      if (paramString != null) {
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          jxp jxp = new jxp(inputStream);
          jxp.b();
          return jxp.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftd ftd = new ftd();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftd.setError(fvu);
      return ftd;
    } 
    return null;
  }
  
  public ftf a(ftk paramftk) {
    try {
      String str = b(paramftk);
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxr jxr = new jxr(inputStream);
          jxr.b();
          return jxr.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftf ftf = new ftf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftf.setError(fvu);
      return ftf;
    } 
    return null;
  }
  
  public ftm a() {
    try {
      String str = e();
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxv jxv = new jxv(inputStream);
          jxv.b();
          return jxv.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      ftm ftm = new ftm();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftm.setError(fvu);
      return ftm;
    } 
    return null;
  }
  
  public fto a(String paramString1, String paramString2, String paramString3) {
    String str = mzr.h();
    try {
      paramString1 = b(paramString1, paramString2, paramString3, str);
      paramString1 = jcd.a(has.C(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jxz jxz = new jxz(inputStream);
          jxz.b();
          this.a.f().i(jxz.a().t());
          return jxz.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fto fto = new fto();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fto.setError(fvu);
      return fto;
    } 
    return null;
  }
  
  public ftp a(String paramString1, String paramString2, String paramString3, String paramString4) {
    try {
      paramString1 = a(paramString1, paramString2, paramString3, paramString4, mzr.h());
      paramString1 = jcd.a(has.C(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jyb jyb = new jyb(inputStream);
          jyb.b();
          this.a.f().i(jyb.a().d());
          return jyb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftp ftp = new ftp();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftp.setError(fvu);
      return ftp;
    } 
    return null;
  }
  
  public fts a(ftr paramftr) {
    try {
      paramftr.c("");
      String str = b(paramftr);
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyd jyd = new jyd(inputStream);
          jyd.b();
          this.a.f().i(jyd.a().z());
          return jyd.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fts fts = new fts();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fts.setError(fvu);
      return fts;
    } 
    return null;
  }
  
  public fts a(ftr paramftr, fts paramfts) {
    try {
      String str = b(paramftr, paramfts);
      str = jcd.a(has.k(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyd jyd = new jyd(inputStream);
          jyd.b();
          return jyd.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      paramfts = new fts();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      paramfts.setError(fvu);
      return paramfts;
    } 
    return null;
  }
  
  public ftt a(fuu paramfuu, boolean paramBoolean, String paramString1, ftq paramftq, String paramString2, String paramString3, String paramString4) {
    try {
      String str = b(paramfuu, paramBoolean, paramString1, paramftq, paramString2, paramString3, paramString4);
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyf jyf = new jyf(inputStream);
          jyf.b();
          this.a.f().i(jyf.a().k());
          return jyf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftt ftt = new ftt();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftt.setError(fvu);
      return ftt;
    } 
    return null;
  }
  
  public ftv a(ftw paramftw) {
    try {
      String str = b(paramftw);
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyh jyh = new jyh(inputStream);
          jyh.b();
          this.a.f().i(jyh.a().q());
          return jyh.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftv ftv = new ftv();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftv.setError(fvu);
      return ftv;
    } 
    return null;
  }
  
  public ftv a(ftw paramftw, ftv paramftv) {
    try {
      String str = b(paramftw, paramftv);
      str = jcd.a(has.k(), str, "", false);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jyh jyh = new jyh(inputStream);
          jyh.b();
          return jyh.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      paramftv = new ftv();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      paramftv.setError(fvu);
      return paramftv;
    } 
    return null;
  }
  
  public ftc b() {
    try {
      String str = a(this.a.j(), this.a.f().m());
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxt jxt = new jxt(inputStream);
          jxt.b();
          if (jxt.a() != null && !jxt.a().hasFaultError())
            hau.a().a(jxt.a()); 
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
  
  public ftg b(String paramString1, String paramString2, String paramString3) {
    try {
      paramString1 = b(this.a.j(), "", this.a.f().m(), paramString1, paramString2, paramString3);
      paramString1 = jcd.a(has.k(), paramString1, "", true);
      if (paramString1 != null) {
        InputStream inputStream = c(paramString1, "UTF-8");
        try {
          jyt jyt = new jyt(inputStream);
          jyt.b();
          return jyt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftg ftg = new ftg();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftg.setError(fvu);
      return ftg;
    } 
    return null;
  }
  
  public fwa b(String paramString) {
    try {
      paramString = a(this.a.j(), mzr.e(), mzr.f(), "", paramString, this.a.f().m());
      paramString = jcd.a(has.k(), paramString, "", true);
      if (paramString != null) {
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          jyv jyv = new jyv(inputStream);
          jyv.b();
          if (jyv.a() != null && !jyv.a().hasFaultError()) {
            fwa fwa = jyv.a();
            if (hau.a().k() != null && hau.a().k().b() != null && hau.a().k().b().size() > 0)
              fwa.b(hau.a().k().b()); 
            hau.a().a(jyv.a());
          } 
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
  
  public ftc c() {
    try {
      String str = f();
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
  
  public ftn d() {
    try {
      String str = g();
      str = jcd.a(has.k(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jxx jxx = new jxx(inputStream);
          jxx.b();
          return jxx.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ftn ftn = new ftn();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftn.setError(fvu);
      return ftn;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
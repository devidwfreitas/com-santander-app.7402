import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.io.InputStream;

public class hbc extends hbm {
  private naf b = new naf();
  
  private String a(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>" + "<soapenv:Body>" + "<web:validarCartao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<idSessao>" + paramString1 + "</idSessao>" + "<posicaoCartao>" + paramString3 + "</posicaoCartao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</web:validarCartao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, gig paramgig, String paramString5) {
    new naf();
    StringBuilder stringBuilder = new StringBuilder();
    int i;
    for (i = 0; i < paramgig.k().size(); i++) {
      stringBuilder.append("<listaParcela>");
      stringBuilder.append("<idParcela>").append(((gif)paramgig.k().get(i)).a()).append("</idParcela>");
      stringBuilder.append("<parcelaSelecionada>").append(((gif)paramgig.k().get(i)).b()).append("</parcelaSelecionada>");
      stringBuilder.append("<quantidadeParcela>").append(((gif)paramgig.k().get(i)).c()).append("</quantidadeParcela>");
      stringBuilder.append("<valorParcela>").append(((gif)paramgig.k().get(i)).d()).append("</valorParcela>");
      stringBuilder.append("</listaParcela>");
    } 
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:faturaParcelarImp>" + "<request>" + "<agencia>" + paramgig.a() + "</agencia>" + "<agendamento>false</agendamento>" + "<bandeiraCartao>" + "</bandeiraCartao>" + "<codigoMoeda>" + "</codigoMoeda>" + "<codigoRetorno>0</codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramgig.d() + "</contratoCartao>" + "<cotacaoDolar>" + paramgig.e() + "</cotacaoDolar>" + "<custoEfetivoTotal>" + paramgig.f() + "</custoEfetivoTotal>" + "<dataAgendamento>" + "</dataAgendamento>" + "<dataContabil>" + "</dataContabil>" + "<dataEfetivacao>" + "</dataEfetivacao>" + "<dataPagamento>" + "</dataPagamento>" + "<dataVencimento>" + paramgig.g() + "</dataVencimento>" + "<despesaConvertida>" + paramgig.h() + "</despesaConvertida>" + "<despesaReal>" + paramgig.i() + "</despesaReal>" + "<entidade>" + paramString4 + "</entidade>" + "<horaEfetivacao>" + "</horaEfetivacao>" + "<indicadorElegibilidade>" + "</indicadorElegibilidade>" + "<listaEmail></listaEmail>" + stringBuilder.toString() + "<mensagemRetorno>" + paramgig.l() + "</mensagemRetorno>" + "<nomeClientePlasticoCartao>" + "</nomeClientePlasticoCartao>" + "<numeroCartao>" + paramgig.m() + "</numeroCartao>" + "<numReferDocumento>" + "</numReferDocumento>" + "<penumper>" + paramString3 + "</penumper>" + "<produto>" + "</produto>" + "<referOper>" + paramgig.n() + "</referOper>" + "<subProduto>" + "</subProduto>" + "<taxaJuros>" + paramgig.o() + "</taxaJuros>" + "<tipoFranquia>" + "</tipoFranquia>" + "<tipoParcelamento>" + paramgig.p() + "</tipoParcelamento>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString5 + "</tokenTransacao>" + "<valorFinanciado>" + paramgig.q() + "</valorFinanciado>" + "<valorIOF>" + paramgig.r() + "</valorIOF>" + "<valorPagamento>" + paramgig.s() + "</valorPagamento>" + "<valorPagamentoMinimo>" + paramgig.t() + "</valorPagamentoMinimo>" + "<valorTarifa>" + paramgig.u() + "</valorTarifa>" + "<valorTotal>" + paramgig.v() + "</valorTotal>" + "</request>" + "</web:faturaParcelarImp>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, fvw paramfvw, ful paramful, int paramInt, String paramString6) {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < paramful.K().size(); i++) {
      stringBuilder.append("<listaParcela>");
      stringBuilder.append("<idParcela>").append(((fum)paramful.K().get(i)).a()).append("</idParcela>");
      if (i == paramInt) {
        stringBuilder.append("<parcelaSelecionada>true</parcelaSelecionada>");
      } else {
        stringBuilder.append("<parcelaSelecionada>false</parcelaSelecionada>");
      } 
      stringBuilder.append("<quantidadeParcela>").append(((fum)paramful.K().get(i)).c()).append("</quantidadeParcela>").append("<valorParcela>").append(((fum)paramful.K().get(i)).d()).append("</valorParcela>");
      stringBuilder.append("</listaParcela>");
    } 
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:faturaParcelar>" + "<request>" + "<agencia>" + paramfvw.s() + "</agencia>" + "<agendamento>false</agendamento>" + "<bandeiraCartao>" + paramful.c() + "</bandeiraCartao>" + "<codigoMoeda>" + paramful.d() + "</codigoMoeda>" + "<codigoRetorno>0</codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString2 + "</contratoCartao>" + "<cotacaoDolar>" + paramful.g() + "</cotacaoDolar>" + "<custoEfetivoTotal>" + paramful.h() + "</custoEfetivoTotal>" + "<dataAgendamento>" + paramful.i() + "</dataAgendamento>" + "<dataContabil>" + paramful.j() + "</dataContabil>" + "<dataEfetivacao>" + paramful.k() + "</dataEfetivacao>" + "<dataPagamento>" + paramful.l() + "</dataPagamento>" + "<dataVencimento>" + paramful.m() + "</dataVencimento>" + "<despesaConvertida>" + paramful.n() + "</despesaConvertida>" + "<despesaReal>" + paramful.o() + "</despesaReal>" + "<entidade>" + paramString4 + "</entidade>" + "<horaEfetivacao>" + paramful.q() + "</horaEfetivacao>" + "<indicadorElegibilidade>" + paramful.r() + "</indicadorElegibilidade>" + "<listaEmail></listaEmail>" + stringBuilder.toString() + "<mensagemRetorno>" + paramful.t() + "</mensagemRetorno>" + "<nomeClientePlasticoCartao>" + paramful.u() + "</nomeClientePlasticoCartao>" + "<numReferDocumento>" + paramful.v() + "</numReferDocumento>" + "<numeroCartao>" + paramString5 + "</numeroCartao>" + "<penumper>" + paramString3 + "</penumper>" + "<produto>" + paramful.y() + "</produto>" + "<referOper>" + paramful.z() + "</referOper>" + "<subProduto>" + paramful.A() + "</subProduto>" + "<taxaJuros>" + paramful.B() + "</taxaJuros>" + "<tipoFranquia>" + paramful.C() + "</tipoFranquia>" + "<tipoParcelamento>" + paramful.D() + "</tipoParcelamento>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "<valorFinanciado>" + paramful.E() + "</valorFinanciado>" + "<valorIOF>" + paramful.F() + "</valorIOF>" + "<valorPagamento>" + paramful.G() + "</valorPagamento>" + "<valorPagamentoMinimo>" + paramful.H() + "</valorPagamentoMinimo>" + "<valorTarifa>" + paramful.I() + "</valorTarifa>" + "<valorTotal>" + paramful.J() + "</valorTotal>" + "</request>" + "</web:faturaParcelar>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\"><soapenv:Header/>" + "<soapenv:Body>" + "<web:listarCartaoTablet>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<entidade>" + paramString5 + "</entidade>" + "<penumper>" + paramString4 + "</penumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "</request>" + "</web:listarCartaoTablet>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, fud paramfud, String paramString7, String paramString8, String paramString9) {
    String str = naj.B(paramfud.h());
    paramString8 = naj.B(paramString8);
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:faturaParcelarCalcular>" + " <request>" + "<agencia>" + paramString2 + "</agencia>" + "<agendamento>false</agendamento>" + "<bandeiraCartao></bandeiraCartao>" + "<codigoMoeda></codigoMoeda>" + "<codigoRetorno>0</codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString3 + "</contratoCartao>" + "<cotacaoDolar>" + paramfud.a() + "</cotacaoDolar>" + "<custoEfetivoTotal></custoEfetivoTotal>" + "<dataAgendamento></dataAgendamento>" + "<dataContabil></dataContabil>" + "<dataEfetivacao></dataEfetivacao>" + "<dataPagamento></dataPagamento>" + "<dataVencimento>" + paramfud.c() + "</dataVencimento>" + "<despesaConvertida>" + paramfud.d() + "</despesaConvertida>" + "<despesaReal>" + paramfud.e() + "</despesaReal>" + "<entidade>" + paramString5 + "</entidade>" + "<horaEfetivacao></horaEfetivacao>" + "<indicadorElegibilidade></indicadorElegibilidade>" + "<listaEmail></listaEmail>" + "<mensagemRetorno></mensagemRetorno>" + "<nomeClientePlasticoCartao></nomeClientePlasticoCartao>" + "<numeroCartao>" + paramString6 + "</numeroCartao>" + "<numReferDocumento></numReferDocumento>" + "<penumper>" + paramString4 + "</penumper>" + "<produto></produto>" + "<referOper>" + paramfud.f() + "</referOper>" + "<subProduto></subProduto>" + "<taxaJuros></taxaJuros>" + "<tipoFranquia></tipoFranquia>" + "<tipoParcelamento>" + paramString7 + "</tipoParcelamento>" + "<valorFinanciado></valorFinanciado>" + "<valorIOF></valorIOF>" + "<valorPagamento>" + paramString8 + "</valorPagamento>" + "<valorPagamentoMinimo>" + paramfud.g() + "</valorPagamentoMinimo>" + "<valorTarifa></valorTarifa>" + "<valorTotal>" + str + "</valorTotal>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString9 + "</tokenTransacao>" + "</request>" + "</web:faturaParcelarCalcular>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultaFaturaFechada>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString3 + "</banco>" + "<cartao>" + paramString4 + "</cartao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString5 + "</contratoCartao>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "<indicadorTitularidade>" + paramString7 + "</indicadorTitularidade>" + "</request>" + "</web:consultaFaturaFechada>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultaFaturaAberta>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString4 + "</banco>" + "<cartao>" + paramString5 + "</cartao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<contratoCartao>" + paramString6 + "</contratoCartao>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString7 + "</tokenTransacao>" + "<indicadorTitularidade>" + paramString8 + "</indicadorTitularidade>" + "</request>" + "</web:consultaFaturaAberta>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, fud paramfud, String paramString9, boolean paramBoolean) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagamentoFatura>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<agendamento>" + paramBoolean + "</agendamento>" + "<codigoRetorno>0</codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString3 + "</contratoCartao>" + "<cotacaoDolar>" + paramfud.a() + "</cotacaoDolar>" + "<dataPagamento>" + paramString7 + "</dataPagamento>" + "<dataVencimento>" + paramfud.c() + "</dataVencimento>" + "<despesaConvertida>" + paramfud.d() + "</despesaConvertida>" + "<despesaReal>" + paramfud.e() + "</despesaReal>" + "<entidade>" + paramString5 + "</entidade>" + "<horaEfetivacao></horaEfetivacao>" + "<indicadorElegibilidade></indicadorElegibilidade>" + "<listaEmail>" + "<email></email>" + "</listaEmail>" + "<listaParcela>" + "<idParcela></idParcela>" + "<parcelaSelecionada>false</parcelaSelecionada>" + "<quantidadeParcela></quantidadeParcela>" + "<valorParcela></valorParcela>" + "</listaParcela>" + "<mensagemRetorno></mensagemRetorno>" + "<nomeClientePlasticoCartao></nomeClientePlasticoCartao>" + "<numReferDocumento></numReferDocumento>" + "<numeroCartao>" + paramString6.trim() + "</numeroCartao>" + "<penumper>" + paramString4 + "</penumper>" + "<produto></produto>" + "<referOper>" + paramfud.f() + "</referOper>" + "<subProduto></subProduto>" + "<taxaJuros></taxaJuros>" + "<tipoFranquia></tipoFranquia>" + "<tipoParcelamento></tipoParcelamento>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString9 + "</tokenTransacao>" + "<valorFinanciado></valorFinanciado>" + "<valorIOF></valorIOF>" + "<valorPagamento>" + paramString8 + "</valorPagamento>" + "<valorPagamentoMinimo>" + paramfud.g() + "</valorPagamentoMinimo>" + "<valorTarifa></valorTarifa>" + "<valorTotal>" + paramfud.h() + "</valorTotal>" + "</request>" + "</web:pagamentoFatura>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:manutencaoEmailCartao>" + "<request>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<strAgenciaContrato>" + paramString2 + "</strAgenciaContrato>" + "<strBanco>" + paramString4 + "</strBanco>" + "<strNumCtrtCar>" + paramString5 + "</strNumCtrtCar>" + "<strPenumper>" + paramString3 + "</strPenumper>" + "<strProdAltair>" + paramString6 + "</strProdAltair>" + "<strSeqEnd>" + paramString8 + "</strSeqEnd>" + "<strSubProdAltair>" + paramString7 + "</strSubProdAltair>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString9 + "</tokenTransacao>" + "</request>" + "</web:manutencaoEmailCartao>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultaFaturaAnterior>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString4 + "</banco>" + "<cartao>" + paramString5 + "</cartao>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<conta>" + paramString3 + "</conta>" + "<contratoCartao>" + paramString6 + "</contratoCartao>" + "<moeda>" + paramString7 + "</moeda>" + "<numeroExtrato>" + paramString8 + "</numeroExtrato>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString9 + "</tokenTransacao>" + "<indicadorTitularidade>" + paramString10 + "</indicadorTitularidade>" + "</request>" + "</web:consultaFaturaAnterior>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listarEnderecoEmail>" + "<request>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<strPenumper>" + paramString2 + "</strPenumper>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString3 + "</tokenTransacao>" + "</request>" + "</web:listarEnderecoEmail>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:listarFaturasAnteriores>" + "<request>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<strCentro>" + paramString2 + "</strCentro>" + "<strContrato>" + paramString5 + "</strContrato>" + "<strEntidade>" + paramString3 + "</strEntidade>" + "<strNumCartao>" + paramString4 + "</strNumCartao>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString6 + "</tokenTransacao>" + "</request>" + "</web:listarFaturasAnteriores>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:consultarPagamentoFatura>" + " <request>" + "<agencia>" + paramString2 + "</agencia>" + "<agendamento>false</agendamento>" + "<bandeiraCartao></bandeiraCartao>" + "<codigoMoeda></codigoMoeda>" + "<codigoRetorno></codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString3 + "</contratoCartao>" + "<cotacaoDolar></cotacaoDolar>" + "<custoEfetivoTotal></custoEfetivoTotal>" + "<dataAgendamento></dataAgendamento>" + "<dataContabil></dataContabil>" + "<dataEfetivacao></dataEfetivacao>" + "<dataPagamento></dataPagamento>" + "<dataVencimento></dataVencimento>" + "<despesaConvertida></despesaConvertida>" + "<despesaReal></despesaReal>" + "<entidade>" + paramString5 + "</entidade>" + "<horaEfetivacao></horaEfetivacao>" + "<indicadorElegibilidade></indicadorElegibilidade>" + "<listaEmail></listaEmail>" + "<mensagemRetorno></mensagemRetorno>" + "<nomeClientePlasticoCartao></nomeClientePlasticoCartao>" + "<numReferDocumento></numReferDocumento>" + "<numeroCartao>" + paramString6 + "</numeroCartao>" + "<penumper>" + paramString4 + "</penumper>" + "<produto></produto>" + "<referOper></referOper>" + "<subProduto></subProduto>" + "<taxaJuros></taxaJuros>" + "<tipoFranquia></tipoFranquia>" + "<tipoParcelamento></tipoParcelamento>" + "<valorFinanciado></valorFinanciado>" + "<valorIOF></valorIOF>" + "<valorPagamento></valorPagamento>" + "<valorPagamentoMinimo></valorPagamentoMinimo>" + "<valorTarifa></valorTarifa>" + "<valorTotal></valorTotal>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString7 + "</tokenTransacao>" + "</request>" + "</web:consultarPagamentoFatura>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, fud paramfud, String paramString9, boolean paramBoolean) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:pagamentoFaturaImp>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<agendamento>" + paramBoolean + "</agendamento>" + "<codigoRetorno>0</codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString3 + "</contratoCartao>" + "<cotacaoDolar>" + paramfud.a() + "</cotacaoDolar>" + "<dataPagamento>" + paramString7 + "</dataPagamento>" + "<dataVencimento>" + paramfud.c() + "</dataVencimento>" + "<despesaConvertida>" + paramfud.d() + "</despesaConvertida>" + "<despesaReal>" + paramfud.e() + "</despesaReal>" + "<entidade>" + paramString5 + "</entidade>" + "<horaEfetivacao></horaEfetivacao>" + "<indicadorElegibilidade></indicadorElegibilidade>" + "<mensagemRetorno></mensagemRetorno>" + "<nomeClientePlasticoCartao></nomeClientePlasticoCartao>" + "<numReferDocumento></numReferDocumento>" + "<numeroCartao>" + paramString6 + "</numeroCartao>" + "<penumper>" + paramString4 + "</penumper>" + "<produto></produto>" + "<referOper>" + paramfud.f() + "</referOper>" + "<subProduto></subProduto>" + "<taxaJuros></taxaJuros>" + "<tipoFranquia></tipoFranquia>" + "<tipoParcelamento></tipoParcelamento>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString9 + "</tokenTransacao>" + "<valorFinanciado></valorFinanciado>" + "<valorIOF></valorIOF>" + "<valorPagamento>" + naj.z(paramString8) + "</valorPagamento>" + "<valorPagamentoMinimo>" + paramfud.g() + "</valorPagamentoMinimo>" + "<valorTarifa></valorTarifa>" + "<valorTotal>" + paramfud.h() + "</valorTotal>" + "</request>" + "</web:pagamentoFaturaImp>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:faturaParcelarConsultar>" + " <request>" + "<agencia>" + paramString2 + "</agencia>" + "<agendamento>false</agendamento>" + "<bandeiraCartao></bandeiraCartao>" + "<codigoMoeda></codigoMoeda>" + "<codigoRetorno></codigoRetorno>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contratoCartao>" + paramString3 + "</contratoCartao>" + "<cotacaoDolar></cotacaoDolar>" + "<custoEfetivoTotal></custoEfetivoTotal>" + "<dataAgendamento></dataAgendamento>" + "<dataContabil></dataContabil>" + "<dataEfetivacao></dataEfetivacao>" + "<dataPagamento></dataPagamento>" + "<dataVencimento></dataVencimento>" + "<despesaConvertida></despesaConvertida>" + "<despesaReal></despesaReal>" + "<entidade>" + paramString5 + "</entidade>" + "<horaEfetivacao></horaEfetivacao>" + "<indicadorElegibilidade></indicadorElegibilidade>" + "<listaEmail></listaEmail>" + "<mensagemRetorno></mensagemRetorno>" + "<nomeClientePlasticoCartao></nomeClientePlasticoCartao>" + "<numReferDocumento></numReferDocumento>" + "<numeroCartao>" + paramString6 + "</numeroCartao>" + "<penumper>" + paramString4 + "</penumper>" + "<produto></produto>" + "<referOper></referOper>" + "<subProduto></subProduto>" + "<taxaJuros></taxaJuros>" + "<tipoFranquia></tipoFranquia>" + "<tipoParcelamento></tipoParcelamento>" + "<valorFinanciado></valorFinanciado>" + "<valorIOF></valorIOF>" + "<valorPagamento></valorPagamento>" + "<valorPagamentoMinimo></valorPagamentoMinimo>" + "<valorTarifa></valorTarifa>" + "<valorTotal></valorTotal>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString7 + "</tokenTransacao>" + "</request>" + "</web:faturaParcelarConsultar>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private String d(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:enviarFaturaFechadaPorEmail>" + "<request>" + "<agencia>" + paramString2 + "</agencia>" + "<banco>" + paramString5 + "</banco>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<contrato>" + paramString7 + "</contrato>" + "<dataVencimento>" + paramString3 + "</dataVencimento>" + "<email>" + paramString4 + "</email>" + "<numeroCartao>" + paramString6 + "</numeroCartao>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "</request>" + "</web:enviarFaturaFechadaPorEmail>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public ftz a(String paramString) {
    ftz ftz = new ftz();
    ftz.a(false);
    try {
      paramString = a(this.a.j(), this.a.f().m(), paramString);
      paramString = jcd.a(has.x(), paramString, "", false);
      if (paramString != null) {
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          kau kau = new kau(inputStream);
          kau.b();
          ftz ftz1 = kau.a();
          if (kau.a() != null && !kau.a().hasFaultError()) {
            ftz1.a(true);
            return ftz1;
          } 
          ftz1.setError(kau.a());
          return ftz1;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ftz.setError(fvu);
    } 
    return ftz;
  }
  
  public fud a(ghu paramghu, Conta paramConta, String paramString1, String paramString2, Boolean paramBoolean) {
    try {
      String str3 = this.a.j();
      String str4 = paramConta.getAgencia();
      String str2 = paramConta.getCuenta();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str1 = a(str3, str4, str2, "", str5, paramghu.H(), paramString2, paramString1, paramghu.o(), str6, paramBoolean.booleanValue());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzb jzb = new jzb(inputStream);
          jzb.b();
          this.a.f().i(jzb.a().l());
          return jzb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fud fud = new fud();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fud.setError(fvu);
      return fud;
    } 
    return null;
  }
  
  public fud a(ghu paramghu, Conta paramConta, String paramString1, String paramString2, boolean paramBoolean) {
    try {
      String str3 = this.a.j();
      String str4 = paramConta.getAgencia();
      String str2 = paramConta.getCuenta();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str7 = paramghu.H();
      String[] arrayOfString = paramString2.split("/");
      String str1 = b(str3, str4, str2, "", str5, str7, arrayOfString[2] + arrayOfString[1] + arrayOfString[0], paramString1, paramghu.o(), str6, paramBoolean);
      str1 = jcd.a(has.w(), str1, "", false);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzb jzb = new jzb(inputStream);
          jzb.b();
          return jzb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fud fud = new fud();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fud.setError(fvu);
      return fud;
    } 
    return null;
  }
  
  public fue a(ghu paramghu) {
    try {
      String str2 = this.a.j();
      String str3 = paramghu.s();
      String str4 = mzr.f();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str1 = a(str2, str3, str4, str5, paramghu.H(), paramghu.d(), str6, paramghu.u());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzf jzf = new jzf(inputStream);
          jzf.b();
          return jzf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fue fue = new fue();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fue.setError(fvu);
      return fue;
    } 
    return null;
  }
  
  public fue a(ghu paramghu, String paramString1, String paramString2) {
    try {
      String str2 = this.a.j();
      String str3 = mzr.f();
      String str4 = mzr.h();
      String str5 = this.a.f().m();
      String str6 = paramghu.H();
      String str1 = a(str2, paramghu.s(), str3, str4, str6, paramghu.d(), paramString2, paramString1, str5, paramghu.u());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzf jzf = new jzf(inputStream);
          jzf.b();
          return jzf.a();
        } catch (Exception exception) {
          Log.e("Error", exception.getMessage());
          return null;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fue fue = new fue();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fue.setError(fvu);
      return fue;
    } 
    return null;
  }
  
  public fuk a(ghu paramghu, String paramString) {
    try {
      String str = a(this.a.j(), mzr.e(), "", mzr.h(), paramghu.d(), paramghu.k(), paramghu.l(), paramString, this.a.f().m());
      str = jcd.a(has.w(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzt jzt = new jzt(inputStream);
          jzt.b();
          return jzt.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuk fuk = new fuk();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuk.setError(fvu);
      return fuk;
    } 
    return null;
  }
  
  public ful a(fuu paramfuu, gig paramgig) {
    try {
      String str2 = this.a.j();
      if (paramfuu != null) {
        str1 = paramfuu.getAgencia();
      } else {
        str1 = mzr.e();
      } 
      String str1 = a(str2, str1, "", mzr.h(), paramgig, this.a.f().m());
      str1 = jcd.a(has.w(), str1, "", false);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          kaf kaf = new kaf(inputStream);
          kaf.b();
          return kaf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ful ful = new ful();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ful.setError(fvu);
      return ful;
    } 
    return null;
  }
  
  public ful a(ghu paramghu, fuu paramfuu, ful paramful, int paramInt) {
    try {
      String str2;
      String str3 = this.a.j();
      if (paramfuu != null) {
        str2 = paramfuu.getCuenta();
      } else {
        str2 = mzr.f();
      } 
      String str4 = paramghu.H();
      String str1 = a(str3, str2, "", mzr.h(), str4, paramghu, paramful, paramInt, this.a.f().m());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          kaf kaf = new kaf(inputStream);
          kaf.b();
          this.a.f().i(kaf.a().L());
          return kaf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ful ful1 = new ful();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ful1.setError(fvu);
      return ful1;
    } 
    return null;
  }
  
  public fvy a() {
    try {
      String str = a(this.a.j(), mzr.e(), mzr.f(), "", mzr.h(), this.a.f().m());
      str = jcd.a(has.w(), str, "", true);
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
      Log.e("Error", exception.toString());
      fvy fvy = new fvy();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvy.setError(fvu);
      return fvy;
    } 
    return null;
  }
  
  public fue b(ghu paramghu) {
    try {
      String str2 = this.a.j();
      String str3 = paramghu.s();
      String str4 = mzr.h();
      String str5 = this.a.f().m();
      String str1 = a(str2, str3, str4, paramghu.H(), paramghu.d(), str5, paramghu.u());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzf jzf = new jzf(inputStream);
          jzf.b();
          return jzf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fue fue = new fue();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fue.setError(fvu);
      return fue;
    } 
    return null;
  }
  
  public fuh b(ghu paramghu, String paramString) {
    try {
      String str2 = this.a.j();
      String str3 = paramghu.s();
      String str4 = mzr.h();
      String str5 = paramghu.H();
      String str1 = d(str2, str3, nak.l(paramghu.j().d()), paramString, str4, str5, paramghu.d());
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzj jzj = new jzj(inputStream);
          jzj.b();
          return jzj.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuh fuh = new fuh();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuh.setError(fvu);
      return fuh;
    } 
    return null;
  }
  
  public ful b(ghu paramghu, String paramString1, String paramString2) {
    try {
      String str2 = this.a.j();
      String str3 = mzr.e();
      String str4 = mzr.f();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str1 = a(str2, str3, str4, "", str5, paramghu.H(), paramghu.p(), paramString1, paramString2, str6);
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          kaf kaf = new kaf(inputStream);
          kaf.b();
          return kaf.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      ful ful = new ful();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      ful.setError(fvu);
      return ful;
    } 
    return null;
  }
  
  public hbd b() {
    try {
      String str1 = a(this.a.j(), mzr.e(), mzr.f(), "", mzr.h(), this.a.f().m());
      String str2 = jcd.a(has.w(), str1, "", true);
      if (str2 != null) {
        InputStream inputStream1 = c(str2, "UTF-8");
        InputStream inputStream2 = c(str2, "UTF-8");
        try {
          jyn jyn = new jyn(inputStream1);
          jyn.b();
          jyl jyl = new jyl(inputStream2);
          jyl.b();
          if (jyn.a() != null && !jyn.a().hasFaultError() && jyl.a() != null && !jyl.a().hasFaultError()) {
            hau.a().a(jyn.a());
            hau.a().a(jyl.a());
          } 
          hbd hbd = new hbd(this);
          hbd.a = jyn.a();
          hbd.b = jyl.a();
          return hbd;
        } finally {
          inputStream1.close();
          inputStream2.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      hbd hbd = new hbd(this);
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fvy fvy = new fvy();
      fvy.setError(fvu);
      fvz fvz = new fvz();
      fvz.setError(fvu);
      hbd.a = fvy;
      hbd.b = fvz;
      return hbd;
    } 
    return null;
  }
  
  public fuf c() {
    try {
      String str = b(this.a.j(), "", this.a.f().m());
      str = jcd.a(has.w(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzh jzh = new jzh(inputStream);
          jzh.b();
          return jzh.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fuf fuf = new fuf();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fuf.setError(fvu);
      return fuf;
    } 
    return null;
  }
  
  public fug c(ghu paramghu, String paramString1, String paramString2) {
    try {
      String str = d(this.a.j(), paramghu.s(), paramString2, paramString1, mzr.h(), paramghu.H(), paramghu.d());
      str = jcd.a(has.w(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          jzl jzl = new jzl(inputStream);
          jzl.b();
          return jzl.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fug fug = new fug();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fug.setError(fvu);
      return fug;
    } 
    return null;
  }
  
  public fui c(ghu paramghu) {
    try {
      String str2 = this.a.j();
      String str3 = mzr.h();
      String str4 = this.a.f().m();
      String str5 = paramghu.H();
      String str1 = b(str2, paramghu.s(), str3, str5, paramghu.d(), str4);
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzn jzn = new jzn(inputStream);
          jzn.b();
          return jzn.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fui fui = new fui();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fui.setError(fvu);
      return fui;
    } 
    return null;
  }
  
  public fud d(ghu paramghu) {
    try {
      String str2 = this.a.j();
      String str3 = mzr.e();
      String str4 = mzr.f();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str1 = b(str2, str3, str4, "", str5, paramghu.H(), str6);
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzb jzb = new jzb(inputStream);
          jzb.b();
          if (jzb.a() != null) {
            str5 = jzb.a().i();
            if (str5 != null && !str5.equals("0")) {
              fvv fvv2 = jzb.a().getErrorDetail();
              fvv fvv1 = fvv2;
              if (fvv2 == null)
                fvv1 = new fvv(); 
              fvv1.c(str5);
              fvv1.d(jzb.a().k());
              jzb.a().setErrorDetail(fvv1);
            } 
          } 
          return jzb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fud fud = new fud();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fud.setError(fvu);
      return fud;
    } 
    return null;
  }
  
  public fud e(ghu paramghu) {
    try {
      String str2 = this.a.j();
      String str3 = mzr.e();
      String str4 = mzr.f();
      String str5 = mzr.h();
      String str6 = this.a.f().m();
      String str1 = c(str2, str3, str4, "", str5, paramghu.H(), str6);
      str1 = jcd.a(has.w(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          jzb jzb = new jzb(inputStream);
          jzb.b();
          return jzb.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fud fud = new fud();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fud.setError(fvu);
      return fud;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
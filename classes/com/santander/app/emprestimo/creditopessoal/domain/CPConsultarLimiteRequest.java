package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import goe;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import miq;
import naf;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class CPConsultarLimiteRequest extends goe implements Serializable {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  public CPConsultarLimiteRequest(Conta paramConta) {
    Date date = Calendar.getInstance().getTime();
    miq miq = miq.C();
    naf naf = new naf();
    this.codigoAgencia = naf.b(paramConta.getAgencia().getBytes());
    setConta(naf.b(paramConta.getCuenta().getBytes()));
    this.dataSolicitacao = (new SimpleDateFormat("dd.MM.yyyy")).format(date);
    this.horaSolicitacao = (new SimpleDateFormat("hh:mm:ss")).format(date);
    setConnUuid(miq.i());
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPConsultarLimiteRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
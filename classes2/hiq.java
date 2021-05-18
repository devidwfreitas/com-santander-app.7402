import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.emprestimo.antecipacaoDT.activity.CustoEfetivoTotalAntecipacaoDTActivity;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;

public class hiq extends AsyncTask<Void, Void, hix> {
  private LinkedList<gkx> b;
  
  private hiq(TermoContratacaoEmprestimoActivity paramTermoContratacaoEmprestimoActivity) {}
  
  private LinkedList<gkx> a(hja paramhja) {
    LinkedList<gkx> linkedList = new LinkedList();
    gkx gkx2 = new gkx();
    gkx2.a("(a) Taxa de Juros");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tMensal", naj.o(paramhja.e()) + "%"));
    gkx2.c().add(new gky("\t\tAnual", naj.o(paramhja.d()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("Custo Efetivo Total - CET (**) ");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tMensal(**)", naj.o(paramhja.b()) + "%"));
    gkx2.c().add(new gky("\t\tAnual(**)", naj.o(paramhja.a()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("Tipo de Taxa de Juros");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhja.c()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(b) Valor Total Devido no Ato da Contração");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais", naj.f(paramhja.n())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhja.j()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(c) Valor do IOF");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais (financiado)", naj.f(paramhja.o())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhja.k()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(d) Valor Liberado");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais", naj.f(paramhja.p())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhja.l()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(e) Data/Hora do Cáculo(*)");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhja.g()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(f) Quantidade de Parcelas");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhja.m()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(g) Valor das Parcelas");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", naj.f(paramhja.q())));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(h) Data do 1º Vencimento");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhja.h()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("Data do Último Vencimento");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhja.i()));
    linkedList.add(gkx2);
    gkx gkx1 = new gkx();
    gkx1.a(1);
    gkx1.a("* As condições calculadas são válidas para o Canal de Internet/Mobile até as 18h00min da data acima indicada. Este documento trata-se de demonstrativo não constituindo obrigação do Banco Santander (Brasil) S.A. conceder o empréstimo. A efetiva concessão está sujeita a análise de crédito e demais condições do produto.\n\n ** Para efeito do cálculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras: (A) à (H).");
    linkedList.add(gkx1);
    return linkedList;
  }
  
  protected hix a(Void... paramVarArgs) {
    gog<Object, Object> gog = new gog<Object, Object>();
    TermoContratacaoEmprestimoActivity.a(this.a, (hix)gog.a(TermoContratacaoEmprestimoActivity.i(this.a), hix.class, has.T(), "cetAntecipacao13", "return"));
    return TermoContratacaoEmprestimoActivity.j(this.a);
  }
  
  protected void a(hix paramhix) {
    if (TermoContratacaoEmprestimoActivity.j(this.a) != null && TermoContratacaoEmprestimoActivity.j(this.a).getConfirmacao().equalsIgnoreCase("ok")) {
      TermoContratacaoEmprestimoActivity.i(this.a).setTokenTransacao(TermoContratacaoEmprestimoActivity.j(this.a).getTokenTransacao());
      this.b = a(TermoContratacaoEmprestimoActivity.j(this.a).a());
      Intent intent = new Intent((Context)TermoContratacaoEmprestimoActivity.f(this.a), CustoEfetivoTotalAntecipacaoDTActivity.class);
      intent.putExtra("listaCET", this.b);
      intent.putExtra("listaCustoCET", TermoContratacaoEmprestimoActivity.k(this.a));
      intent.putExtra("custoEfetivoTotalDTModel", (Serializable)paramhix);
      intent.putExtra("simularAntecipacaoRequest", (Serializable)TermoContratacaoEmprestimoActivity.i(this.a));
      if (TermoContratacaoEmprestimoActivity.l(this.a) != null) {
        TermoContratacaoEmprestimoActivity.l(this.a).dismiss();
        TermoContratacaoEmprestimoActivity.a(this.a, null);
      } 
      this.a.startActivity(intent);
    } else {
      hat.d().a(TermoContratacaoEmprestimoActivity.f(this.a), null, false, false);
    } 
    super.onPostExecute(paramhix);
  }
  
  protected void onPreExecute() {
    TermoContratacaoEmprestimoActivity.a(this.a, mxn.b(TermoContratacaoEmprestimoActivity.f(this.a)));
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hiq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
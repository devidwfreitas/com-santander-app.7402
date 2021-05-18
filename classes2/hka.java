import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.santander.app.emprestimo.antecipacaoIR.activity.CustoEfetivoTotalAntecipacaoIRActivity;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;

public class hka extends AsyncTask<Void, Void, hki> {
  private LinkedList<gkx> b;
  
  private hka(TermoContratacaoEmprestimoAntecipacaoIRActivity paramTermoContratacaoEmprestimoAntecipacaoIRActivity) {}
  
  private LinkedList<gkx> a(hkl paramhkl) {
    LinkedList<gkx> linkedList = new LinkedList();
    gkx gkx2 = new gkx();
    gkx2.a("(a) Taxa de Juros");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tMensal", naj.o(paramhkl.j()) + "%"));
    gkx2.c().add(new gky("\t\tAnual", naj.o(paramhkl.i()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("Custo Efetivo Total - CET (**) ");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tMensal(**)", naj.o(paramhkl.h()) + "%"));
    gkx2.c().add(new gky("\t\tAnual(**)", naj.o(paramhkl.g()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("Tipo de Taxa de Juros");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhkl.c()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(b) Valor Total Devido no Ato da Contração");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais", naj.f(paramhkl.o())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhkl.f()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(c) Valor Solicitado");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais", naj.f(paramhkl.n())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhkl.e()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(d) IOF(***)");
    gkx2.a(2);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("\t\tEm Reais", naj.f(paramhkl.l())));
    gkx2.c().add(new gky("\t\tPercentual", naj.o(paramhkl.d()) + "%"));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(e) Juros(***)");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhkl.m()));
    linkedList.add(gkx2);
    gkx2 = new gkx();
    gkx2.a("(f) Data/Hora do Cáculo(*)");
    gkx2.a(1);
    gkx2.a(new ArrayList<gky>());
    gkx2.c().add(new gky("", paramhkl.a() + "/" + paramhkl.b()));
    linkedList.add(gkx2);
    gkx gkx1 = new gkx();
    gkx1.a(1);
    gkx1.a("* As condições calculadas são válidas para o Canal de Internet/Mobile até as 18h00min da data acima indicada. Este documento trata-se de demonstrativo não constituindo obrigação do Banco Santander (Brasil) S.A. conceder o empréstimo. A efetiva concessão está sujeita a análise de crédito e demais condições do produto.\n\n ** Para efeito do cálculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras: A à F.\n\n *** Juros e IOF calculados considerando os primeiros 30 dias de utilização");
    linkedList.add(gkx1);
    return linkedList;
  }
  
  protected hki a(Void... paramVarArgs) {
    gog<Object, Object> gog = new gog<Object, Object>();
    TermoContratacaoEmprestimoAntecipacaoIRActivity.a(this.a, (hki)gog.a(TermoContratacaoEmprestimoAntecipacaoIRActivity.i(this.a), hki.class, has.U(), "cetAntecipacaoIR", "return"));
    return TermoContratacaoEmprestimoAntecipacaoIRActivity.j(this.a);
  }
  
  protected void a(hki paramhki) {
    if (TermoContratacaoEmprestimoAntecipacaoIRActivity.j(this.a) != null && TermoContratacaoEmprestimoAntecipacaoIRActivity.j(this.a).getConfirmacao().equalsIgnoreCase("ok")) {
      TermoContratacaoEmprestimoAntecipacaoIRActivity.i(this.a).setTokenTransacao(TermoContratacaoEmprestimoAntecipacaoIRActivity.j(this.a).getTokenTransacao());
      this.b = a(TermoContratacaoEmprestimoAntecipacaoIRActivity.j(this.a).a());
      Intent intent = new Intent((Context)TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.a), CustoEfetivoTotalAntecipacaoIRActivity.class);
      intent.putExtra("listaCET", this.b);
      intent.putExtra("listaCustoCET", TermoContratacaoEmprestimoAntecipacaoIRActivity.k(this.a));
      intent.putExtra("custoEfetivoTotalIRModel", (Serializable)paramhki);
      intent.putExtra("simularAntecipacaoRequest", (Serializable)TermoContratacaoEmprestimoAntecipacaoIRActivity.i(this.a));
      if (TermoContratacaoEmprestimoAntecipacaoIRActivity.l(this.a) != null) {
        TermoContratacaoEmprestimoAntecipacaoIRActivity.l(this.a).dismiss();
        TermoContratacaoEmprestimoAntecipacaoIRActivity.a(this.a, null);
      } 
      this.a.startActivity(intent);
      return;
    } 
    hat.d().a(TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.a), null, false, false);
  }
  
  protected void onPreExecute() {
    TermoContratacaoEmprestimoAntecipacaoIRActivity.a(this.a, mxn.b(TermoContratacaoEmprestimoAntecipacaoIRActivity.f(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
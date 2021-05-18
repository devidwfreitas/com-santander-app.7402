package com.santander.app.emprestimo.creditounificado.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.santander.app.emprestimo.creditopessoal.presentation.CPTermoCETActivity;
import gky;
import hxn;
import java.util.ArrayList;

public class CPUTermosCETActivity extends CPTermoCETActivity {
  private static ArrayList<gky> a(hxn paramhxn) {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("a) Taxa de juros:", paramhxn.a(true)));
    arrayList.add(new gky("   Custo Efetivo total (CET)**: ", paramhxn.b(true)));
    arrayList.add(new gky("Tipo de taxa de juros:  ", "Préfixado"));
    arrayList.add(new gky("b) Valor total devido no ato da contratação: ", paramhxn.A()));
    arrayList.add(new gky("   Percentual valor total \ndevido no ato da contratação: ", paramhxn.x()));
    arrayList.add(new gky("c) Valor do IOF (Financiado): ", paramhxn.C()));
    arrayList.add(new gky("   Percentual valor do IOF (Financiado): ", paramhxn.D()));
    arrayList.add(new gky("d) Valor do seguro (Financiado): ", paramhxn.E()));
    arrayList.add(new gky("   Percentual valor do seguro (Financiado): ", paramhxn.F()));
    arrayList.add(new gky("e) Valor liberado: ", paramhxn.w()));
    arrayList.add(new gky("   Percentual valor liberado: ", paramhxn.B()));
    arrayList.add(new gky("f) Data/hora do cálculo*: ", paramhxn.H()));
    arrayList.add(new gky("g) Quantidade de parcela: ", paramhxn.u()));
    arrayList.add(new gky("h) Valor da parcela: ", paramhxn.G()));
    arrayList.add(new gky("i) Data da 1ª parcela ", paramhxn.I()));
    arrayList.add(new gky("   Data última parcela: ", paramhxn.J()));
    arrayList.add(new gky(b, "*As condições calculadas são válidas para o Canal Internet e Mobile até às 18h00min da data acima indicada. Este documento trata-se de demonstrativo não constituindo obrigação do Banco Santander (Brasil) S.A. conceder o empréstimo. A efetiva concessão está sujeita à análise de crédito e demais condições do produto. Horário de Brasília.\n ** Para efeito do cálculo do Custo Efetivo Total (CET) foram considerados os itens indicados com as letras (a) à (i)."));
    return arrayList;
  }
  
  public static void a(Context paramContext, hxn paramhxn) {
    Intent intent = new Intent(paramContext, CPUTermosCETActivity.class);
    intent.putExtra("EXTRA_TERMO", a(paramhxn));
    paramContext.startActivity(intent);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditounificado\presentation\CPUTermosCETActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
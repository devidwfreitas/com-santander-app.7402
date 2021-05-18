import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import com.github.mikephil.charting.data.PieEntry;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;
import com.santander.app.investimentos.presentation.SemProdutoActivity;
import com.santander.app.previdencia.presentation.PosicaoConsolidadaActivity;
import java.util.ArrayList;
import java.util.List;

public class jkt implements jjx, jks {
  private Activity a;
  
  private jkg b;
  
  private jjw c;
  
  private boolean d;
  
  public jkt(jkg paramjkg) {
    this.a = (Activity)paramjkg;
    this.b = paramjkg;
    this.c = new jjy(this);
  }
  
  private cgz a(List<jdb> paramList) {
    ArrayList<PieEntry> arrayList1 = new ArrayList();
    ArrayList<Integer> arrayList = new ArrayList();
    for (jdb jdb : paramList) {
      if (!jdb.f().equals("0")) {
        PieEntry pieEntry;
        if (Float.valueOf(jdb.f()).floatValue() >= 1.0F) {
          pieEntry = new PieEntry(Float.parseFloat(jdb.f()), jdb.f() + "%");
        } else {
          pieEntry = new PieEntry(1.0F, jdb.f() + "%");
        } 
        arrayList1.add(pieEntry);
        if (jdb.d() != null)
          arrayList.add(Integer.valueOf(Color.parseColor("#" + jdb.d()))); 
      } 
    } 
    cgz cgz = new cgz(arrayList1, "");
    cgz.a(1.0F);
    cgz.f(1.0F);
    cgz.a(arrayList);
    return cgz;
  }
  
  public void a() {
    this.b.d();
    this.c.a();
  }
  
  public void a(Intent paramIntent, List<jdb> paramList) {
    if (paramList == null || !paramIntent.hasExtra("redirect_deeplink_target"))
      return; 
    this.b.d();
    this.d = paramIntent.getBooleanExtra("exibe_lista", false);
    String str = paramIntent.getStringExtra("redirect_deeplink_target");
    for (jdb jdb : paramList) {
      if (jdb.b().equalsIgnoreCase(str)) {
        a(jdb);
        break;
      } 
    } 
    this.d = false;
    this.b.e();
  }
  
  public void a(jdb paramjdb) {
    Intent intent;
    jdb jdb1 = null;
    if (paramjdb.b() != null && paramjdb.a()) {
      Intent intent1;
      jdh jdh = jdh.valueOf(paramjdb.b());
      switch (jku.a[jdh.ordinal()]) {
        default:
          paramjdb = jdb1;
          this.b.a((Intent)paramjdb);
          return;
        case 1:
          frq.d("Investimentos_MeusInvestimentos_Acao", "Fundos");
          intent1 = new Intent((Context)this.a, ListagemFundosActivity.class);
          intent1.putExtra("valor_bruto", paramjdb.g());
          intent = intent1;
          this.b.a(intent);
          return;
        case 2:
          frq.d("Investimentos_MeusInvestimentos_Acao", "Poupanca");
          if (intent.g() == null) {
            intent = new Intent((Context)this.a, SemProdutoActivity.class);
            intent.putExtra("tipo_produto", jda.POUPANCA);
            intent.setFlags(67108864);
          } else {
            intent = new Intent((Context)this.a, Poupanca_posicaoconsolidadaActivity.class);
            intent.setFlags(67108864);
            intent.putExtra("type", 1);
            intent.putExtra("positionFundo", -1);
          } 
          this.b.a(intent);
          return;
        case 3:
          frq.d("Investimentos_MeusInvestimentos_Acao", "Previdencia");
          if (intent.g() == null || intent.g().equals("0")) {
            intent = new Intent((Context)this.a, SemProdutoActivity.class);
            intent.putExtra("tipo_produto", jda.PREVIDENCIA);
            intent.setFlags(67108864);
          } else {
            intent = new Intent((Context)this.a, PosicaoConsolidadaActivity.class);
            intent.setFlags(67108864);
          } 
          this.b.a(intent);
          return;
        case 4:
          break;
      } 
      frq.d("Investimentos_MeusInvestimentos_Acao", "CDB/LCI");
      if (intent.g() == null || intent.g().equals("0")) {
        intent = new Intent((Context)this.a, SemProdutoActivity.class);
        intent.putExtra("tipo_produto", jda.RENDA_FIXA);
        intent.putExtra("exibe_lista", this.d);
        intent.setFlags(67108864);
      } else {
        intent = new Intent((Context)this.a, Rendafixa_posicaoconsolidadaActivity.class);
        intent.setFlags(67108864);
        intent.putExtra("type", 0);
        intent.putExtra("exibe_lista", this.d);
        intent.putExtra("positionFundo", -1);
      } 
    } else {
      if ("corretora".equalsIgnoreCase(intent.e())) {
        frq.d("Investimentos_MeusInvestimentos_Acao", "Corretora");
        if (myo.a(2131299209)) {
          this.b.a();
        } else {
          this.b.b();
        } 
      } 
      if ("coe".equalsIgnoreCase(intent.e())) {
        frq.d("Investimentos_MeusInvestimentos_Acao", "Coe");
        this.b.c();
        return;
      } 
      return;
    } 
    this.b.a(intent);
  }
  
  public void a(jdf paramjdf) {
    this.b.e();
    if (paramjdf.b() && paramjdf.d() != null)
      this.b.a(a(paramjdf.d())); 
    this.b.a(paramjdf);
  }
  
  public void b(jdf paramjdf) {
    this.b.e();
    if (paramjdf != null && !paramjdf.getMensagemErro().isEmpty()) {
      this.b.a(paramjdf.getMensagemErro());
      return;
    } 
    this.b.f();
  }
  
  public void c(jdf paramjdf) {
    a(paramjdf);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
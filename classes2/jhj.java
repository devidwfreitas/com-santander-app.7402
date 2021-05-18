import android.content.Context;
import android.content.Intent;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;
import com.santander.app.investimentos.fundos.presentation.FundosDetalhesActivity;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;
import java.io.Serializable;
import java.util.ArrayList;

public class jhj implements jie {
  public jhj(ListagemFundosActivity paramListagemFundosActivity) {}
  
  public void a(jdl paramjdl) {
    ArrayList<gth> arrayList = new ArrayList();
    arrayList.add(new gth(paramjdl.b(), Boolean.valueOf(true), Boolean.valueOf(true), 16));
    arrayList.add(new gth(paramjdl.f(), Boolean.valueOf(false), Boolean.valueOf(true), 14));
    ListagemFundosActivity.g(this.a).a(arrayList);
  }
  
  public void a(jdx paramjdx) {
    Intent intent = new Intent((Context)ListagemFundosActivity.d(this.a), FundosDetalhesActivity.class);
    intent.putExtra("fundos_detalhes", (Serializable)paramjdx);
    intent.putExtra("perfil_n_cadastrado", ListagemFundosActivity.h(this.a));
    this.a.startActivity(intent);
  }
  
  public void b(jdl paramjdl) {}
  
  public void b(jdx paramjdx) {
    if (mzr.a()) {
      this.a.c();
      return;
    } 
    if (!ListagemFundosActivity.h(this.a)) {
      if (paramjdx.t() != jdk.CANCELAR) {
        Intent intent = new Intent((Context)ListagemFundosActivity.d(this.a), FundosAplicacaoActivity.class);
        intent.putExtra("fundos_detalhes", (Serializable)paramjdx);
        this.a.startActivity(intent);
        return;
      } 
      return;
    } 
    ArrayList<gth> arrayList = new ArrayList();
    arrayList.add(new gth(this.a.getResources().getString(2131298965), Boolean.valueOf(true), Boolean.valueOf(true), 16));
    arrayList.add(new gth(this.a.getResources().getString(2131297134), Boolean.valueOf(false), Boolean.valueOf(true), 14));
    ListagemFundosActivity.g(this.a).a(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
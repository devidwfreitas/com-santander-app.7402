import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

class lwh implements luc {
  lwh(lwg paramlwg) {}
  
  public void a(kvp paramkvp) {
    frq.d("Seguros_Sinistro_MeusSinistros_Consulta_Tipo_Acao", mhj.m(mhj.p(paramkvp.j()).replace(" ", "")));
    frq.d("Seguros_Sinistro_MeusSinistros_Consulta_Status_Acao", "Concluido");
    Intent intent = new Intent((Context)lwg.a(this.a), SinisterDetailActivity.class);
    intent.putExtra("sinister-detail-key", (new ejm()).b(paramkvp));
    lwg.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
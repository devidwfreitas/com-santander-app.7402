import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.Button;
import android.widget.LinearLayout;
import java.util.List;
import org.json.JSONObject;

public class afh {
  private Activity a;
  
  private RecyclerView b;
  
  private LinearLayout c;
  
  private Button d;
  
  private aeg e;
  
  private aei f;
  
  private aer g;
  
  private List h;
  
  public afh(Activity paramActivity) {
    this.a = paramActivity;
    this.e = new aeg();
    this.f = new aei();
    a(new JSONObject());
  }
  
  private void a(JSONObject paramJSONObject) {
    Dialog dialog = ano.b(this.a);
    this.c = (LinearLayout)this.a.findViewById(adr.layout_title);
    this.c.setVisibility(8);
    this.f.a(paramJSONObject, new afq(this, dialog, paramJSONObject));
  }
  
  private void c() {
    try {
      aey aey = (aey)this.b.getAdapter();
      aeb aeb = this.h.get(aey.a());
      adh.a().a("Pagamentos_DDA_Acao", aea.a().d().c(aeb.c()));
      adh.a().a("Pagamentos_DDA_Acao", "Pagar");
      Intent intent = new Intent();
      intent.setClassName(this.a.getPackageName(), this.a.getPackageName() + ".pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity");
      intent.putExtra("codigoBarrasDDA", aeb.g());
      intent.putExtra("dda", true);
      this.a.startActivity(intent);
      this.a.finish();
      return;
    } catch (Exception exception) {
      Log.e(afh.class.getName(), Log.getStackTraceString(exception));
      return;
    } 
  }
  
  private void d() {
    this.d.setEnabled(false);
  }
  
  private void e() {
    this.b = (RecyclerView)this.a.findViewById(adr.list_titles);
    this.d = (Button)this.a.findViewById(adr.button_buy);
    this.d.setOnClickListener(new aft(this));
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.a);
    this.b.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.b.setAdapter(new aey(this, this.h));
    RecyclerView recyclerView = this.b;
    afu afu = new afu(this, linearLayoutManager);
    this.g = afu;
    recyclerView.addOnScrollListener(afu);
    d();
  }
  
  public Activity a() {
    return this.a;
  }
  
  public void a(aeb paramaeb) {
    Dialog dialog = ano.b(this.a);
    adh.a().a("Pagamentos_DDA_Detalhe_Acao", "Detalhe");
    this.e.a(paramaeb, new afs(this, dialog));
  }
  
  public void b() {
    this.d.setEnabled(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
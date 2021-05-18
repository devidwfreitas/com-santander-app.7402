import android.content.Context;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;

class py implements nh {
  py(pc parampc) {}
  
  public void a(abv paramabv) {
    ne ne = (ne)paramabv;
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.a.e());
    View view = this.a.e().getLayoutInflater().inflate(lc.layout_cdb_progressivo, null);
    view.findViewById(la.cdb_progressivo_text).setVisibility(8);
    ((TextView)view.findViewById(la.cdb_progressivo_titulo)).setText(lg.app_dialogo_rentabilidade);
    RecyclerView recyclerView = (RecyclerView)view.findViewById(la.cdb_progressivo_lista);
    recyclerView.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.a.e()));
    recyclerView.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    recyclerView.setNestedScrollingEnabled(false);
    ArrayList<nc> arrayList = new ArrayList();
    for (nc nc : ne.b().a()) {
      if (nc.a() != null && !nc.a().isEmpty() && nc.b() != null && !nc.b().isEmpty())
        arrayList.add(nc); 
    } 
    recyclerView.setAdapter(new ni(arrayList, (Context)this.a.e()));
    builder.setView(view);
    pc.aq(this.a).setVisibility(8);
    AlertDialog alertDialog = builder.show();
    ((Button)view.findViewById(la.dialog_pzr_btn_fechar)).setOnClickListener(new pz(this, alertDialog));
  }
  
  public void a(aby paramaby) {
    aad.a((Context)this.a.e(), new qa(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\py.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
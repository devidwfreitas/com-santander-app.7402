import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class agp extends RecyclerView.Adapter<agq> {
  private static String a = "N";
  
  private static String b = "S";
  
  private List<ajn> c;
  
  private Context d;
  
  public agp(List<ajn> paramList, Context paramContext) {
    this.c = paramList;
    this.d = paramContext;
  }
  
  public agq a(ViewGroup paramViewGroup, int paramInt) {
    View view = LayoutInflater.from(paramViewGroup.getContext()).inflate(agi.contract_list_item, paramViewGroup, false);
    this.d = paramViewGroup.getContext();
    return new agq(this, view);
  }
  
  public String a(ajn paramajn) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Parcela ");
    stringBuilder.append("(");
    stringBuilder.append(paramajn.d().k().d().replaceFirst("^0+(?!$)", ""));
    stringBuilder.append("/");
    stringBuilder.append(paramajn.d().k().g().replaceFirst("^0+(?!$)", ""));
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
  
  public void a(agq paramagq, int paramInt) {
    ajn ajn = this.c.get(paramInt);
    if (ajn != null) {
      if (ajn.c().b().equals(a)) {
        paramagq.c.setImageResource(agf.green_status_bar);
        paramagq.d.setText(this.d.getString(agl.ativo));
        paramagq.d.setTextColor(this.d.getResources().getColor(agd.status_green));
        if ("0,00".equals(ajn.d().k().a())) {
          paramagq.f.setText("");
          paramagq.e.setVisibility(4);
          paramagq.i.setVisibility(8);
        } else {
          paramagq.e.setText(a(ajn));
          paramagq.f.setText(ajn.d().k().a());
        } 
      } else if (ajn.c().b().equals(b)) {
        paramagq.e.setText(this.d.getString(agl.card_valor_a_regularizar));
        paramagq.c.setImageResource(agf.orange_status_bar);
        paramagq.d.setText(this.d.getString(agl.em_atraso));
        paramagq.d.setTextColor(this.d.getResources().getColor(agd.status_orange));
        if ("0,00".equals(ajn.d().k().h().b())) {
          paramagq.f.setText("");
          paramagq.e.setVisibility(4);
          paramagq.i.setVisibility(8);
        } else {
          paramagq.f.setText(ajn.d().k().h().b());
        } 
      } 
      paramagq.b.setText(ajs.c(ajn.c().c()));
      paramagq.a.setText(ajn.e());
      paramagq.g.setText(ajs.d(ajn.d().d()));
      paramagq.h.setText(ajn.d().a());
    } 
    paramagq.itemView.setOnClickListener(new agr(this, ajn));
  }
  
  public int getItemCount() {
    return (this.c != null) ? this.c.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
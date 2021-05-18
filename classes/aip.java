import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class aip extends RecyclerView.Adapter<aiq> {
  private List<ajw> a;
  
  private Context b;
  
  private boolean c;
  
  private String[] d = new String[] { "1308", "1309" };
  
  private List<String> e = new ArrayList<String>(Arrays.asList(this.d));
  
  private Handler f;
  
  private boolean g = false;
  
  private ArrayList<ajw> h = new ArrayList<ajw>();
  
  public aip(List<ajw> paramList, Activity paramActivity, boolean paramBoolean) {
    this.b = (Context)paramActivity;
    this.a = paramList;
    this.c = paramBoolean;
  }
  
  private int a(ajw paramajw) {
    double d1 = Double.valueOf(paramajw.i().replace(",", "").replace(".", "")).doubleValue();
    double d2 = Double.valueOf(paramajw.f().replace(",", "").replace(".", "")).doubleValue();
    return (d2 == 0.0D) ? 0 : (int)(d1 * 100.0D / d2);
  }
  
  public aiq a(ViewGroup paramViewGroup, int paramInt) {
    View view = LayoutInflater.from(paramViewGroup.getContext()).inflate(agi.remanejamento_contract_list_item, paramViewGroup, false);
    this.b = paramViewGroup.getContext();
    return new aiq(this, view);
  }
  
  public void a(int paramInt) {
    if (!this.g) {
      this.g = true;
      this.f.post(new ais(this, paramInt));
    } 
  }
  
  public void a(aiq paramaiq, int paramInt) {
    boolean bool1;
    boolean bool2;
    ajw ajw = this.a.get(paramInt);
    this.f = new Handler();
    paramaiq.f.setText((CharSequence)Html.fromHtml(this.b.getString(agl.botao_alterar)));
    if (!this.c) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (!ajw.h().equals(ajx.a)) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if ((bool1 | bool2) != 0)
      paramaiq.f.setVisibility(8); 
    if (ajw.a().equals(String.valueOf(ajt.USO_DE_LIMITE_DE_CONTA.getCode()))) {
      paramaiq.a.setText(agl.remanejamento_label_cheque);
      paramaiq.b.setText(ajx.b(ajw));
    } else if (ajw.a().equals(String.valueOf(ajt.CARTAO.getCode()))) {
      paramaiq.a.setText(agl.remanejamento_label_cartao);
      paramaiq.b.setText(ajx.a(ajw));
    } 
    paramaiq.d.setText(this.b.getString(agl.money_value, new Object[] { ajw.i() }));
    paramaiq.e.setText(this.b.getString(agl.disponivel_ajuste, new Object[] { ajw.n() }));
    paramaiq.g.setProgress(a(ajw));
    if (this.e.contains(ajw.b())) {
      paramaiq.g.setProgress(0);
      paramaiq.f.setVisibility(8);
      paramaiq.d.setText(agl.sem_limites);
    } 
    if (!ajw.j().equals("0") && ajw.a().equals(String.valueOf(ajt.CARTAO.getCode())) && paramInt < this.a.size() - 1) {
      ajw ajw1 = this.a.get(paramInt + 1);
      if (ajw1.j().equals(ajw.j())) {
        paramaiq.c.setVisibility(0);
        paramaiq.c.setText(ajx.a(ajw1));
        this.h.add(ajw1);
        a(paramInt + 1);
      } else {
        paramaiq.c.setVisibility(8);
      } 
    } 
    paramaiq.f.setOnClickListener(new air(this, ajw));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
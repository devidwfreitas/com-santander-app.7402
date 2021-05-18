import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.EditText;
import java.util.List;

public class oz extends RecyclerView.Adapter<pb> {
  private List<rd> a;
  
  private Context b;
  
  private EditText c;
  
  private Drawable d;
  
  private Drawable e;
  
  private int f;
  
  private int g;
  
  public oz(Context paramContext, om paramom, Dialog paramDialog) {
    this.b = paramContext;
    this.d = paramContext.getResources().getDrawable(kz.shape_selector_fg_unselected);
    this.e = paramContext.getResources().getDrawable(kz.shape_selector_fg);
    this.f = paramContext.getResources().getColor(kx.inv_white_three);
    this.g = paramContext.getResources().getColor(kx.inv_transparent);
    this.a = paramom.e("maxDueDays");
    if (paramom.d("flagOthers")) {
      this.a.add(new rd("Outro", true));
      return;
    } 
    this.c = (EditText)paramDialog.findViewById(la.dialog_pzr_campo_prazo);
    this.c.setEnabled(false);
    this.c.setText(((rd)this.a.get(this.a.size() - 1)).a());
  }
  
  private void a(int paramInt) {
    rd rd = this.a.get(paramInt);
    for (rd rd1 : this.a) {
      if (rd1 == rd) {
        rd1.a(true);
        continue;
      } 
      rd1.a(false);
    } 
    notifyDataSetChanged();
  }
  
  public pb a(ViewGroup paramViewGroup, int paramInt) {
    return new pb(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_prazo_item, paramViewGroup, false));
  }
  
  public void a(pb parampb, int paramInt) {
    parampb.c = this.a.get(paramInt);
    parampb.a.setText(parampb.c.a());
    parampb.b.setText(parampb.c.a());
    parampb.b.setOnClickListener(new pa(this, parampb));
    if (parampb.c.b()) {
      parampb.b.setBackground(this.e);
      parampb.a.setTextColor(this.f);
      this.c.setText(parampb.c.a());
      return;
    } 
    parampb.b.setBackground(this.d);
    parampb.a.setTextColor(this.g);
  }
  
  public int getItemCount() {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\oz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
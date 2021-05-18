import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.List;

public class lvf<Parent extends mdt & mdp & mdx & mdn> extends mew<Parent, lvi, lvf<Parent>> implements mdo<lvf, mdt> {
  private lvh a;
  
  private kuw i;
  
  private boolean j = true;
  
  private boolean k = true;
  
  private void b(lvi paramlvi) {
    lvi.c(paramlvi).setVisibility(0);
    Context context = paramlvi.itemView.getContext();
    lvi.c(paramlvi).setTextColor(context.getResources().getColor(2131624121));
    lvi.c(paramlvi).setBackgroundDrawable(context.getResources().getDrawable(2130837669));
  }
  
  private void c(lvi paramlvi) {
    lvi.c(paramlvi).setVisibility(0);
    Context context = paramlvi.itemView.getContext();
    lvi.c(paramlvi).setTextColor(context.getResources().getColor(2131624121));
    lvi.c(paramlvi).setBackgroundDrawable(context.getResources().getDrawable(2130837660));
  }
  
  public lvf a(lvh paramlvh) {
    this.a = paramlvh;
    return this;
  }
  
  public lvf a(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public lvi a(View paramView) {
    return new lvi(paramView);
  }
  
  public void a(lvi paramlvi) {
    super.a(paramlvi);
    lvi.a(paramlvi).setImageResource(0);
    lvi.b(paramlvi).setText(null);
    lvi.c(paramlvi).setBackgroundResource(0);
    lvi.c(paramlvi).setText(null);
    lvi.c(paramlvi).setVisibility(8);
  }
  
  public void a(lvi paramlvi, List<Object> paramList) {
    super.a(paramlvi, paramList);
    Resources resources = paramlvi.itemView.getContext().getResources();
    lvi.a(paramlvi).setImageResource(2130838386);
    lvi.b(paramlvi).setText(resources.getString(2131297245));
    b(paramlvi);
    lvi.c(paramlvi).setText(resources.getString(2131296386));
    lvi.c(paramlvi).setEnabled(this.j);
    lvi.c(paramlvi).setOnClickListener(new lvg(this));
  }
  
  public boolean a() {
    return this.k;
  }
  
  public int b() {
    return 2131755012;
  }
  
  public lvf b(boolean paramBoolean) {
    this.k = paramBoolean;
    return this;
  }
  
  public int c() {
    return 2130969440;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
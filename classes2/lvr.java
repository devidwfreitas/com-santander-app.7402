import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.List;

public class lvr<Parent extends mdt & mdp & mdx & mdn> extends mew<Parent, lvw, lvr<Parent>> implements mdo<lvr, mdt> {
  public lvv a = lvv.ENVIAR;
  
  private boolean i = true;
  
  private lvu j;
  
  private kwk k;
  
  private boolean l;
  
  private boolean m = true;
  
  private void b(lvw paramlvw) {
    lvw.d(paramlvw).setVisibility(0);
    Context context = paramlvw.itemView.getContext();
    lvw.d(paramlvw).setTextColor(context.getResources().getColor(2131624121));
    lvw.d(paramlvw).setBackgroundDrawable(context.getResources().getDrawable(2130837669));
  }
  
  private void c(lvw paramlvw) {
    lvw.d(paramlvw).setVisibility(0);
    Context context = paramlvw.itemView.getContext();
    lvw.d(paramlvw).setTextColor(context.getResources().getColor(2131624121));
    lvw.d(paramlvw).setBackgroundDrawable(context.getResources().getDrawable(2130837660));
  }
  
  public lvr a(kwk paramkwk) {
    this.k = paramkwk;
    return this;
  }
  
  public lvr a(lvu paramlvu) {
    this.j = paramlvu;
    return this;
  }
  
  public lvr a(lvv paramlvv) {
    this.a = paramlvv;
    return this;
  }
  
  public lvr a(boolean paramBoolean) {
    this.l = paramBoolean;
    return this;
  }
  
  public lvw a(View paramView) {
    return new lvw(paramView);
  }
  
  public void a(lvw paramlvw) {
    super.a(paramlvw);
    lvw.a(paramlvw).setImageResource(0);
    lvw.c(paramlvw).setText(null);
    lvw.b(paramlvw).setText(null);
    lvw.d(paramlvw).setBackgroundResource(0);
    lvw.d(paramlvw).setText(null);
    lvw.d(paramlvw).setVisibility(8);
    lvw.d(paramlvw).setEnabled(this.i);
  }
  
  public void a(lvw paramlvw, List<Object> paramList) {
    super.a(paramlvw, paramList);
    if (this.l) {
      lvw.a(paramlvw).setImageResource(2130838637);
    } else {
      lvw.a(paramlvw).setImageResource(2130838667);
    } 
    if (this.k.d().k() != null && !this.k.d().k().equals("")) {
      lvw.b(paramlvw).setVisibility(0);
      lvw.b(paramlvw).setText(this.k.d().k());
    } 
    lvw.c(paramlvw).setText(this.k.g());
    lvw.d(paramlvw).setOnClickListener(new lvs(this));
    Context context = paramlvw.itemView.getContext();
    switch (lvt.a[this.a.ordinal()]) {
      default:
        lvw.d(paramlvw).setVisibility(8);
        lvw.d(paramlvw).setEnabled(this.i);
        return;
      case 1:
        b(paramlvw);
        lvw.d(paramlvw).setText(context.getResources().getString(2131298540));
        lvw.d(paramlvw).setEnabled(this.i);
        return;
      case 2:
        b(paramlvw);
        lvw.d(paramlvw).setText(context.getResources().getString(2131298474));
        lvw.d(paramlvw).setEnabled(this.i);
        return;
      case 3:
        c(paramlvw);
        lvw.d(paramlvw).setText(context.getResources().getString(2131299067));
        lvw.d(paramlvw).setEnabled(this.i);
        return;
      case 4:
        break;
    } 
    lvw.d(paramlvw).setVisibility(8);
    lvw.d(paramlvw).setEnabled(this.i);
  }
  
  public boolean a() {
    return this.m;
  }
  
  public int b() {
    return 2131755015;
  }
  
  public lvr b(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public int c() {
    return 2130969444;
  }
  
  public lvr d(boolean paramBoolean) {
    this.m = paramBoolean;
    return this;
  }
  
  public boolean g() {
    return this.l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
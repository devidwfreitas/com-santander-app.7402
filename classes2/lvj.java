import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import java.util.List;

public class lvj<Parent extends mdt & mdp & mdx & mdn> extends mew<Parent, lvm, lvj<Parent>> implements mdo<lvj, mdt> {
  private lvl a;
  
  private kwh i;
  
  private boolean j = true;
  
  private void b(lvm paramlvm) {
    lvm.a(paramlvm).setVisibility(0);
    Context context = paramlvm.itemView.getContext();
    lvm.a(paramlvm).setTextColor(context.getResources().getColor(2131624121));
    lvm.a(paramlvm).setBackgroundDrawable(context.getResources().getDrawable(2130837669));
  }
  
  private void c(lvm paramlvm) {
    lvm.a(paramlvm).setVisibility(0);
    Context context = paramlvm.itemView.getContext();
    lvm.a(paramlvm).setTextColor(context.getResources().getColor(2131624121));
    lvm.a(paramlvm).setBackgroundDrawable(context.getResources().getDrawable(2130837660));
  }
  
  public lvj a(kwh paramkwh) {
    this.i = paramkwh;
    return this;
  }
  
  public lvj a(lvl paramlvl) {
    this.a = paramlvl;
    return this;
  }
  
  public lvj a(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public lvm a(View paramView) {
    return new lvm(paramView);
  }
  
  public void a(lvm paramlvm) {
    super.a(paramlvm);
    lvm.d(paramlvm).setImageResource(0);
    lvm.c(paramlvm).setText(null);
    lvm.d(paramlvm).setImageResource(0);
    lvm.a(paramlvm).setBackgroundResource(0);
    lvm.a(paramlvm).setText(null);
    lvm.a(paramlvm).setOnClickListener(null);
    lvm.a(paramlvm).setVisibility(8);
  }
  
  public void a(lvm paramlvm, List<Object> paramList) {
    boolean bool;
    super.a(paramlvm, paramList);
    Resources resources = paramlvm.itemView.getResources();
    Button button = lvm.a(paramlvm);
    if (this.i.c()) {
      bool = true;
    } else {
      bool = false;
    } 
    button.setVisibility(bool);
    lvm.a(paramlvm).setEnabled(this.i.i());
    if (this.i.h()) {
      lvm.b(paramlvm).setVisibility(8);
      lvm.c(paramlvm).setText(resources.getText(2131298353));
    } else {
      lvm.b(paramlvm).setVisibility(0);
      lvm.b(paramlvm).setText(resources.getText(2131298353));
      lvm.c(paramlvm).setText(String.format(resources.getString(2131297501), new Object[] { this.i.e(), this.i.f(), this.i.g() }));
    } 
    if (this.i.b() == kwi.SEND) {
      b(paramlvm);
      lvm.a(paramlvm).setText(resources.getString(2131298540));
    } else {
      c(paramlvm);
      lvm.a(paramlvm).setText(resources.getString(2131297268));
    } 
    if (this.i.a()) {
      lvm.d(paramlvm).setImageResource(2130838637);
    } else {
      lvm.d(paramlvm).setImageResource(2130838667);
    } 
    lvm.a(paramlvm).setOnClickListener(new lvk(this));
  }
  
  public boolean a() {
    return this.j;
  }
  
  public int b() {
    return 2131755013;
  }
  
  public int c() {
    return 2130969441;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class anc extends amv<and> {
  protected final TextView a = (TextView)this.itemView.findViewById(als.agcc_text_view);
  
  protected final TextView b = (TextView)this.itemView.findViewById(als.balance_label);
  
  protected final TextView c = (TextView)this.itemView.findViewById(als.balance_text_view);
  
  protected final TextView d = (TextView)this.itemView.findViewById(als.balance_total_text_view);
  
  protected final LinearLayout e = (LinearLayout)this.itemView.findViewById(als.balance_container);
  
  protected final LinearLayout f = (LinearLayout)this.itemView.findViewById(als.balance_total_container);
  
  protected final TextView g = (TextView)this.itemView.findViewById(als.hidden_text_view);
  
  anc(ViewGroup paramViewGroup) {
    super(paramViewGroup, alu.santander_adapter_drop_down_conta);
  }
  
  private void a() {
    this.g.setVisibility(0);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
  }
  
  private void b(and paramand) {
    String str = paramand.c();
    int i = ContextCompat.getColor(this.itemView.getContext(), 17170444);
    if (str.startsWith("-"))
      i = ContextCompat.getColor(this.itemView.getContext(), alp.santander_error); 
    this.b.setTextColor(i);
    this.c.setText(str);
    this.c.setTextColor(i);
  }
  
  private void c(and paramand) {
    String str = paramand.d();
    if (TextUtils.isEmpty(str)) {
      this.f.setVisibility(8);
      return;
    } 
    int i = ContextCompat.getColor(this.itemView.getContext(), 17170444);
    if (str.startsWith("-"))
      i = ContextCompat.getColor(this.itemView.getContext(), alp.santander_error); 
    this.d.setText(String.format("R$ %s", new Object[] { str }));
    this.d.setTextColor(i);
    this.f.setVisibility(0);
  }
  
  private void d(and paramand) {
    byte b = 8;
    this.g.setVisibility(8);
    this.e.setVisibility(0);
    LinearLayout linearLayout = this.f;
    if (!TextUtils.isEmpty(paramand.d()))
      b = 0; 
    linearLayout.setVisibility(b);
  }
  
  public void a(and paramand) {
    this.a.setText(String.format("%s / %s", new Object[] { paramand.a(), paramand.b() }));
    this.c.setText(paramand.c());
    b(paramand);
    c(paramand);
    if (paramand.e()) {
      a();
      return;
    } 
    d(paramand);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
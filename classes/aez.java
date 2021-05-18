import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import br.com.santander.modulo.ddav1.components.CurrencyFormattedTextView;

final class aez extends RecyclerView.ViewHolder {
  RadioButton a;
  
  TextView b;
  
  TextView c;
  
  CurrencyFormattedTextView d;
  
  TextView e;
  
  private ImageView f;
  
  aez(aey paramaey, View paramView) {
    super(paramView);
    this.a = (RadioButton)paramView.findViewById(adr.radio_button_item_selected);
    this.b = (TextView)paramView.findViewById(adr.text_view_title);
    this.c = (TextView)paramView.findViewById(adr.text_view_rs);
    this.d = (CurrencyFormattedTextView)paramView.findViewById(adr.text_view_value);
    this.e = (TextView)paramView.findViewById(adr.text_view_due_date);
    this.f = (ImageView)paramView.findViewById(adr.image_view_details);
    aey.a(this.b.getTextColors());
    this.a.setOnClickListener(new afa(this));
    ((FrameLayout)this.f.getParent()).setOnClickListener(new afb(this));
  }
  
  private void a() {
    this.a.setOnClickListener(new afa(this));
    ((FrameLayout)this.f.getParent()).setOnClickListener(new afb(this));
  }
  
  private void a(View paramView) {
    this.a = (RadioButton)paramView.findViewById(adr.radio_button_item_selected);
    this.b = (TextView)paramView.findViewById(adr.text_view_title);
    this.c = (TextView)paramView.findViewById(adr.text_view_rs);
    this.d = (CurrencyFormattedTextView)paramView.findViewById(adr.text_view_value);
    this.e = (TextView)paramView.findViewById(adr.text_view_due_date);
    this.f = (ImageView)paramView.findViewById(adr.image_view_details);
    aey.a(this.b.getTextColors());
  }
  
  private void b() {
    try {
      aey.a(this.g, getAdapterPosition());
      adh.a().a("Pagamentos_DDA", aea.a().d().c(((aeb)aey.b(this.g).get(aey.a(this.g))).c()));
      aey.c(this.g).b();
      this.g.notifyDataSetChanged();
      return;
    } catch (Exception exception) {
      Log.e(aey.class.getName(), Log.getStackTraceString(exception));
      return;
    } 
  }
  
  private void c() {
    aey.c(this.g).a(aey.b(this.g).get(getAdapterPosition()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
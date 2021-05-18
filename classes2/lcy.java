import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputEditText;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

public class lcy extends Fragment {
  private lde a;
  
  private TextInputEditText b;
  
  private TextInputEditText c;
  
  private Button d;
  
  private boolean e = false;
  
  private boolean f = false;
  
  public static lcy a() {
    return new lcy();
  }
  
  private void a(View paramView) {
    this.b = (TextInputEditText)paramView.findViewById(2131757371);
    this.c = (TextInputEditText)paramView.findViewById(2131757372);
    this.d = (Button)paramView.findViewById(2131757373);
  }
  
  private void b() {
    mhj.d((View)this.d);
    this.b.addTextChangedListener(new ldb(this));
    this.c.addTextChangedListener(new ldc(this));
    this.c.addTextChangedListener(mhb.a("(##)#####-####", (EditText)this.c));
    this.d.setOnClickListener(new ldd(this));
  }
  
  private void c() {
    if (this.e && this.f) {
      mhj.e((View)this.d);
      return;
    } 
    mhj.d((View)this.d);
  }
  
  public void a(lde paramlde) {
    this.a = paramlde;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969057, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
  
  public void onPause() {
    super.onPause();
    this.b.setOnFocusChangeListener(null);
    this.c.setOnFocusChangeListener(null);
  }
  
  public void onResume() {
    super.onResume();
    if (ldn.a != null)
      this.b.setText(ldn.a); 
    this.b.setOnFocusChangeListener(new lcz(this));
    if (ldn.b != null)
      this.c.setText(ldn.b); 
    this.c.setOnFocusChangeListener(new lda(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
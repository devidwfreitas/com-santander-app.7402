import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class zf extends acr {
  private Fragment a;
  
  private ack c;
  
  private View d;
  
  private ys e;
  
  private EditText f;
  
  private Button g;
  
  private String[] h;
  
  private String i;
  
  private acg j;
  
  public zf(ack paramack, Fragment paramFragment, View paramView, ys paramys) {
    super(paramack);
    this.a = paramFragment;
    this.c = paramack;
    this.d = paramView;
    this.e = paramys;
    this.h = paramys.a().split("");
    if (paramack.a() == null) {
      this.j = new acg();
    } else {
      this.j = (acg)paramack.a();
    } 
    a();
  }
  
  private void a() {
    TextView textView = (TextView)this.d.findViewById(la.validacao_cso_textview_posicao);
    Button button1 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_1);
    Button button2 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_2);
    Button button3 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_3);
    Button button4 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_4);
    Button button5 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_5);
    Button button6 = (Button)this.d.findViewById(la.validacao_cso_button_opcoes_6);
    this.f = (EditText)this.d.findViewById(la.validacao_cso_edit_text_codigo);
    this.g = (Button)this.d.findViewById(la.validacao_cso_button_confirmar);
    textView.setText(this.e.b());
    button1.setText(this.h[1] + " ou " + this.h[2]);
    button2.setText(this.h[3] + " ou " + this.h[4]);
    button3.setText(this.h[5] + " ou " + this.h[6]);
    button4.setText(this.h[7] + " ou " + this.h[8]);
    button5.setText(this.h[9] + " ou " + this.h[10]);
    this.i = "";
    button1.setOnClickListener(new zg(this));
    button2.setOnClickListener(new zh(this));
    button3.setOnClickListener(new zi(this));
    button4.setOnClickListener(new zj(this));
    button5.setOnClickListener(new zk(this));
    button6.setOnClickListener(new zl(this));
    this.g.setOnClickListener(new zm(this));
  }
  
  private void d(String paramString) {
    if (this.i.length() < 4) {
      boolean bool;
      this.i += paramString;
      this.f.setText(this.f.getText().toString() + "*");
      Button button = this.g;
      if (this.i.length() == 4) {
        bool = true;
      } else {
        bool = false;
      } 
      button.setEnabled(bool);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
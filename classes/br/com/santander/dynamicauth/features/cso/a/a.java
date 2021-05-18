package br.com.santander.dynamicauth.features.cso.a;

import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import java.util.ArrayList;
import kd;
import ke;
import kf;
import kg;
import kh;
import ki;
import kj;

public class a {
  private Activity a;
  
  private String b = "";
  
  private String c = "";
  
  private String d = "";
  
  private String e = "";
  
  public a(Activity paramActivity) {
    this.a = paramActivity;
    b();
    c();
    d();
    e();
  }
  
  private void a(boolean paramBoolean) {
    EditText editText = (EditText)this.a.findViewById(R.id.validacao_cso_edit_text_codigo);
    String str = "";
    if (editText.getText() != null) {
      String str1 = editText.getText().toString();
      if (paramBoolean) {
        str = str1 + "*";
      } else {
        str = str1;
        if (!str1.isEmpty())
          str = str1.substring(0, str1.length() - 1); 
      } 
    } else if (paramBoolean) {
      str = "" + "*";
    } 
    editText.setText(str);
  }
  
  private void b() {
    this.b = this.a.getIntent().getStringExtra("CSO_ID");
    this.d = this.a.getIntent().getStringExtra("CSO_POS");
    this.c = this.a.getIntent().getStringExtra("CSO_SEQ");
  }
  
  private void c() {
    ((TextView)this.a.findViewById(R.id.validacao_cso_textview_identificacao)).setText(this.b);
  }
  
  private void d() {
    TextView textView = (TextView)this.a.findViewById(R.id.validacao_cso_text_view_posicao);
    if (this.d.trim().length() < 2)
      this.d = "0" + this.d.trim(); 
    textView.setText(this.d);
  }
  
  private void e() {
    String[] arrayOfString = this.c.split("");
    ArrayList<Button> arrayList = new ArrayList();
    LinearLayout linearLayout1 = (LinearLayout)this.a.findViewById(R.id.validacao_cso_linear_layout_top_row);
    LinearLayout linearLayout2 = (LinearLayout)this.a.findViewById(R.id.validacao_cso_linear_layout_bottom_row);
    int i;
    for (i = 0; i < linearLayout1.getChildCount(); i++)
      arrayList.add((Button)linearLayout1.getChildAt(i)); 
    for (i = 0; i < linearLayout2.getChildCount(); i++)
      arrayList.add((Button)linearLayout2.getChildAt(i)); 
    if (arrayList.size() == 6) {
      ((Button)arrayList.get(0)).setText(arrayOfString[1] + " ou " + arrayOfString[2]);
      ((Button)arrayList.get(0)).setOnClickListener((View.OnClickListener)new kd(this, arrayOfString));
      ((Button)arrayList.get(1)).setText(arrayOfString[3] + " ou " + arrayOfString[4]);
      ((Button)arrayList.get(1)).setOnClickListener((View.OnClickListener)new ke(this, arrayOfString));
      ((Button)arrayList.get(2)).setText(arrayOfString[5] + " ou " + arrayOfString[6]);
      ((Button)arrayList.get(2)).setOnClickListener((View.OnClickListener)new kf(this, arrayOfString));
      ((Button)arrayList.get(3)).setText(arrayOfString[7] + " ou " + arrayOfString[8]);
      ((Button)arrayList.get(3)).setOnClickListener((View.OnClickListener)new kg(this, arrayOfString));
      ((Button)arrayList.get(4)).setText(arrayOfString[9] + " ou " + arrayOfString[10]);
      ((Button)arrayList.get(4)).setOnClickListener((View.OnClickListener)new kh(this, arrayOfString));
      ((Button)arrayList.get(5)).setOnClickListener((View.OnClickListener)new ki(this));
    } 
    ((Button)this.a.findViewById(R.id.validacao_cso_button_confirmar)).setOnClickListener((View.OnClickListener)new kj(this));
  }
  
  public void a() {
    DynamicAuthParameters.getInstance().getCallBack().onFinish();
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\cso\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
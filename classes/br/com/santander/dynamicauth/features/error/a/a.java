package br.com.santander.dynamicauth.features.error.a;

import android.app.Activity;
import android.os.Build;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import kk;

public class a {
  private Activity a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  public a(Activity paramActivity) {
    this.a = paramActivity;
    this.b = this.a.getIntent().getStringExtra("ERROR_TITLE");
    this.c = this.a.getIntent().getStringExtra("ERROR_MSG");
    this.d = this.a.getIntent().getStringExtra("ERROR_BTN");
    this.e = this.a.getIntent().getStringExtra("ERROR_CODE");
    this.a.getIntent().removeExtra("ERROR_TITLE");
    this.a.getIntent().removeExtra("ERROR_MSG");
    this.a.getIntent().removeExtra("ERROR_BTN");
    this.a.getIntent().removeExtra("ERROR_CODE");
    a();
  }
  
  private void a() {
    int i;
    String str;
    ImageView imageView = (ImageView)this.a.findViewById(R.id.img_error);
    if (this.e.equals(DynamicAuthEnum.ERRO_OSG_CODE_BLOCKED_DEVICE.toString())) {
      i = R.drawable.ic_aviso;
    } else {
      i = R.drawable.ic_alerta;
    } 
    imageView.setImageResource(i);
    TextView textView = (TextView)this.a.findViewById(R.id.textview_error_title);
    if (this.b != null) {
      str = this.b;
    } else {
      str = this.a.getString(R.string.error_title);
    } 
    textView.setText(str);
    textView = (TextView)this.a.findViewById(R.id.textview_error_msg);
    if (Build.VERSION.SDK_INT >= 24) {
      if (this.c != null) {
        str = this.c;
      } else {
        str = this.a.getString(R.string.error_msg);
      } 
      textView.setText((CharSequence)Html.fromHtml(str, 63));
    } else {
      if (this.c != null) {
        str = this.c;
      } else {
        str = this.a.getString(R.string.error_msg);
      } 
      textView.setText((CharSequence)Html.fromHtml(str));
    } 
    textView = (TextView)this.a.findViewById(R.id.textview_error_code);
    if (this.e != null) {
      str = this.e;
    } else {
      str = "";
    } 
    textView.setText(str);
    Button button = (Button)this.a.findViewById(R.id.button_error);
    if (this.d != null) {
      str = this.d;
    } else {
      str = this.a.getString(R.string.error_btn);
    } 
    button.setText(str);
    button.setOnClickListener((View.OnClickListener)new kk(this));
  }
  
  public void a(boolean paramBoolean) {
    this.a.finish();
    if (paramBoolean)
      DynamicAuthParameters.getInstance().getCallBack().onFinish(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\error\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
package br.com.santander.dynamicauth.features.token.a;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.token.view.TokenActivity;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import java.util.HashMap;
import java.util.Map;

public class a implements View.OnClickListener {
  private TokenActivity a;
  
  private EditText b;
  
  private EditText c;
  
  private Map<String, String> d;
  
  public a(TokenActivity paramTokenActivity) {
    this.a = paramTokenActivity;
    boolean bool = paramTokenActivity.getIntent().getBooleanExtra("TOKEN_SHOW_SERIAL", false);
    this.b = (EditText)paramTokenActivity.findViewById(R.id.validation_serial_number_field);
    this.c = (EditText)paramTokenActivity.findViewById(R.id.validation_password_field);
    ((Button)paramTokenActivity.findViewById(R.id.token_continue)).setOnClickListener(this);
    if (bool) {
      this.b.setVisibility(0);
    } else {
      this.b.setVisibility(8);
    } 
    if (this.d == null) {
      this.d = new HashMap<String, String>();
      return;
    } 
    this.d.clear();
  }
  
  private boolean b() {
    boolean bool1;
    boolean bool2 = true;
    if (this.b.getVisibility() == 0) {
      if (this.b.getText() != null && !this.b.getText().toString().isEmpty()) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
    } else {
      bool1 = true;
    } 
    if (this.b.getText() == null || this.b.getText().toString().isEmpty())
      bool2 = false; 
    return bool1 & bool2;
  }
  
  public void a() {
    DynamicAuthParameters.getInstance().getCallBack().onFinish();
    this.a.finish();
  }
  
  public void onClick(View paramView) {
    if (paramView.getId() == R.id.token_continue && b()) {
      if (this.b.getVisibility() == 0)
        this.d.put(DynamicAuthEnum.TOKEN_FISICO.toString(), this.b.getText().toString()); 
      this.d.put(DynamicAuthEnum.CODE_TOKEN_FISICO.toString(), this.c.getText().toString());
      DynamicAuthParameters.getInstance().getCallBack().onSuccess(new DynamicAuthResponse(DynamicAuthEnum.CODE_TOKEN_FISICO, this.d));
      this.a.finish();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\token\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
package br.com.santander.dynamicauth.features.cardpassword.a;

import android.os.Build;
import android.support.v4.content.res.ResourcesCompat;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.cardpassword.view.CardPwdActivity;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import br.com.santander.uisdk.edittext.SantanderEditText;
import br.com.santander.uisdk.textview.SantanderTextView;

public class a implements View.OnClickListener {
  private CardPwdActivity a;
  
  private SantanderEditText b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private SantanderTextView e;
  
  private Button f;
  
  private LinearLayout g;
  
  public a(CardPwdActivity paramCardPwdActivity) {
    this.a = paramCardPwdActivity;
    b();
  }
  
  private void b() {
    boolean bool;
    String str;
    this.e = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_card_password_title);
    this.b = (SantanderEditText)this.a.findViewById(R.id.dynamic_auth_card_password_numeric_field);
    this.c = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_card_password_error_text_view);
    this.g = (LinearLayout)this.a.findViewById(R.id.dynamic_auth_card_password_numeric_layout);
    this.f = (Button)this.a.findViewById(R.id.dynamic_auth_card_password_confirm_button);
    this.f.setOnClickListener(this);
    this.d = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_card_password_fechar);
    this.d.setOnClickListener(this);
    if (Build.VERSION.SDK_INT >= 24) {
      this.e.setText((CharSequence)Html.fromHtml(this.a.getString(R.string.card_password_title), 63));
    } else {
      this.e.setText((CharSequence)Html.fromHtml(this.a.getString(R.string.card_password_title)));
    } 
    DynamicAuthEnum dynamicAuthEnum = (DynamicAuthEnum)this.a.getIntent().getSerializableExtra("ATTEMPT");
    this.a.getIntent().removeExtra("ATTEMPT");
    SantanderTextView santanderTextView = this.c;
    if (dynamicAuthEnum == DynamicAuthEnum.FIRST_ATTEMPT) {
      bool = true;
    } else {
      bool = false;
    } 
    santanderTextView.setVisibility(bool);
    santanderTextView = this.c;
    if (dynamicAuthEnum == DynamicAuthEnum.NEXT_ATTEMPT) {
      str = this.a.getString(R.string.card_password_tente_novamente);
    } else if (str == DynamicAuthEnum.LAST_ATTEMPT) {
      str = this.a.getString(R.string.card_password_ultima_tentativa);
    } else {
      str = "";
    } 
    santanderTextView.setText(str);
  }
  
  private boolean c() {
    boolean bool1;
    boolean bool2 = true;
    if (this.b.getText() != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.b.getText().toString().isEmpty())
      bool2 = false; 
    int i = bool1 & true & bool2;
    if (i == 0) {
      this.c.setVisibility(0);
      this.c.setText("Digite a senha.");
      this.g.setBackground(ResourcesCompat.getDrawable(this.a.getResources(), R.drawable.style_red_botton_border, null));
      return i;
    } 
    if (this.c.getVisibility() == 0) {
      this.c.setVisibility(4);
      this.g.setBackground(ResourcesCompat.getDrawable(this.a.getResources(), R.drawable.style_gray_botton_border, null));
      return i;
    } 
    return i;
  }
  
  public void a() {
    DynamicAuthParameters.getInstance().getCallBack().onFinish();
    this.a.finish();
  }
  
  public void onClick(View paramView) {
    DynamicAuthResponse dynamicAuthResponse;
    if (paramView.getId() == R.id.dynamic_auth_card_password_confirm_button && c()) {
      dynamicAuthResponse = new DynamicAuthResponse();
      dynamicAuthResponse.setAuthType(DynamicAuthEnum.CODE_CARD_PWD);
      dynamicAuthResponse.setData(this.b.getText().toString());
      DynamicAuthParameters.getInstance().getCallBack().onSuccess(dynamicAuthResponse);
      this.a.finish();
      return;
    } 
    if (dynamicAuthResponse.getId() == R.id.dynamic_auth_card_password_fechar) {
      a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\cardpassword\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
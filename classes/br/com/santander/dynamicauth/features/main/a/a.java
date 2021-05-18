package br.com.santander.dynamicauth.features.main.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import ano;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.cardpassword.view.CardPwdActivity;
import br.com.santander.dynamicauth.features.cso.view.CsoActivity;
import br.com.santander.dynamicauth.features.idsantander.view.IdSantanderActivity;
import br.com.santander.dynamicauth.features.main.view.LoadingActivity;
import br.com.santander.dynamicauth.features.sms.view.SmsActivity;
import br.com.santander.dynamicauth.features.token.view.TokenActivity;
import java.io.Serializable;

public class a {
  private static LoadingActivity a = null;
  
  private static Dialog b;
  
  public a(LoadingActivity paramLoadingActivity) {
    if (a != null)
      a.finish(); 
    a = paramLoadingActivity;
    b = ano.a((Activity)a);
  }
  
  private void a(DynamicAuthEnum paramDynamicAuthEnum) {
    Intent intent = new Intent((Context)a, SmsActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("ATTEMPT", (Serializable)paramDynamicAuthEnum);
    a.startActivity(intent);
  }
  
  private void a(String paramString) {
    Intent intent = new Intent((Context)a, IdSantanderActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("ID_SANTANDER_TYPE", "ID_SANTANDER_QR");
    intent.putExtra("ID_SANTANDER_QR", paramString);
    a.startActivity(intent);
  }
  
  private void a(String paramString1, String paramString2, String paramString3) {
    Intent intent = new Intent((Context)a, CsoActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CSO_ID", paramString1);
    intent.putExtra("CSO_POS", paramString2);
    intent.putExtra("CSO_SEQ", paramString3);
    a.startActivity(intent);
  }
  
  private void a(boolean paramBoolean) {
    Intent intent = new Intent((Context)a, TokenActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("TOKEN_SHOW_SERIAL", paramBoolean);
    a.startActivity(intent);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, DynamicAuthEnum paramDynamicAuthEnum) {
    Intent intent = new Intent((Context)a, CardPwdActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("CARD_CVV", paramBoolean1);
    intent.putExtra("CARD_DOCUMENT", paramBoolean3);
    intent.putExtra("CARD_EXPIRATION", paramBoolean2);
    intent.putExtra("ATTEMPT", (Serializable)paramDynamicAuthEnum);
    a.startActivity(intent);
  }
  
  public static void c() {
    if (a != null) {
      b.dismiss();
      a.finish();
    } 
  }
  
  private void d() {
    Intent intent = new Intent((Context)a, IdSantanderActivity.class);
    intent.setFlags(268435456);
    intent.putExtra("ID_SANTANDER_TYPE", "ID_SANTANDER_OTP");
    a.startActivity(intent);
  }
  
  public void a() {
    int i = a.getIntent().getIntExtra("CHALLENGE_TYPE", -1);
    a.getIntent().removeExtra("CHALLENGE_TYPE");
    if (i == DynamicAuthEnum.CODE_CSO.getValue()) {
      String str1 = a.getIntent().getStringExtra("CSO_ID");
      String str2 = a.getIntent().getStringExtra("CSO_SEQ");
      String str3 = a.getIntent().getStringExtra("CSO_POS");
      a.getIntent().removeExtra("CSO_ID");
      a.getIntent().removeExtra("CSO_SEQ");
      a.getIntent().removeExtra("CSO_POS");
      a(str1, str3, str2);
      return;
    } 
    if (i == DynamicAuthEnum.CODE_IDSANTANDER_OTP.getValue()) {
      d();
      return;
    } 
    if (i == DynamicAuthEnum.CODE_TOKEN_SMS.getValue()) {
      DynamicAuthEnum dynamicAuthEnum = (DynamicAuthEnum)a.getIntent().getSerializableExtra("ATTEMPT");
      a.getIntent().removeExtra("ATTEMPT");
      a(dynamicAuthEnum);
      return;
    } 
    if (i == DynamicAuthEnum.CODE_IDSANTANDER_QRCODE.getValue()) {
      String str = a.getIntent().getStringExtra("ID_SANTANDER_QR");
      a.getIntent().removeExtra("ID_SANTANDER_QR");
      a(str);
      return;
    } 
    if (i == DynamicAuthEnum.CODE_CARD_PWD.getValue()) {
      boolean bool1 = a.getIntent().getBooleanExtra("CARD_CVV", false);
      boolean bool2 = a.getIntent().getBooleanExtra("CARD_DOCUMENT", false);
      boolean bool3 = a.getIntent().getBooleanExtra("CARD_EXPIRATION", false);
      DynamicAuthEnum dynamicAuthEnum = (DynamicAuthEnum)a.getIntent().getSerializableExtra("ATTEMPT");
      a.getIntent().removeExtra("CARD_CVV");
      a.getIntent().removeExtra("CARD_DOCUMENT");
      a.getIntent().removeExtra("CARD_EXPIRATION");
      a.getIntent().removeExtra("ATTEMPT");
      a(bool1, bool3, bool2, dynamicAuthEnum);
      return;
    } 
    if (i == DynamicAuthEnum.TOKEN_FISICO.getValue()) {
      boolean bool = a.getIntent().getBooleanExtra("TOKEN_SHOW_SERIAL", false);
      a.getIntent().removeExtra("TOKEN_SHOW_SERIAL");
      a(bool);
      return;
    } 
  }
  
  public void b() {
    if (b != null)
      b.show(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\main\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
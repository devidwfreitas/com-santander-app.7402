package br.com.santander.dynamicauth.features.sms.viewmodel;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.CountDownTimer;
import android.provider.Telephony;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.telephony.SmsMessage;
import android.text.Html;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import br.com.santander.dynamicauth.DynamicAuthService;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.a.a.a;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.sms.a.a;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import br.com.santander.uisdk.textview.SantanderTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kp;
import kq;

public class SmsViewModel extends BroadcastReceiver implements View.OnClickListener {
  private Activity a;
  
  private EditText b;
  
  private Button c;
  
  private ImageView d;
  
  private HashMap<String, List<a>> e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private SantanderTextView h;
  
  private a i;
  
  private CountDownTimer j = (CountDownTimer)new kp(this, 60000L, 1000L);
  
  public SmsViewModel(Activity paramActivity) {
    this.a = paramActivity;
    paramActivity.registerReceiver(this, new IntentFilter("android.provider.Telephony.SMS_RECEIVED"));
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(paramActivity.getApplicationContext(), "android.permission.READ_SMS") == 0) {
        a();
        return;
      } 
      ActivityCompat.requestPermissions(paramActivity, new String[] { "android.permission.READ_SMS" }, 0);
      return;
    } 
    a();
  }
  
  private boolean a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<a> iterator = ((List)this.e.get(paramString)).iterator();
    while (iterator.hasNext()) {
      stringBuilder.append(((a)iterator.next()).a());
      stringBuilder.append("\n");
    } 
    return (new a(stringBuilder.toString())).a().booleanValue();
  }
  
  private String b(String paramString) {
    String str2 = null;
    Pattern pattern = Pattern.compile("Token \\s*(-?\\d{6}(?:\\.\\d{6})?)");
    String str1 = str2;
    if (paramString != null) {
      Matcher matcher = pattern.matcher(paramString);
      str1 = str2;
      if (matcher.find())
        str1 = matcher.group(0); 
    } 
    return str1.replaceAll("[a-zA-Z]", "").trim();
  }
  
  private void c() {
    this.b.addTextChangedListener((TextWatcher)new kq(this));
  }
  
  private void d() {
    this.b.setEnabled(true);
    this.b.setClickable(true);
    this.c.setBackground(ResourcesCompat.getDrawable(this.a.getResources(), R.drawable.style_gray_button, null));
  }
  
  public void a() {
    boolean bool;
    String str;
    this.d = (ImageView)this.a.findViewById(R.id.dynamic_auth_sms_success);
    this.b = (EditText)this.a.findViewById(R.id.dynamic_auth_sms_numeric_field);
    this.b.setClickable(true);
    this.b.setEnabled(true);
    this.c = (Button)this.a.findViewById(R.id.dynamic_auth_sms_confirm_button);
    this.g = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_sms_fechar);
    this.f = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_sms_title);
    this.h = (SantanderTextView)this.a.findViewById(R.id.dynamic_auth_sms_error_text_view);
    if (Build.VERSION.SDK_INT >= 24) {
      this.f.setText((CharSequence)Html.fromHtml(this.a.getString(R.string.sms_título), 63));
    } else {
      this.f.setText((CharSequence)Html.fromHtml(this.a.getString(R.string.sms_título)));
    } 
    DynamicAuthEnum dynamicAuthEnum = (DynamicAuthEnum)this.a.getIntent().getSerializableExtra("ATTEMPT");
    this.a.getIntent().removeExtra("ATTEMPT");
    SantanderTextView santanderTextView = this.h;
    if (dynamicAuthEnum == DynamicAuthEnum.FIRST_ATTEMPT) {
      bool = true;
    } else {
      bool = false;
    } 
    santanderTextView.setVisibility(bool);
    santanderTextView = this.h;
    if (dynamicAuthEnum == DynamicAuthEnum.NEXT_ATTEMPT || dynamicAuthEnum == DynamicAuthEnum.LAST_ATTEMPT) {
      str = this.a.getString(R.string.sms_tente_novamente);
    } else {
      str = "";
    } 
    santanderTextView.setText(str);
    this.c.setOnClickListener(this);
    this.c.setClickable(false);
    this.c.setEnabled(false);
    this.g.setOnClickListener(this);
    c();
  }
  
  public void b() {
    d();
    this.a.unregisterReceiver(this);
    DynamicAuthParameters.getInstance().getCallBack().onFinish();
    this.a.finish();
  }
  
  public void onClick(View paramView) {
    if (paramView.getId() == R.id.dynamic_auth_sms_confirm_button) {
      if (this.b.getText() != null) {
        DynamicAuthParameters.getInstance().getCallBack().onSuccess(new DynamicAuthResponse(DynamicAuthEnum.CODE_TOKEN_SMS, this.b.getText().toString()));
        d();
        this.a.unregisterReceiver(this);
        this.a.finish();
      } 
      return;
    } 
    if (paramView.getId() == R.id.dynamic_auth_sms_fechar) {
      b();
      return;
    } 
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent.getAction().equals("android.provider.Telephony.SMS_RECEIVED") && paramIntent.getExtras() != null) {
      DynamicAuthResponse dynamicAuthResponse = new DynamicAuthResponse();
      try {
        if (this.e == null)
          this.e = new HashMap<String, List<a>>(); 
        for (SmsMessage smsMessage : Telephony.Sms.Intents.getMessagesFromIntent(paramIntent)) {
          ArrayList<String> arrayList;
          String str = smsMessage.getDisplayOriginatingAddress();
          if (!this.e.containsKey(str) || this.e.get(str) == null)
            this.e.put(str, new ArrayList<a>()); 
          a a1 = new a(smsMessage.getDisplayMessageBody());
          ((List<a>)this.e.get(str)).add(a1);
          if (a(str)) {
            this.i = a1;
            dynamicAuthResponse.setAuthType(DynamicAuthEnum.ERRO_SMS_PHISHING);
            arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add(this.i.a());
            dynamicAuthResponse.setData(arrayList);
            DynamicAuthService.initError((Context)this.a, null, null, null, DynamicAuthEnum.ERRO_SMS_PHISHING.toString());
            this.a.finish();
          } else {
            str = b(arrayList.getDisplayMessageBody());
            dynamicAuthResponse.setAuthType(DynamicAuthEnum.CODE_TOKEN_SMS);
            dynamicAuthResponse.setData(str);
            if (this.b != null)
              this.b.setText(str); 
            DynamicAuthParameters.getInstance().getCallBack().onSuccess(dynamicAuthResponse);
          } 
          this.a.unregisterReceiver(this);
          this.a.finish();
        } 
      } catch (Exception exception) {
        dynamicAuthResponse.setAuthType(DynamicAuthEnum.ERRO);
        dynamicAuthResponse.setData(exception.getMessage());
        DynamicAuthService.initError((Context)this.a, null, null, null, DynamicAuthEnum.ERRO.toString());
        this.a.unregisterReceiver(this);
        this.a.finish();
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\sms\viewmodel\SmsViewModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
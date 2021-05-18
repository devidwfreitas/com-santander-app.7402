package com.santander.app.phishingsms.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Telephony;
import android.support.v4.content.ContextCompat;
import android.telephony.SmsMessage;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kcd;
import kce;
import kcl;
import kcm;
import miq;

public class PhishingSMSReceiver extends BroadcastReceiver {
  public static final String a = "android.provider.Telephony.SMS_RECEIVED";
  
  protected static HashMap<String, List<kce>> b;
  
  public static boolean d = false;
  
  private static final String g = "PhishingSMSReceiver";
  
  public kcl c;
  
  public Intent e;
  
  public Context f;
  
  private String h;
  
  private kce i;
  
  private boolean j = false;
  
  private boolean a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<kce> iterator = ((List)b.get(paramString)).iterator();
    while (iterator.hasNext()) {
      stringBuilder.append(((kce)iterator.next()).a());
      stringBuilder.append("\n");
    } 
    return (new kcd(stringBuilder.toString())).a().booleanValue();
  }
  
  private boolean b(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<kce> iterator = ((List)b.get(paramString)).iterator();
    while (iterator.hasNext()) {
      stringBuilder.append(((kce)iterator.next()).a());
      stringBuilder.append("\n");
    } 
    return (new kcd(stringBuilder.toString())).b().booleanValue();
  }
  
  private List<kce> c(String paramString) {
    ArrayList<kce> arrayList = new ArrayList();
    for (kce kce1 : b.get(paramString)) {
      if (kce1.b())
        arrayList.add(kce1); 
    } 
    return arrayList;
  }
  
  private void d() {
    if (!d) {
      d = true;
      if (this.c == null)
        this.c = (kcl)new kcm(this); 
      if (MinhaConta.b() == null)
        MinhaConta.a(this.f); 
      a();
    } 
  }
  
  private void e() {
    if (!this.c.g()) {
      this.c.h();
      this.j = true;
      return;
    } 
    b();
  }
  
  public void a() {
    if (this.e.getAction().equals("android.provider.Telephony.SMS_RECEIVED") && this.e.getExtras() != null) {
      if (b == null)
        b = new HashMap<String, List<kce>>(); 
      for (SmsMessage smsMessage : Telephony.Sms.Intents.getMessagesFromIntent(this.e)) {
        String str = smsMessage.getDisplayOriginatingAddress();
        if (!b.containsKey(str) || b.get(str) == null)
          b.put(str, new ArrayList<kce>()); 
        kce kce1 = new kce(smsMessage.getDisplayMessageBody());
        ((List<kce>)b.get(str)).add(kce1);
        if (b(str) || a(str)) {
          this.h = str;
          this.i = kce1;
          e();
        } 
      } 
      if (this.h == null && this.i == null)
        c(); 
    } 
  }
  
  public void b() {
    this.c.a(this.h, this.i);
  }
  
  public void c() {
    d = false;
    b = null;
    this.h = null;
    this.i = null;
    if (this.j) {
      miq.C().a(null);
      miq.C().a(null);
      miq.C().a(null);
    } 
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    this.e = paramIntent;
    this.f = paramContext;
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(this.f, "android.permission.READ_SMS") == 0)
        d(); 
      return;
    } 
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\phishingsms\receiver\PhishingSMSReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
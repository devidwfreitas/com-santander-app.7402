package com.santander.app.faq.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.faleconosco.presentation.FormularioFaleConoscoActivity;
import foh;
import gpu;
import grs;
import hat;
import hzt;
import ibm;
import ibo;
import ibr;
import icm;
import icn;
import ico;
import icx;
import icy;
import idj;
import java.io.Serializable;
import mxn;
import mzn;
import mzp;

public class FaqActivity extends grs implements AdapterView.OnItemClickListener, icx {
  private static final String e = "FaqActivity";
  
  private idj a;
  
  private Activity b;
  
  private ListView c;
  
  private TextView d;
  
  private Dialog f;
  
  private Dialog g;
  
  private hzt w;
  
  private void a(Intent paramIntent) {
    mzn mzn = new mzn();
    mzp mzp = mzp.RELOAD_CARTOES;
    icn icn = new icn(this, paramIntent);
    mzn.a(new mzp[] { mzp }, (foh)icn);
  }
  
  private View.OnClickListener f() {
    return (View.OnClickListener)new icm(this);
  }
  
  private View.OnClickListener g() {
    return (View.OnClickListener)new ico(this);
  }
  
  public void a() {
    this.f = mxn.b((Activity)this);
    this.f.show();
  }
  
  public void a(hzt paramhzt) {
    this.w = paramhzt;
  }
  
  public void a(ibr paramibr) {
    this.c.setAdapter((ListAdapter)new icy((Context)this, paramibr.a()));
    this.c.setOnItemClickListener(this);
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true);
  }
  
  public void b() {
    if (this.f != null) {
      this.f.dismiss();
      this.f = null;
    } 
  }
  
  public void b(String paramString) {
    mxn.d((Activity)this, paramString);
  }
  
  public void c() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public void d() {
    this.g = mxn.b((Activity)this);
  }
  
  public void d(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public void e() {
    if (this.g != null && this.g.isShowing()) {
      this.g.dismiss();
      this.g.cancel();
      this.g = null;
    } 
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramInt2 == -1)
      finish(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial onCreate : (Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: ldc 2130968676
    //   8: invokevirtual setContentView : (I)V
    //   11: aload_0
    //   12: invokevirtual getSupportActionBar : ()Landroid/support/v7/app/ActionBar;
    //   15: astore_1
    //   16: aload_1
    //   17: aload_0
    //   18: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   21: ldc 2130839072
    //   23: invokevirtual getDrawable : (I)Landroid/graphics/drawable/Drawable;
    //   26: invokevirtual setBackgroundDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   29: aload_1
    //   30: iconst_0
    //   31: invokevirtual setDisplayShowHomeEnabled : (Z)V
    //   34: aload_1
    //   35: iconst_0
    //   36: invokevirtual setDisplayShowTitleEnabled : (Z)V
    //   39: aload_1
    //   40: fconst_0
    //   41: invokevirtual setElevation : (F)V
    //   44: aload_0
    //   45: aload_0
    //   46: ldc 2131757980
    //   48: invokevirtual findViewById : (I)Landroid/view/View;
    //   51: checkcast android/widget/ListView
    //   54: putfield c : Landroid/widget/ListView;
    //   57: aload_0
    //   58: aload_0
    //   59: ldc 2131757983
    //   61: invokevirtual findViewById : (I)Landroid/view/View;
    //   64: checkcast android/widget/TextView
    //   67: putfield d : Landroid/widget/TextView;
    //   70: aload_0
    //   71: ldc 2131757982
    //   73: invokevirtual findViewById : (I)Landroid/view/View;
    //   76: checkcast android/widget/Button
    //   79: aload_0
    //   80: invokespecial g : ()Landroid/view/View$OnClickListener;
    //   83: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   86: new java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial <init> : ()V
    //   93: aload_0
    //   94: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   97: ldc 2131299258
    //   99: invokevirtual getString : (I)Ljava/lang/String;
    //   102: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload_0
    //   106: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   109: aload_0
    //   110: invokevirtual getPackageName : ()Ljava/lang/String;
    //   113: iconst_0
    //   114: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   117: getfield versionName : Ljava/lang/String;
    //   120: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual toString : ()Ljava/lang/String;
    //   126: astore_2
    //   127: aload_2
    //   128: astore_1
    //   129: invokestatic C : ()Lmiq;
    //   132: invokevirtual f : ()Lmir;
    //   135: invokevirtual A : ()Ljava/lang/String;
    //   138: ifnull -> 207
    //   141: invokestatic C : ()Lmiq;
    //   144: invokevirtual f : ()Lmir;
    //   147: invokevirtual A : ()Ljava/lang/String;
    //   150: astore_3
    //   151: aload_2
    //   152: astore_1
    //   153: aload_3
    //   154: ifnull -> 207
    //   157: aload_2
    //   158: astore_1
    //   159: aload_3
    //   160: invokevirtual isEmpty : ()Z
    //   163: ifne -> 207
    //   166: new java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial <init> : ()V
    //   173: ldc_w ' #'
    //   176: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_3
    //   180: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: astore_3
    //   184: invokestatic b : ()Z
    //   187: ifeq -> 253
    //   190: ldc_w 'R'
    //   193: astore_1
    //   194: aload_2
    //   195: aload_3
    //   196: aload_1
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual toString : ()Ljava/lang/String;
    //   203: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   206: astore_1
    //   207: aload_0
    //   208: getfield d : Landroid/widget/TextView;
    //   211: aload_1
    //   212: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   215: aload_0
    //   216: aload_0
    //   217: putfield b : Landroid/app/Activity;
    //   220: aload_0
    //   221: new idk
    //   224: dup
    //   225: aload_0
    //   226: invokespecial <init> : (Licx;)V
    //   229: putfield a : Lidj;
    //   232: invokestatic b : ()Landroid/content/Context;
    //   235: invokestatic b : (Landroid/content/Context;)Z
    //   238: ifne -> 275
    //   241: aload_0
    //   242: aload_0
    //   243: ldc_w 2131298458
    //   246: invokevirtual getString : (I)Ljava/lang/String;
    //   249: invokevirtual a : (Ljava/lang/String;)V
    //   252: return
    //   253: ldc_w ''
    //   256: astore_1
    //   257: goto -> 194
    //   260: astore_1
    //   261: ldc_w 'Error'
    //   264: aload_1
    //   265: invokevirtual toString : ()Ljava/lang/String;
    //   268: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   271: pop
    //   272: goto -> 215
    //   275: getstatic ism.b : Z
    //   278: ifne -> 299
    //   281: aload_0
    //   282: getfield a : Lidj;
    //   285: new icl
    //   288: dup
    //   289: aload_0
    //   290: invokespecial <init> : (Lcom/santander/app/faq/presentation/FaqActivity;)V
    //   293: invokeinterface a : (Lfoh;)V
    //   298: return
    //   299: aload_0
    //   300: getfield a : Lidj;
    //   303: invokeinterface c : ()V
    //   308: return
    // Exception table:
    //   from	to	target	type
    //   86	127	260	android/content/pm/PackageManager$NameNotFoundException
    //   129	151	260	android/content/pm/PackageManager$NameNotFoundException
    //   159	190	260	android/content/pm/PackageManager$NameNotFoundException
    //   194	207	260	android/content/pm/PackageManager$NameNotFoundException
    //   207	215	260	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886089, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    Intent intent;
    ibo ibo = (ibo)paramAdapterView.getAdapter().getItem(paramInt);
    ibm.b(ibo);
    if (ibo.a().equalsIgnoreCase("9")) {
      intent = new Intent((Context)this, FormularioFaleConoscoActivity.class);
      intent.putExtra("verificar_sistema_response", (Serializable)this.w);
      a(intent);
    } else {
      intent = new Intent((Context)this, FaqPerguntasActivity.class);
    } 
    intent.putExtra("faq_motivo", (Serializable)ibo);
    startActivityForResult(intent, 1);
    overridePendingTransition(2131034131, 2131034133);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return super.onOptionsItemSelected(paramMenuItem);
      case 2131759624:
        break;
    } 
    setResult(-1);
    finish();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faq\presentation\FaqActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
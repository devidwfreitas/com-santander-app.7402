package com.santander.app.meuperfil.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import com.ca.android.app.CaMDOWebView;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import myj;

@SuppressLint({"NewApi"})
public class PrimeiroAcessoTermos extends AppCompatActivity {
  private final String a = "PrimeiroAcessoTermos";
  
  private WebView b;
  
  private AlertDialog c;
  
  private AlertDialog d;
  
  private void a() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual getAssets : ()Landroid/content/res/AssetManager;
    //   6: astore #5
    //   8: iconst_0
    //   9: anewarray java/lang/String
    //   12: astore_3
    //   13: aload #5
    //   15: ldc ''
    //   17: invokevirtual list : (Ljava/lang/String;)[Ljava/lang/String;
    //   20: astore #4
    //   22: aload #4
    //   24: astore_3
    //   25: aload_3
    //   26: arraylength
    //   27: istore_2
    //   28: iload_1
    //   29: iload_2
    //   30: if_icmpge -> 162
    //   33: aload_3
    //   34: iload_1
    //   35: aaload
    //   36: astore #6
    //   38: aload #6
    //   40: ldc 'termos.pdf'
    //   42: invokevirtual equals : (Ljava/lang/Object;)Z
    //   45: ifne -> 71
    //   48: iload_1
    //   49: iconst_1
    //   50: iadd
    //   51: istore_1
    //   52: goto -> 28
    //   55: astore #4
    //   57: ldc 'tag'
    //   59: aload #4
    //   61: invokevirtual getMessage : ()Ljava/lang/String;
    //   64: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: goto -> 25
    //   71: aload #5
    //   73: aload #6
    //   75: invokevirtual open : (Ljava/lang/String;)Ljava/io/InputStream;
    //   78: astore #4
    //   80: new java/io/FileOutputStream
    //   83: dup
    //   84: new java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial <init> : ()V
    //   91: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   94: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   97: ldc '/SantanderBrasil'
    //   99: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: ldc '/'
    //   104: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: aload #6
    //   109: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual toString : ()Ljava/lang/String;
    //   115: invokespecial <init> : (Ljava/lang/String;)V
    //   118: astore #6
    //   120: aload_0
    //   121: aload #4
    //   123: aload #6
    //   125: invokespecial a : (Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   128: aload #4
    //   130: invokevirtual close : ()V
    //   133: aload #6
    //   135: invokevirtual flush : ()V
    //   138: aload #6
    //   140: invokevirtual close : ()V
    //   143: goto -> 48
    //   146: astore #4
    //   148: ldc 'tag'
    //   150: aload #4
    //   152: invokevirtual getMessage : ()Ljava/lang/String;
    //   155: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   158: pop
    //   159: goto -> 48
    //   162: return
    // Exception table:
    //   from	to	target	type
    //   13	22	55	java/io/IOException
    //   71	143	146	java/lang/Exception
  }
  
  private void a(InputStream paramInputStream, OutputStream paramOutputStream) {
    byte[] arrayOfByte = new byte[1024];
    while (true) {
      int i = paramInputStream.read(arrayOfByte);
      if (i != -1) {
        paramOutputStream.write(arrayOfByte, 0, i);
        continue;
      } 
      break;
    } 
  }
  
  public void aoSelecionarEnviar(View paramView) {
    this.c.dismiss();
    paramView = LayoutInflater.from((Context)this).inflate(2130968971, null);
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setView(paramView);
    this.d = builder.create();
    this.d.show();
  }
  
  public void aoSelecionarEnviarPorEmail(View paramView) {
    myj.a((Activity)this, "termos", "termos.pdf");
  }
  
  public void aoSelecionarVoltarParaBoasVindas(View paramView) {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969421);
    this.b = (WebView)findViewById(2131759267);
    CaMDOWebView.loadUrl(this.b, "file:///android_asset/termos.htm");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    findViewById(2131756230).requestFocus();
    a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    (new File(Environment.getExternalStorageDirectory() + "/SantanderBrasil" + "/termos.pdf")).delete();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\PrimeiroAcessoTermos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
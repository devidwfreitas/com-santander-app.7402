package chat.santander.com.modulochatsantander.view.activities;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatDialog;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import apf;
import aph;
import api;
import apk;
import apl;
import apo;
import app;
import aps;
import apu;
import aqe;
import aqn;
import aqr;
import aqs;
import ard;
import arj;
import ark;
import arp;
import arq;
import arr;
import ary;
import ase;
import asi;
import asj;
import ask;
import asl;
import asm;
import asn;
import aso;
import asq;
import ast;
import asu;
import asv;
import asw;
import asx;
import asy;
import asz;
import ata;
import atb;
import chat.santander.com.modulochatsantander.receiver.ChatEventReceiver;
import chat.santander.com.modulochatsantander.tasks.ChatTask;
import chat.santander.com.modulochatsantander.tasks.StartSession;
import chat.santander.com.modulochatsantander.tasks.TextWatcherTask;
import com.ca.android.app.CaMDOWebView;
import java.io.File;
import java.util.List;

public class ChatActivity extends asy implements aqn, arp, arr, asz, ata {
  private static ard a = ard.a();
  
  private static final String c = "[ChatActivity]";
  
  private boolean A;
  
  private Object B = new Object();
  
  private String b = null;
  
  private boolean d;
  
  private EditText e;
  
  private RecyclerView f;
  
  private LinearLayoutManager g;
  
  private ImageView h;
  
  private ImageView i;
  
  private View j;
  
  private TextView k;
  
  private atb l;
  
  private ChatEventReceiver m;
  
  private TextView n;
  
  private Toolbar o;
  
  private LinearLayout p;
  
  private Button q;
  
  private aqe r;
  
  private arq s;
  
  private FrameLayout t;
  
  private WebView u;
  
  private TextView v;
  
  private ProgressBar w;
  
  private LinearLayout x;
  
  private asi y;
  
  private FrameLayout z;
  
  private void a(String paramString) {
    ase.a("Chat Santander", paramString, (Context)this);
  }
  
  private void a(String paramString, File paramFile) {
    boolean bool = true;
    if (paramFile != null) {
      if (ase.b(paramFile)) {
        arj arj = new arj(paramFile, ase.a(paramFile));
        arj.c(String.valueOf(arj.c().length()));
        ark ark = ase.a(null, arj);
        ark.c(true);
        a.c(ark);
      } else {
        ase.a("Chat Santander", "Desculpe, não conseguimos receber esse arquivo. Ele deve estar em XLS, XLSX, PPT, PPTX, DOC, DOCX ou PDF.", (Context)this);
        bool = false;
      } 
    } else {
      if (aps.bw)
        this.b = null; 
      if (ase.b(this.b) || (!ase.b(paramString) && !paramString.equals(this.b))) {
        ark ark = ase.a(paramString, null);
        ark.c(true);
        a.c(ark);
        this.b = paramString;
      } else {
        bool = false;
      } 
    } 
    if (bool) {
      Intent intent = new Intent((Context)this, ChatTask.class);
      intent.putExtra(aps.by, paramString);
      startService(intent);
      a.h(null);
    } 
    i();
    this.l.notifyDataSetChanged();
  }
  
  private void a(List<ark> paramList) {
    Log.d("[ChatActivity]", "controlStatusTyping 1 ");
    List list = a.F();
    String str = ase.d(list);
    if (ase.b(str)) {
      (new Handler()).postDelayed((Runnable)new ask(this, str), 400L);
    } else {
      this.n.setText(str);
    } 
    if (list != null && list.size() > 0) {
      Log.d("[ChatActivity]", "controlStatusTyping 2 ");
      for (ark ark : paramList) {
        if (!ark.i() && (ark.c() == apu.TypingStarted || ark.c() == apu.TypingStopped))
          ark.a(true); 
      } 
    } 
  }
  
  private void b(boolean paramBoolean) {
    Intent intent = new Intent((Context)this, TextWatcherTask.class);
    intent.putExtra("TEXT_WATCHER_TASK_EVENT", paramBoolean);
    startService(intent);
  }
  
  private void c(boolean paramBoolean) {
    int i;
    int j;
    if (paramBoolean) {
      i = apo.digitar_msg;
    } else {
      i = apo.waiting_message;
    } 
    if (paramBoolean) {
      j = 17170443;
    } else {
      j = apf.colorBackgroundChat;
    } 
    int k = ContextCompat.getColor((Context)this, j);
    TextView textView = this.n;
    if (paramBoolean) {
      j = 0;
    } else {
      j = 8;
    } 
    textView.setVisibility(j);
    this.p.setBackgroundColor(k);
    this.h.setEnabled(paramBoolean);
    this.h.setImageResource(aph.ico_squadchat_send_enable);
    this.e.setHint(i);
    this.e.setEnabled(paramBoolean);
    if (!ase.b(a.M()))
      this.e.setText(a.M()); 
    this.i.setImageResource(aph.ico_squadchat_attach);
    if (paramBoolean && a.G()) {
      this.i.setVisibility(0);
      return;
    } 
    this.i.setVisibility(8);
  }
  
  private void l() {
    this.s = new arq();
    this.s.a(this);
    registerReceiver((BroadcastReceiver)this.s, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
  
  private void m() {
    p();
    q();
    if (n()) {
      u();
    } else {
      o();
    } 
    a.a(false, "[ChatActivity]");
  }
  
  private boolean n() {
    return (a.r() != null && !a.r().isEmpty() && ase.g(a.r()));
  }
  
  private void o() {
    this.j.setVisibility(0);
    this.q.setVisibility(8);
    this.p.setVisibility(0);
    c(false);
  }
  
  private void p() {
    Window window = getWindow();
    this.o = (Toolbar)findViewById(api.toolbar);
    a(this.o, true);
    if (a.N() != null)
      this.o.setBackgroundColor(ContextCompat.getColor((Context)this, a.N().intValue())); 
    if (Build.VERSION.SDK_INT >= 21 && a.O() != null)
      window.setStatusBarColor(ContextCompat.getColor((Context)this, a.O().intValue())); 
    this.r = new aqe((Activity)this, this, "Santander", ContextCompat.getColor((Context)this, apf.colorPrimaryCP));
    this.n = (TextView)findViewById(api.typing_tv);
    this.e = (EditText)findViewById(api.tv_mensagem);
    this.k = (TextView)findViewById(api.managers_tv);
    this.k.setText(ase.e(a.r()));
    this.f = (RecyclerView)findViewById(api.chat_rv);
    this.f.setHasFixedSize(true);
    this.g = new LinearLayoutManager((Context)this);
    this.f.setLayoutManager((RecyclerView.LayoutManager)this.g);
    this.l = new atb((Context)this, a.r(), this, this);
    this.f.setAdapter((RecyclerView.Adapter)this.l);
    this.f.addOnLayoutChangeListener((View.OnLayoutChangeListener)new aso(this));
    this.j = findViewById(api.view_waiting_connection);
    this.h = (ImageView)findViewById(api.send_bt);
    this.i = (ImageView)findViewById(api.attach_bt);
    this.p = (LinearLayout)findViewById(api.linear_layout_chat_ui);
    this.q = (Button)findViewById(api.button_reconnect_chat);
    this.q.setOnClickListener((View.OnClickListener)new asq(this));
    if (!ase.b(a.M()))
      this.e.setText(a.M()); 
    this.z = (FrameLayout)findViewById(api.toolbar_feedbackloop_fl);
    if (a.N() != null)
      this.z.setBackgroundColor(ContextCompat.getColor((Context)this, a.N().intValue())); 
    this.t = (FrameLayout)findViewById(api.feedback_loop_frame_layout);
    this.u = (WebView)findViewById(api.feedback_loop_wb);
    this.v = (TextView)findViewById(api.finish_feedback_loop_tv);
    this.w = (ProgressBar)findViewById(api.loading_feedback_loop_pb);
    this.x = (LinearLayout)findViewById(api.conversa_ll);
    this.y = new asi(this.w, this.u);
    this.l.notifyDataSetChanged();
    this.e.setOnClickListener((View.OnClickListener)new ast(this));
  }
  
  private void q() {
    if (!a.v()) {
      s();
    } else if (a.j() == null) {
      ase.b();
      t();
    } 
    this.A = false;
    Handler handler = new Handler();
    asu asu = new asu(this);
    this.e.addTextChangedListener((TextWatcher)new asv(this, handler, (Runnable)asu));
    this.i.setOnClickListener((View.OnClickListener)new asw(this));
    this.h.setOnClickListener((View.OnClickListener)new asx(this));
  }
  
  private void r() {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.e.getWindowToken(), 0);
  }
  
  private void s() {
    a.b();
    startService(new Intent((Context)this, StartSession.class));
  }
  
  private void t() {
    c(false);
    this.e.setText("");
    this.q.setVisibility(0);
    this.p.setVisibility(8);
    a.f(false);
    this.l.notifyDataSetChanged();
  }
  
  private void u() {
    if (this.j.getVisibility() == 0) {
      this.j.setVisibility(8);
      c(true);
    } 
  }
  
  private void v() {
    if (!ase.f(a.r()))
      a.a(true, "[ChatActivity]"); 
    a.b(true, "[ChatActivity]");
    a.a(true);
    a.a(null);
  }
  
  public void a() {
    i();
    this.l.notifyDataSetChanged();
  }
  
  public void a(int paramInt) {
    a.b(false, "[ChatActivity]");
    switch (paramInt) {
      default:
        return;
      case 5:
        break;
    } 
    ase.a("Chat Santander", "Desculpe, não conseguimos receber esse arquivo. Ele deve estar em XLS, XLSX, PPT, PPTX, DOC, DOCX ou PDF.", (Context)this);
  }
  
  public void a(asi paramasi) {
    this.x.setVisibility(8);
    this.t.setVisibility(0);
    String str = a.T();
    if (this.y.a(str)) {
      this.w.setIndeterminate(true);
      this.u.getSettings().setJavaScriptEnabled(true);
      CaMDOWebView.setWebViewClient(this.u, (WebViewClient)paramasi);
      CaMDOWebView.loadUrl(this.u, str);
    } 
    this.v.setOnClickListener((View.OnClickListener)new asm(this));
    a.f(false);
  }
  
  public void a(File paramFile) {
    if (paramFile != null) {
      Log.d("[ChatActivity]", "URI to send :" + paramFile.toString());
      a.b(false, "[ChatActivity]");
      a("", paramFile);
      return;
    } 
    Log.d("[ChatActivity]", "URI : is null");
  }
  
  public void b() {
    if (this.j.getVisibility() != 0) {
      Log.d("[ChatActivity]", "onDisconnectEvent : showErrorMessage");
      ase.b();
      i();
      t();
    } else if (!this.A) {
      this.A = true;
      if (ase.c(a))
        a.f(true); 
    } 
    this.l.notifyDataSetChanged();
  }
  
  public void b(int paramInt) {
    i(paramInt);
  }
  
  public void c() {
    this.e.setText("");
    i();
    this.l.notifyDataSetChanged();
  }
  
  public void c(int paramInt) {
    ark ark = a.r().get(paramInt);
    if (ark.o() || ark.l().l()) {
      a("Como você pediu, cancelamos o envio do seu arquivo, ok?");
      return;
    } 
    if (ark.v() || ark.l().w()) {
      a("Ops, houve uma falha de conexão com a internet e não conseguimos concluir o envio do arquivo. Pode tentar novamente?");
      return;
    } 
  }
  
  public void d() {
    Log.d("[ChatActivity]", "onMessageErrorDefault");
    ase.b();
    this.l.notifyDataSetChanged();
  }
  
  public void d(int paramInt) {
    j(paramInt);
  }
  
  public void e() {}
  
  public void e(int paramInt) {
    i(paramInt);
  }
  
  public void f() {
    finish();
    a.a(null);
  }
  
  public void f(int paramInt) {}
  
  public void g() {}
  
  public void g(int paramInt) {
    j(paramInt);
  }
  
  public void h() {
    if (!n())
      ase.a("Chat Santander", "Ops, houve uma falha na conexão com a internet. Você pode tentar novamente?", (Context)this, true); 
  }
  
  public void h(int paramInt) {
    aqr.a(true);
    this.r.b();
    k(paramInt);
    this.l.notifyDataSetChanged();
  }
  
  public void i() {
    if (a != null) {
      List<ark> list = a.r();
      if (ase.g(list)) {
        if (a.y())
          ase.q(list); 
        a.b(false);
        if (a.G()) {
          this.i.setVisibility(0);
        } else {
          this.i.setVisibility(8);
        } 
        u();
      } 
      this.l.a(list);
      this.l.notifyDataSetChanged();
      this.f.scrollToPosition(this.l.getItemCount() - 1);
      this.k.setText(ase.e(list));
      a(list);
    } 
  }
  
  public void i(int paramInt) {
    if (paramInt >= 0) {
      ark ark = ard.a().r().get(paramInt);
      ark.e(true);
      ark.l().e(true);
      ark.l().b(false);
      ark.l().g(false);
      i();
      this.l.notifyDataSetChanged();
    } 
  }
  
  public void j(int paramInt) {
    try {
      File file = ((ark)a.r().get(paramInt)).l().c();
      if (file.exists()) {
        Bitmap bitmap;
        if (aqr.a(file)) {
          View view = LayoutInflater.from((Context)this).inflate(apk.frame_preview, null);
          AppCompatDialog appCompatDialog = new AppCompatDialog((Context)this, app.blackTheme);
          appCompatDialog.setContentView(view);
          appCompatDialog.setTitle("Preview");
          appCompatDialog.setCanceledOnTouchOutside(false);
          TextView textView2 = (TextView)appCompatDialog.findViewById(api.preview_title_tv);
          ImageView imageView1 = (ImageView)appCompatDialog.findViewById(api.image_preview);
          ImageView imageView2 = (ImageView)appCompatDialog.findViewById(api.image_confirm);
          ImageView imageView3 = (ImageView)appCompatDialog.findViewById(api.image_cancel);
          TextView textView1 = (TextView)appCompatDialog.findViewById(api.close_image_preview_tv);
          textView2.setVisibility(8);
          imageView2.setVisibility(8);
          imageView3.setVisibility(8);
          bitmap = aqs.a(file.getPath());
          if (bitmap != null) {
            imageView1.setImageBitmap(bitmap);
            textView1.setOnClickListener((View.OnClickListener)new asl(this, appCompatDialog));
          } 
          appCompatDialog.show();
          return;
        } 
        Uri uri = aqr.a((Context)this, (File)bitmap);
        String str = aqr.a(bitmap.getAbsolutePath());
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(uri, str);
        intent.setFlags(268435457);
        try {
          startActivity(intent);
          return;
        } catch (Exception exception) {
          a("Desculpe, não conseguimos abrir o arquivo, pois o seu celular não tem um aplicativo para esse tipo de arquivo.");
          return;
        } 
      } 
    } catch (Exception exception) {
      a("Desculpe, não conseguimos abrir o arquivo, pois o seu celular não tem um aplicativo para esse tipo de arquivo.");
      return;
    } 
    a("Desculpe, não conseguimos mais abrir o arquivo, pois ele não está salvo no seu celular.");
  }
  
  public void k(int paramInt) {
    if (this.r.d()) {
      ark ark = a.r().get(paramInt);
      ark.e(false);
      ark.h(false);
      ark.l().e(false);
      ark.l().b(false);
      ark.l().g(true);
      ark.l().a(0);
      ark.g(true);
      i();
      this.l.notifyDataSetChanged();
      ary.b().a(ark, false);
      i();
      this.l.notifyDataSetChanged();
    } 
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    this.l.notifyDataSetChanged();
    if (a.H() == null)
      a.a(this); 
    this.r.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    v();
    if (a.Q() != null)
      a.Q().b(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(apk.activity_chat);
    a.a(this);
    a.b(false, "[ChatActivity]");
    m();
    l();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(apl.menu_chat, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy() {
    unregisterReceiver((BroadcastReceiver)this.s);
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    int i = paramMenuItem.getItemId();
    if (i == 16908332) {
      onBackPressed();
      return true;
    } 
    if (i == api.action_finish_chat) {
      r();
      if (a.Q() != null)
        a.Q().c(); 
      ase.a((Activity)this, getString(apo.finish_chat_title), getString(apo.finish_chat_message), getString(apo.chat_finish), (DialogInterface.OnClickListener)new asj(this), (DialogInterface.OnClickListener)new asn(this));
      return true;
    } 
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause() {
    super.onPause();
    if (!ase.b(this.e.getText().toString()))
      a.h(this.e.getText().toString()); 
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    this.r.a(paramInt, paramArrayOfString, paramArrayOfint, aqr.e());
  }
  
  protected void onRestart() {
    super.onRestart();
    this.l.notifyDataSetChanged();
  }
  
  public void onRestoreInstanceState(Bundle paramBundle) {
    a.a(this);
    super.onRestoreInstanceState(paramBundle);
    this.l.notifyDataSetChanged();
  }
  
  protected void onResume() {
    super.onResume();
    i();
    this.l.notifyDataSetChanged();
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    this.l.notifyDataSetChanged();
  }
  
  protected void onStart() {
    super.onStart();
    this.l.notifyDataSetChanged();
  }
  
  protected void onStop() {
    super.onStop();
    if (!ase.b(this.e.getText().toString()))
      a.h(this.e.getText().toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\view\activities\ChatActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
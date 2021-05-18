package com.santander.app.pagamentos.titulos.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gpu;
import grs;
import gvb;
import java.io.Serializable;
import java.util.List;
import jsr;
import jst;
import juh;
import jui;
import juk;
import jvm;
import jvx;
import jvy;
import miq;
import naj;
import nau;

public class ConfirmarPagamentoActivity extends grs implements View.OnClickListener, juk, nau {
  private jsr a;
  
  private SantanderButtonView b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private jvx e;
  
  private final int f = 1;
  
  private LinearLayout g;
  
  private LinearLayout w;
  
  private ExpandableListView x;
  
  private void a() {
    this.w = (LinearLayout)findViewById(2131758308);
    if (this.a.d() != null) {
      findViewById(2131758306).setVisibility(0);
    } else {
      findViewById(2131758306).setVisibility(8);
    } 
    this.g = (LinearLayout)findViewById(2131758302);
    this.g.setVisibility(8);
    this.d = (SantanderTextView)findViewById(2131758307);
    String str = this.d.getText().toString().replace("R$-", naj.b(this.a.j()));
    this.d.setText(str);
    this.c = (SantanderTextView)findViewById(2131758305);
    this.c.setText(this.a.g());
    this.b = (SantanderButtonView)findViewById(2131758303);
    this.b.setOnClickListener(this);
    this.x = (ExpandableListView)findViewById(2131758309);
  }
  
  private void a(ExpandableListView paramExpandableListView) {
    ListAdapter listAdapter = paramExpandableListView.getAdapter();
    int i = 0;
    int j = 0;
    while (i < listAdapter.getCount()) {
      View view = listAdapter.getView(i, null, (ViewGroup)paramExpandableListView);
      view.measure(0, 0);
      j += view.getMeasuredHeight();
      System.out.println("i  " + i);
      i++;
    } 
    ViewGroup.LayoutParams layoutParams = paramExpandableListView.getLayoutParams();
    layoutParams.height = paramExpandableListView.getDividerHeight() * (listAdapter.getCount() - 1) + j;
    System.out.println("params.height =  " + layoutParams.height);
    paramExpandableListView.setLayoutParams(layoutParams);
    paramExpandableListView.requestLayout();
  }
  
  private void a(ExpandableListView paramExpandableListView, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getExpandableListAdapter : ()Landroid/widget/ExpandableListAdapter;
    //   4: astore #7
    //   6: aload_1
    //   7: invokevirtual getWidth : ()I
    //   10: iconst_0
    //   11: invokestatic makeMeasureSpec : (II)I
    //   14: istore #6
    //   16: iconst_0
    //   17: istore #4
    //   19: iconst_0
    //   20: istore_3
    //   21: iload #4
    //   23: aload #7
    //   25: invokeinterface getGroupCount : ()I
    //   30: if_icmpge -> 242
    //   33: aload #7
    //   35: iload #4
    //   37: iconst_0
    //   38: aconst_null
    //   39: aload_1
    //   40: invokeinterface getGroupView : (IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   45: astore #8
    //   47: aload #8
    //   49: iload #6
    //   51: iconst_0
    //   52: invokevirtual measure : (II)V
    //   55: iload_3
    //   56: aload #8
    //   58: invokevirtual getMeasuredHeight : ()I
    //   61: iadd
    //   62: istore #5
    //   64: aload_1
    //   65: iload #4
    //   67: invokevirtual isGroupExpanded : (I)Z
    //   70: ifeq -> 79
    //   73: iload #4
    //   75: iload_2
    //   76: if_icmpeq -> 100
    //   79: iload #5
    //   81: istore_3
    //   82: aload_1
    //   83: iload #4
    //   85: invokevirtual isGroupExpanded : (I)Z
    //   88: ifne -> 233
    //   91: iload #5
    //   93: istore_3
    //   94: iload #4
    //   96: iload_2
    //   97: if_icmpne -> 233
    //   100: iload #5
    //   102: istore_3
    //   103: iconst_0
    //   104: istore #5
    //   106: iload #5
    //   108: aload #7
    //   110: iload #4
    //   112: invokeinterface getChildrenCount : (I)I
    //   117: if_icmpge -> 233
    //   120: aload #7
    //   122: iload #4
    //   124: iload #5
    //   126: iconst_0
    //   127: aconst_null
    //   128: aload_1
    //   129: invokeinterface getChildView : (IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   134: astore #8
    //   136: ldc 'Count'
    //   138: new java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial <init> : ()V
    //   145: aload #7
    //   147: iload #4
    //   149: invokeinterface getChildrenCount : (I)I
    //   154: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   157: ldc ''
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual toString : ()Ljava/lang/String;
    //   165: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: aload #8
    //   171: new android/view/ViewGroup$LayoutParams
    //   174: dup
    //   175: iload #6
    //   177: iconst_0
    //   178: invokespecial <init> : (II)V
    //   181: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   184: aload #8
    //   186: iconst_0
    //   187: iconst_0
    //   188: invokevirtual measure : (II)V
    //   191: aload #8
    //   193: invokevirtual getMeasuredHeight : ()I
    //   196: iload_3
    //   197: iadd
    //   198: istore_3
    //   199: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   202: new java/lang/StringBuilder
    //   205: dup
    //   206: invokespecial <init> : ()V
    //   209: ldc 'totalHeight'
    //   211: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: iload_3
    //   215: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   218: invokevirtual toString : ()Ljava/lang/String;
    //   221: invokevirtual println : (Ljava/lang/String;)V
    //   224: iload #5
    //   226: iconst_1
    //   227: iadd
    //   228: istore #5
    //   230: goto -> 106
    //   233: iload #4
    //   235: iconst_1
    //   236: iadd
    //   237: istore #4
    //   239: goto -> 21
    //   242: aload_1
    //   243: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   246: astore #8
    //   248: aload_1
    //   249: invokevirtual getDividerHeight : ()I
    //   252: istore_2
    //   253: aload #7
    //   255: invokeinterface getGroupCount : ()I
    //   260: iconst_1
    //   261: isub
    //   262: iload_2
    //   263: imul
    //   264: iload_3
    //   265: iadd
    //   266: istore_3
    //   267: iload_3
    //   268: istore_2
    //   269: iload_3
    //   270: bipush #10
    //   272: if_icmpge -> 278
    //   275: bipush #100
    //   277: istore_2
    //   278: aload #8
    //   280: iload_2
    //   281: putfield height : I
    //   284: aload_1
    //   285: aload #8
    //   287: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   290: aload_1
    //   291: invokevirtual requestLayout : ()V
    //   294: return
  }
  
  private void b() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131758302) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131758302, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
    this.g.setVisibility(0);
    this.w.setVisibility(8);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.e.b();
  }
  
  public void a(LinearLayout paramLinearLayout) {
    this.w.addView((View)paramLinearLayout);
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void a(List<jst> paramList) {
    this.x.setAdapter((ExpandableListAdapter)new jvm((Context)this, paramList));
    a(this.x);
    this.x.setOnGroupExpandListener((ExpandableListView.OnGroupExpandListener)new juh(this));
    this.x.setOnGroupCollapseListener((ExpandableListView.OnGroupCollapseListener)new jui(this));
  }
  
  public void finish() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void onBackPressed() {
    if (this.g.getVisibility() == 0) {
      this.g.setVisibility(8);
      this.w.setVisibility(0);
      return;
    } 
    super.onBackPressed();
    finish();
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131758303:
        break;
    } 
    frq.d("Pagamentos_Pagamento_Confirmacao_Acao", "Continuar");
    if (!miq.C().w() || !miq.C().f().C().b("00000121")) {
      b();
      return;
    } 
    a(0, false);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298956));
    setContentView(2130968723);
    this.a = (jsr)getIntent().getExtras().getSerializable("Titulos");
    a();
    this.e = (jvx)new jvy(this.a, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\ConfirmarPagamentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
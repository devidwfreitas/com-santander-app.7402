import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import br.com.santander.msgsdk.MSGSDK;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import com.santander.app.emprestimo.creditounificado.presentation.CPUSimulacaoActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.localizadoragencias.presentation.MapaLocalizadorAgenciaActivity;
import com.santander.app.meuperfil.activity.MeuPerfilAtivarCartaoActivity;
import com.santander.app.meuperfil.activity.MeuPerfilSolicitarCartaoActivity;
import com.santander.app.meuperfil.activity.MeuPerfilSolicitarCartaoNovamenteActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"NewApi"})
public class gpu {
  private static String a = "MenuCreator";
  
  private static final String b = "Cancelar";
  
  private static final String c = "Continuar";
  
  private static Activity d;
  
  private static ExpandableListView e;
  
  private static jov f;
  
  private static jqc g;
  
  private static Boolean h;
  
  private static Dialog i;
  
  private static int j;
  
  @ColorRes
  private static int k;
  
  private static List<jow> l;
  
  private static HashMap<Integer, List<jow>> m;
  
  private static Dialog n;
  
  private static SlidingMenu o;
  
  public static Intent a(Activity paramActivity) {
    if (miq.C().f().e().booleanValue()) {
      intent = new Intent((Context)paramActivity, HomeLogadaNaoCorrentistaActivity.class);
      intent.setFlags(67108864);
      return intent;
    } 
    Intent intent = new Intent((Context)intent, HomeLogadaActivity.class);
    intent.setFlags(67108864);
    return intent;
  }
  
  public static void a() {
    a(h);
  }
  
  public static void a(int paramInt, ActionBar paramActionBar) {
    ImageView imageView = (ImageView)paramActionBar.getCustomView().findViewById(2131755203);
    switch (paramInt) {
      default:
        k = 2131623961;
        paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
        imageView.setImageResource(2130839034);
        MSGSDK.getInstance().setToolbarColor(k);
        return;
      case 1:
        k = 2131623961;
        paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
        imageView.setImageResource(2130839032);
        MSGSDK.getInstance().setToolbarColor(k);
        return;
      case 2:
      case 5:
        k = 2131623961;
        paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
        imageView.setImageResource(2130839161);
        MSGSDK.getInstance().setToolbarColor(k);
        return;
      case 3:
        k = 2131623998;
        paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
        imageView.setImageResource(2130839042);
        MSGSDK.getInstance().setToolbarColor(k);
        return;
      case 4:
        k = 2131624369;
        paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
        imageView.setImageResource(2130839157);
        MSGSDK.getInstance().setToolbarColor(k);
        return;
      case 8:
        break;
    } 
    k = 2131623937;
    paramActionBar.setBackgroundDrawable((Drawable)new ColorDrawable(ContextCompat.getColor((Context)d, k)));
    imageView.setImageResource(2130839032);
    MSGSDK.getInstance().setToolbarColor(k);
  }
  
  public static void a(Activity paramActivity, ActionBar paramActionBar) {
    o = new SlidingMenu((Context)paramActivity);
    d = paramActivity;
    g = new jqc();
    o.setMode(0);
    o.setTouchModeAbove(2);
    o.setShadowWidthRes(2131362066);
    o.setShadowDrawable(2130839047);
    o.setBehindOffsetRes(2131362075);
    o.setFadeDegree(0.35F);
    o.a(d, 0);
    o.setMenu(2130969008);
    d.findViewById(2131757132).setOnClickListener(new gpv());
    d.findViewById(2131757125).setOnClickListener(new gql());
    q();
    f = new jov((Context)d, l, m, h);
    e = (ExpandableListView)d.findViewById(2131757133);
    e.setAdapter((ExpandableListAdapter)f);
    e.setOnGroupClickListener(new gqw());
    e.setOnChildClickListener(new gre());
    SharedPreferences sharedPreferences = d.getSharedPreferences("homeLogadaWidget", 0);
    ((TextView)d.findViewById(2131757126)).setText("Olá " + mzr.g());
    ((TextView)d.findViewById(2131757127)).setText((new StringBuilder(new String(nai.c(miq.C().f().k())))).replace(4, 11, "***.***").toString());
    TextView textView = (TextView)d.findViewById(2131757131);
    textView.setText("Última conexão: " + sharedPreferences.getString("lastConecctionDate", (new SimpleDateFormat("dd/MM/yyyy, HH:mm")).format(new Date())));
    textView.setVisibility(0);
    a(mym.a((Context)d, miq.C().f().k()));
    paramActionBar.setDisplayShowCustomEnabled(true);
    int i = mzr.d();
    paramActionBar.setCustomView(2130968603);
    ((ImageView)paramActionBar.getCustomView().findViewById(2131755202)).setOnClickListener(new grf());
    a(i, paramActionBar);
    b(paramActionBar);
  }
  
  public static void a(Activity paramActivity, ActionBar paramActionBar, View paramView, int paramInt1, int paramInt2, int paramInt3) {
    ImageView imageView;
    d = paramActivity;
    paramActionBar.setDisplayShowCustomEnabled(true);
    int i = mzr.d();
    if (paramView == null) {
      switch (i) {
        default:
          paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt1));
          imageView = new ImageView((Context)d);
          imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
          imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
        case 1:
          paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt1));
          imageView = new ImageView((Context)d);
          imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
          imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
        case 2:
        case 5:
          paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt1));
          imageView = new ImageView((Context)d);
          imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
          imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
        case 3:
          paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt2));
          imageView = new ImageView((Context)d);
          imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
          imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
        case 4:
          paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt3));
          imageView = new ImageView((Context)d);
          imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
          imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
      } 
    } else {
      if (i == 3) {
        paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt2));
      } else if (i == 4) {
        paramActionBar.setBackgroundDrawable(d.getResources().getDrawable(paramInt1));
      } 
      imageView = new ImageView((Context)d);
      imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
      imageView.setImageDrawable(d.getResources().getDrawable(2130838276));
    } 
    ((RelativeLayout)paramView.findViewById(2131755109)).addView((View)imageView);
    paramActionBar.setCustomView(paramView);
  }
  
  public static void a(Activity paramActivity, ActionBar paramActionBar, String paramString) {
    if (miq.C().j() != null) {
      a(paramActivity, paramActionBar);
      if (paramString != null) {
        paramActionBar.getCustomView().findViewById(2131755203).setVisibility(8);
        b(paramActionBar, paramString);
      } 
      return;
    } 
    Log.e(a, "Avoid creating menu after crash");
  }
  
  public static void a(Bitmap paramBitmap) {
    ImageView imageView = (ImageView)d.findViewById(2131757125);
    if (paramBitmap != null)
      imageView.setImageBitmap(paramBitmap); 
    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
  }
  
  public static void a(ActionBar paramActionBar) {
    q();
    f = new jov((Context)d, l, m, h);
    e.setAdapter((ExpandableListAdapter)f);
    b(paramActionBar);
  }
  
  public static void a(ActionBar paramActionBar, String paramString) {
    if (miq.C().j() != null) {
      paramActionBar.setDisplayShowCustomEnabled(true);
      paramActionBar.setCustomView(2130968603);
      int i = mzr.d();
      if (paramString != null) {
        paramActionBar.getCustomView().findViewById(2131755203).setVisibility(8);
        b(paramActionBar, paramString);
      } 
      a(i, paramActionBar);
      return;
    } 
    Log.e(a, "Avoid creating menu after crash");
  }
  
  public static void a(@NonNull AppCompatActivity paramAppCompatActivity, String paramString) {
    a(paramAppCompatActivity, paramString, new grg(paramAppCompatActivity));
  }
  
  public static void a(@NonNull AppCompatActivity paramAppCompatActivity, String paramString, grk paramgrk) {
    ActionBar actionBar = paramAppCompatActivity.getSupportActionBar();
    if (actionBar == null)
      return; 
    a(actionBar, paramString);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayHomeAsUpEnabled(false);
    actionBar.setDisplayShowHomeEnabled(false);
    ImageView imageView = (ImageView)actionBar.getCustomView().findViewById(2131755202);
    imageView.setImageResource(2130838512);
    imageView.setOnClickListener(new grh(paramgrk));
  }
  
  private static void a(ipp paramipp, foh paramfoh) {
    if (n != null && n.isShowing())
      n.cancel(); 
    n = mxn.b(d);
    (new mzn()).a(a(paramipp), new gqz(paramfoh));
  }
  
  public static void a(Boolean paramBoolean) {
    h = paramBoolean;
    q();
    f = new jov((Context)d, l, m, h);
    e.setAdapter((ExpandableListAdapter)f);
  }
  
  public static void a(String paramString) {
    Dialog dialog = new Dialog((Context)d, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText(d.getString(2131296619));
    gqx gqx = new gqx(dialog, paramString);
    button1.setText(d.getString(2131296618));
    gqy gqy = new gqy(dialog);
    mxn.a(d, dialog, d.getString(2131298988), d.getString(2131296563), gqx, gqy);
  }
  
  private static void a(String paramString, SlidingMenu paramSlidingMenu) {
    Dialog dialog = new Dialog((Context)d, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Confirmar");
    gqq gqq = new gqq(dialog);
    button1.setText("Cancelar");
    gqr gqr = new gqr(paramSlidingMenu, dialog);
    mxn.a(d, dialog, "Atenção", paramString, gqq, gqr);
  }
  
  private static void a(String paramString1, String paramString2, String paramString3, String paramString4) {
    if (myo.a(2131297600)) {
      a(paramString1, paramString2, paramString3, paramString4, paramString4);
      return;
    } 
    r();
  }
  
  private static void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    if (i != null && i.isShowing()) {
      i.dismiss();
      i = null;
    } 
    gqk gqk = new gqk(paramString5);
    Activity activity = d;
    if (miq.C().s()) {
      paramString1 = d.getString(2131296571);
    } else {
      paramString1 = d.getString(2131296570);
    } 
    i = mxn.a(activity, gqk, paramString4, paramString1, d.getString(2131296657), d.getString(2131296654));
  }
  
  private static void a(String paramString1, String paramString2, String paramString3, String paramString4, jox paramjox) {
    if (i != null && i.isShowing()) {
      i.dismiss();
      i = null;
    } 
    Activity activity = d;
    gqm gqm = new gqm(paramjox, paramString4);
    gqn gqn = new gqn(paramjox);
    if (miq.C().s()) {
      paramString1 = d.getString(2131296564);
    } else {
      paramString1 = d.getString(2131296563);
    } 
    i = mxn.a(activity, gqm, gqn, paramString1, d.getString(2131296657), d.getString(2131296654));
  }
  
  public static void a(String paramString, zx paramzx) {
    if (myo.a(2131299209)) {
      myo.a(d, paramString, paramzx);
      return;
    } 
    myo.a((Context)d, d.getString(2131299209));
  }
  
  public static void a(jow paramjow) {
    Iterator<jow> iterator = paramjow.h().iterator();
    boolean bool = false;
    while (iterator.hasNext()) {
      jow jow1 = iterator.next();
      switch (grd.a[jow1.g().ordinal()]) {
        default:
          continue;
        case 7:
          if (!miq.C().f().s().h()) {
            jow1.b(0);
            bool = true;
          } 
          continue;
        case 8:
        case 9:
        case 10:
        case 44:
        case 52:
          if (mzr.a() || !miq.C().f().s().h()) {
            jow1.b(0);
            bool = true;
          } 
          continue;
        case 11:
          break;
      } 
      if (mzr.a() || !miq.C().f().s().g()) {
        jow1.b(0);
        bool = true;
      } 
    } 
    if (bool)
      f.notifyDataSetChanged(); 
  }
  
  public static void a(jox paramjox) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: invokestatic j : ()Lhya;
    //   5: astore_2
    //   6: getstatic grd.a : [I
    //   9: aload_0
    //   10: invokevirtual ordinal : ()I
    //   13: iaload
    //   14: tableswitch default -> 364, 1 -> 365, 2 -> 380, 3 -> 412, 4 -> 441, 5 -> 470, 6 -> 499, 7 -> 524, 8 -> 562, 9 -> 609, 10 -> 656, 11 -> 703, 12 -> 785, 13 -> 836, 14 -> 883, 15 -> 930, 16 -> 959, 17 -> 364, 18 -> 364, 19 -> 1015, 20 -> 1062, 21 -> 1109, 22 -> 364, 23 -> 1147, 24 -> 1154, 25 -> 364, 26 -> 1161, 27 -> 1174, 28 -> 1212, 29 -> 1292, 30 -> 1339, 31 -> 1365, 32 -> 1391, 33 -> 1438, 34 -> 1445, 35 -> 1452, 36 -> 1459, 37 -> 1479, 38 -> 1499, 39 -> 1537, 40 -> 1566, 41 -> 1574, 42 -> 1578, 43 -> 1594, 44 -> 1611, 45 -> 1630, 46 -> 1662, 47 -> 1704, 48 -> 1746, 49 -> 1759, 50 -> 1795, 51 -> 1805, 52 -> 1837, 53 -> 1884, 54 -> 1913, 55 -> 1960, 56 -> 1998, 57 -> 364, 58 -> 2019, 59 -> 2057, 60 -> 2095, 61 -> 2124, 62 -> 364, 63 -> 364, 64 -> 2153, 65 -> 2187, 66 -> 2221, 67 -> 2485, 68 -> 2518, 69 -> 2556, 70 -> 2594, 71 -> 2632, 72 -> 2689, 73 -> 2701, 74 -> 2742, 75 -> 2783, 76 -> 2814, 77 -> 2912, 78 -> 2912, 79 -> 364, 80 -> 364, 81 -> 364, 82 -> 364, 83 -> 364, 84 -> 364
    //   364: return
    //   365: getstatic gpu.d : Landroid/app/Activity;
    //   368: invokestatic a : (Landroid/app/Activity;)Landroid/content/Intent;
    //   371: astore_0
    //   372: getstatic gpu.d : Landroid/app/Activity;
    //   375: aload_0
    //   376: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   379: return
    //   380: invokestatic a : ()V
    //   383: new android/content/Intent
    //   386: dup
    //   387: getstatic gpu.d : Landroid/app/Activity;
    //   390: ldc_w com/santander/app/lojaonline/presentation/LojaOnlineActivity
    //   393: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   396: astore_0
    //   397: aload_0
    //   398: ldc 67108864
    //   400: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   403: pop
    //   404: getstatic gpu.d : Landroid/app/Activity;
    //   407: aload_0
    //   408: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   411: return
    //   412: iconst_2
    //   413: putstatic gpu.j : I
    //   416: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   419: ldc_w 'ConhecaAppWay'
    //   422: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   425: ldc_w 'cart-way-ml-start'
    //   428: ldc_w 'cart-way-ml-cont'
    //   431: ldc_w 'cart-way-ml-canc'
    //   434: ldc_w 'HOME'
    //   437: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   440: return
    //   441: iconst_1
    //   442: putstatic gpu.j : I
    //   445: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   448: ldc_w 'UltimasCompras'
    //   451: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   454: ldc_w 'cart-way-ml-ultComp-start'
    //   457: ldc_w 'cart-way-ml-ultComp-cont'
    //   460: ldc_w 'cart-way-ml-ultComp-canc'
    //   463: ldc_w 'TIMELINE'
    //   466: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   469: return
    //   470: iconst_3
    //   471: putstatic gpu.j : I
    //   474: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   477: ldc_w 'GerarCartaoVirtual'
    //   480: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   483: ldc_w 'cart-way-ml-crtVirt-start'
    //   486: ldc_w 'cart-way-ml-crtVirt-cont'
    //   489: ldc_w 'cart-way-ml-crtVirt-canc'
    //   492: ldc_w 'VIRTUAL_CARD'
    //   495: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   498: return
    //   499: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   502: ldc_w 'PontosEsfera'
    //   505: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   508: ldc_w 'cart-way-ml-ponEsf-start'
    //   511: ldc_w 'cart-way-ml-ponEsf-cont'
    //   514: ldc_w 'cart-way-ml-ponEsf-canc'
    //   517: ldc_w 'ESFERA_POINTS'
    //   520: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   523: return
    //   524: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   527: ldc_w 'Fatura'
    //   530: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   533: new android/content/Intent
    //   536: dup
    //   537: getstatic gpu.d : Landroid/app/Activity;
    //   540: ldc_w com/santander/app/faturas/activity/FaturasActivity
    //   543: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   546: astore_0
    //   547: aload_0
    //   548: ldc 67108864
    //   550: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   553: pop
    //   554: getstatic gpu.d : Landroid/app/Activity;
    //   557: aload_0
    //   558: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   561: return
    //   562: ldc_w 'Cartoes_PagamentoDeFatura'
    //   565: ldc_w 'Cartoes'
    //   568: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   571: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   574: ldc_w 'PagamentoDeFatura'
    //   577: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   580: new android/content/Intent
    //   583: dup
    //   584: getstatic gpu.d : Landroid/app/Activity;
    //   587: ldc_w com/santander/app/PagamentoFacturaCartoesActivity
    //   590: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   593: astore_0
    //   594: aload_0
    //   595: ldc 67108864
    //   597: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   600: pop
    //   601: getstatic gpu.d : Landroid/app/Activity;
    //   604: aload_0
    //   605: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   608: return
    //   609: ldc_w 'Cartoes_ParcelamentoDeFatura'
    //   612: ldc_w 'Cartoes'
    //   615: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   618: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   621: ldc_w 'ParcelamentoDeFatura'
    //   624: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   627: new android/content/Intent
    //   630: dup
    //   631: getstatic gpu.d : Landroid/app/Activity;
    //   634: ldc_w com/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity
    //   637: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   640: astore_0
    //   641: aload_0
    //   642: ldc 67108864
    //   644: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   647: pop
    //   648: getstatic gpu.d : Landroid/app/Activity;
    //   651: aload_0
    //   652: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   655: return
    //   656: ldc_w 'Fatura'
    //   659: ldc_w 'Cartoes'
    //   662: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   665: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   668: ldc_w 'CadastrarFaturaPorEmail'
    //   671: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   674: new android/content/Intent
    //   677: dup
    //   678: getstatic gpu.d : Landroid/app/Activity;
    //   681: ldc_w com/santander/app/CadastramentoFacturaActivity
    //   684: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   687: astore_0
    //   688: aload_0
    //   689: ldc 67108864
    //   691: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   694: pop
    //   695: getstatic gpu.d : Landroid/app/Activity;
    //   698: aload_0
    //   699: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   702: return
    //   703: invokestatic C : ()Lmiq;
    //   706: invokevirtual f : ()Lmir;
    //   709: invokevirtual s : ()Lght;
    //   712: invokeinterface g : ()Z
    //   717: ifeq -> 767
    //   720: ldc_w 'Cartoes_DesbloqueioDeCartao'
    //   723: ldc_w 'Cartoes'
    //   726: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   729: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   732: ldc_w 'Desbloqueio'
    //   735: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   738: new android/content/Intent
    //   741: dup
    //   742: getstatic gpu.d : Landroid/app/Activity;
    //   745: ldc_w com/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity
    //   748: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   751: astore_0
    //   752: aload_0
    //   753: ldc 67108864
    //   755: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   758: pop
    //   759: getstatic gpu.d : Landroid/app/Activity;
    //   762: aload_0
    //   763: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   766: return
    //   767: getstatic gpu.o : Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    //   770: iconst_1
    //   771: invokevirtual d : (Z)V
    //   774: getstatic gpu.d : Landroid/app/Activity;
    //   777: ldc_w 'Você não possui cartão'
    //   780: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    //   783: pop
    //   784: return
    //   785: ldc_w 'Pagamento'
    //   788: ldc_w 'Pagamentos'
    //   791: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   794: ldc_w 'Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao'
    //   797: ldc_w 'CodigoDeBarras'
    //   800: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   803: iconst_0
    //   804: putstatic com/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity.b : Z
    //   807: new android/content/Intent
    //   810: dup
    //   811: getstatic gpu.d : Landroid/app/Activity;
    //   814: ldc_w com/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity
    //   817: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   820: astore_0
    //   821: aload_0
    //   822: ldc 67108864
    //   824: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   827: pop
    //   828: getstatic gpu.d : Landroid/app/Activity;
    //   831: aload_0
    //   832: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   835: return
    //   836: ldc_w 'Pagamento'
    //   839: ldc_w 'Pagamentos'
    //   842: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   845: ldc_w 'Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao'
    //   848: ldc_w 'TitulosEmCartorio'
    //   851: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   854: new android/content/Intent
    //   857: dup
    //   858: getstatic gpu.d : Landroid/app/Activity;
    //   861: ldc_w com/santander/app/FazerPagamentoActivity
    //   864: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   867: astore_0
    //   868: aload_0
    //   869: ldc 67108864
    //   871: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   874: pop
    //   875: getstatic gpu.d : Landroid/app/Activity;
    //   878: aload_0
    //   879: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   882: return
    //   883: ldc_w 'Pagamento'
    //   886: ldc_w 'Pagamentos'
    //   889: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   892: ldc_w 'Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao'
    //   895: ldc_w 'CadastroEmDebitoAutomatico'
    //   898: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   901: new android/content/Intent
    //   904: dup
    //   905: getstatic gpu.d : Landroid/app/Activity;
    //   908: ldc_w com/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity
    //   911: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   914: astore_0
    //   915: aload_0
    //   916: ldc 67108864
    //   918: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   921: pop
    //   922: getstatic gpu.d : Landroid/app/Activity;
    //   925: aload_0
    //   926: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   929: return
    //   930: new android/content/Intent
    //   933: dup
    //   934: getstatic gpu.d : Landroid/app/Activity;
    //   937: ldc_w com/santander/app/FazerPagamentoActivity
    //   940: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   943: astore_0
    //   944: aload_0
    //   945: ldc 67108864
    //   947: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   950: pop
    //   951: getstatic gpu.d : Landroid/app/Activity;
    //   954: aload_0
    //   955: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   958: return
    //   959: invokestatic a : ()Ladh;
    //   962: getstatic gpu.d : Landroid/app/Activity;
    //   965: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   968: invokestatic a : ()Lgnz;
    //   971: invokevirtual d : ()Lje;
    //   974: invokestatic C : ()Lmiq;
    //   977: invokevirtual f : ()Lmir;
    //   980: invokevirtual i : ()Ljava/lang/String;
    //   983: invokestatic a : ()Lnab;
    //   986: invokevirtual f : ()Lji;
    //   989: invokestatic a : ()Z
    //   992: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   995: new gri
    //   998: dup
    //   999: invokespecial <init> : ()V
    //   1002: invokevirtual a : (Landroid/content/Context;Lje;Ljava/lang/String;Lji;Ljava/lang/Boolean;Ladi;)V
    //   1005: ldc_w 'Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao'
    //   1008: ldc_w 'DDA'
    //   1011: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1014: return
    //   1015: ldc_w 'Transferencia'
    //   1018: ldc_w 'Transferencias'
    //   1021: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1024: ldc_w 'Transferencia_Acao'
    //   1027: ldc_w 'Menu'
    //   1030: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1033: new android/content/Intent
    //   1036: dup
    //   1037: getstatic gpu.d : Landroid/app/Activity;
    //   1040: ldc_w com/santander/app/transferencia/presentation/TransferenciasActivity
    //   1043: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1046: astore_0
    //   1047: aload_0
    //   1048: ldc 67108864
    //   1050: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1053: pop
    //   1054: getstatic gpu.d : Landroid/app/Activity;
    //   1057: aload_0
    //   1058: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1061: return
    //   1062: ldc_w 'RecargaDeTelefone'
    //   1065: ldc_w 'Outros'
    //   1068: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1071: ldc_w 'Outros_MenuLateral_Acao'
    //   1074: ldc_w 'RecargaDeTelefone'
    //   1077: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1080: new android/content/Intent
    //   1083: dup
    //   1084: getstatic gpu.d : Landroid/app/Activity;
    //   1087: ldc_w com/santander/app/recargatelefone/presentation/RecargaTelefoneActivity
    //   1090: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1093: astore_0
    //   1094: aload_0
    //   1095: ldc 67108864
    //   1097: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1100: pop
    //   1101: getstatic gpu.d : Landroid/app/Activity;
    //   1104: aload_0
    //   1105: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1108: return
    //   1109: ldc_w 'Outros_MenuLateral_Acao'
    //   1112: ldc_w 'Agendamentos'
    //   1115: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1118: new android/content/Intent
    //   1121: dup
    //   1122: getstatic gpu.d : Landroid/app/Activity;
    //   1125: ldc_w com/santander/app/agendamentos/activity/AgendamentosActivity
    //   1128: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1131: astore_0
    //   1132: aload_0
    //   1133: ldc 67108864
    //   1135: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1138: pop
    //   1139: getstatic gpu.d : Landroid/app/Activity;
    //   1142: aload_0
    //   1143: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1146: return
    //   1147: getstatic gpu.d : Landroid/app/Activity;
    //   1150: invokestatic a : (Landroid/app/Activity;)V
    //   1153: return
    //   1154: getstatic gpu.d : Landroid/app/Activity;
    //   1157: invokestatic c : (Landroid/app/Activity;)V
    //   1160: return
    //   1161: ldc_w 'Outros_MenuLateral_Acao'
    //   1164: ldc_w 'Agencias'
    //   1167: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1170: invokestatic t : ()V
    //   1173: return
    //   1174: ldc_w 'Outros_MenuLateral_Acao'
    //   1177: ldc_w 'Ajuda'
    //   1180: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1183: new android/content/Intent
    //   1186: dup
    //   1187: getstatic gpu.d : Landroid/app/Activity;
    //   1190: ldc_w com/santander/app/faq/presentation/FaqActivity
    //   1193: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1196: astore_0
    //   1197: aload_0
    //   1198: ldc 67108864
    //   1200: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1203: pop
    //   1204: getstatic gpu.d : Landroid/app/Activity;
    //   1207: aload_0
    //   1208: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1211: return
    //   1212: new ieu
    //   1215: dup
    //   1216: invokestatic b : ()Landroid/content/Context;
    //   1219: invokespecial <init> : (Landroid/content/Context;)V
    //   1222: ldc_w ''
    //   1225: invokevirtual a : (Ljava/lang/String;)Z
    //   1228: ifeq -> 1280
    //   1231: ldc_w 'Biometria_Desabilitar'
    //   1234: ldc_w 'Outros'
    //   1237: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1240: new android/content/Intent
    //   1243: dup
    //   1244: getstatic gpu.d : Landroid/app/Activity;
    //   1247: ldc_w com/santander/app/fingerprint/presentation/FingerprintEnablingActivity
    //   1250: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1253: astore_0
    //   1254: aload_0
    //   1255: ldc 67108864
    //   1257: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1260: pop
    //   1261: aload_0
    //   1262: ldc_w 'action'
    //   1265: getstatic iev.MENU : Liev;
    //   1268: invokevirtual putExtra : (Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   1271: pop
    //   1272: getstatic gpu.d : Landroid/app/Activity;
    //   1275: aload_0
    //   1276: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1279: return
    //   1280: ldc_w 'Biometria_Habilitar'
    //   1283: ldc_w 'Outros'
    //   1286: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1289: goto -> 1240
    //   1292: ldc_w 'TrocarSenha'
    //   1295: ldc_w 'Outros'
    //   1298: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1301: ldc_w 'Outros_MenuLateral_MeuPerfil_Submenu_Acao'
    //   1304: ldc_w 'TrocarSenha'
    //   1307: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1310: new android/content/Intent
    //   1313: dup
    //   1314: getstatic gpu.d : Landroid/app/Activity;
    //   1317: ldc_w com/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity
    //   1320: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1323: astore_0
    //   1324: aload_0
    //   1325: ldc 67108864
    //   1327: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1330: pop
    //   1331: getstatic gpu.d : Landroid/app/Activity;
    //   1334: aload_0
    //   1335: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1338: return
    //   1339: new jrm
    //   1342: dup
    //   1343: new grj
    //   1346: dup
    //   1347: invokespecial <init> : ()V
    //   1350: getstatic gpu.d : Landroid/app/Activity;
    //   1353: invokespecial <init> : (Ljrn;Landroid/app/Activity;)V
    //   1356: iconst_0
    //   1357: anewarray java/lang/Void
    //   1360: invokevirtual c : ([Ljava/lang/Object;)Lgne;
    //   1363: pop
    //   1364: return
    //   1365: new jrm
    //   1368: dup
    //   1369: new gpw
    //   1372: dup
    //   1373: invokespecial <init> : ()V
    //   1376: getstatic gpu.d : Landroid/app/Activity;
    //   1379: invokespecial <init> : (Ljrn;Landroid/app/Activity;)V
    //   1382: iconst_0
    //   1383: anewarray java/lang/Void
    //   1386: invokevirtual c : ([Ljava/lang/Object;)Lgne;
    //   1389: pop
    //   1390: return
    //   1391: ldc_w 'InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa'
    //   1394: ldc_w 'Outros'
    //   1397: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1400: ldc_w 'Outros_MenuLateral_Acao'
    //   1403: ldc_w 'InvestimentosNoATM'
    //   1406: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1409: new android/content/Intent
    //   1412: dup
    //   1413: getstatic gpu.d : Landroid/app/Activity;
    //   1416: ldc_w com/santander/app/perfil/activity/InvestimentosNoAtmActivity
    //   1419: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1422: astore_0
    //   1423: aload_0
    //   1424: ldc 67108864
    //   1426: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1429: pop
    //   1430: getstatic gpu.d : Landroid/app/Activity;
    //   1433: aload_0
    //   1434: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1437: return
    //   1438: getstatic gpu.d : Landroid/app/Activity;
    //   1441: invokestatic c : (Landroid/app/Activity;)V
    //   1444: return
    //   1445: getstatic gpu.d : Landroid/app/Activity;
    //   1448: invokestatic b : (Landroid/app/Activity;)V
    //   1451: return
    //   1452: getstatic gpu.d : Landroid/app/Activity;
    //   1455: invokestatic a : (Landroid/app/Activity;)V
    //   1458: return
    //   1459: getstatic gpu.d : Landroid/app/Activity;
    //   1462: new android/content/Intent
    //   1465: dup
    //   1466: getstatic gpu.d : Landroid/app/Activity;
    //   1469: ldc_w com/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity
    //   1472: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1475: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1478: return
    //   1479: getstatic gpu.d : Landroid/app/Activity;
    //   1482: new android/content/Intent
    //   1485: dup
    //   1486: getstatic gpu.d : Landroid/app/Activity;
    //   1489: ldc_w com/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity
    //   1492: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1495: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1498: return
    //   1499: ldc_w 'Outros_MenuLateral_Acao'
    //   1502: ldc_w 'Comprovantes'
    //   1505: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1508: new android/content/Intent
    //   1511: dup
    //   1512: getstatic gpu.d : Landroid/app/Activity;
    //   1515: ldc_w com/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity
    //   1518: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1521: astore_0
    //   1522: aload_0
    //   1523: ldc 67108864
    //   1525: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1528: pop
    //   1529: getstatic gpu.d : Landroid/app/Activity;
    //   1532: aload_0
    //   1533: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1536: return
    //   1537: new android/content/Intent
    //   1540: dup
    //   1541: getstatic gpu.d : Landroid/app/Activity;
    //   1544: ldc_w com/santander/app/meuperfil/activity/MeuPerfilActivity
    //   1547: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1550: astore_0
    //   1551: aload_0
    //   1552: ldc 67108864
    //   1554: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1557: pop
    //   1558: getstatic gpu.d : Landroid/app/Activity;
    //   1561: aload_0
    //   1562: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1565: return
    //   1566: getstatic gpu.d : Landroid/app/Activity;
    //   1569: invokestatic a : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   1572: pop
    //   1573: return
    //   1574: invokestatic d : ()V
    //   1577: return
    //   1578: getstatic gpu.d : Landroid/app/Activity;
    //   1581: ldc_w 2131296563
    //   1584: invokevirtual getString : (I)Ljava/lang/String;
    //   1587: getstatic gpu.o : Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    //   1590: invokestatic a : (Ljava/lang/String;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    //   1593: return
    //   1594: ldc_w 'Investimentos_MenuLateral_Acao'
    //   1597: ldc_w 'Poupanca'
    //   1600: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1603: getstatic gpu.d : Landroid/app/Activity;
    //   1606: iconst_1
    //   1607: invokestatic a : (Landroid/app/Activity;Z)V
    //   1610: return
    //   1611: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   1614: ldc_w 'HabilitarParaUsoNoExterior'
    //   1617: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1620: aconst_null
    //   1621: aconst_null
    //   1622: aconst_null
    //   1623: ldc_w 'ENABLE_ABROAD'
    //   1626: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1629: return
    //   1630: invokestatic a : ()Z
    //   1633: ifeq -> 1640
    //   1636: invokestatic k : ()V
    //   1639: return
    //   1640: aload_2
    //   1641: iconst_3
    //   1642: new gpx
    //   1645: dup
    //   1646: getstatic gpu.d : Landroid/app/Activity;
    //   1649: invokestatic b : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   1652: aload_2
    //   1653: invokespecial <init> : (Landroid/app/Dialog;Lhya;)V
    //   1656: invokeinterface a : (ILhxy;)V
    //   1661: return
    //   1662: ldc_w 'CreditoFinanciamento_MenuLateral_Submenu_Acao'
    //   1665: ldc_w 'Antecipar13o'
    //   1668: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1671: invokestatic a : ()Z
    //   1674: ifeq -> 1681
    //   1677: invokestatic k : ()V
    //   1680: return
    //   1681: aload_2
    //   1682: bipush #7
    //   1684: new gpy
    //   1687: dup
    //   1688: getstatic gpu.d : Landroid/app/Activity;
    //   1691: invokestatic b : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   1694: aload_2
    //   1695: invokespecial <init> : (Landroid/app/Dialog;Lhya;)V
    //   1698: invokeinterface a : (ILhxy;)V
    //   1703: return
    //   1704: ldc_w 'CreditoFinanciamento_MenuLateral_Submenu_Acao'
    //   1707: ldc_w 'AnteciparIR'
    //   1710: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1713: invokestatic a : ()Z
    //   1716: ifeq -> 1723
    //   1719: invokestatic k : ()V
    //   1722: return
    //   1723: aload_2
    //   1724: bipush #8
    //   1726: new gpz
    //   1729: dup
    //   1730: getstatic gpu.d : Landroid/app/Activity;
    //   1733: invokestatic b : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   1736: aload_2
    //   1737: invokespecial <init> : (Landroid/app/Dialog;Lhya;)V
    //   1740: invokeinterface a : (ILhxy;)V
    //   1745: return
    //   1746: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   1749: ldc_w 'SoliciteSeuCartao'
    //   1752: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1755: invokestatic s : ()V
    //   1758: return
    //   1759: invokestatic a : ()Z
    //   1762: ifeq -> 1769
    //   1765: invokestatic k : ()V
    //   1768: return
    //   1769: aload_2
    //   1770: bipush #9
    //   1772: new gqa
    //   1775: dup
    //   1776: getstatic gpu.d : Landroid/app/Activity;
    //   1779: invokestatic b : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   1782: aload_2
    //   1783: invokespecial <init> : (Landroid/app/Dialog;Lhya;)V
    //   1786: invokeinterface a : (ILhxy;)V
    //   1791: invokestatic d : ()V
    //   1794: return
    //   1795: getstatic gpu.d : Landroid/app/Activity;
    //   1798: invokestatic a : (Landroid/content/Context;)V
    //   1801: invokestatic e : ()V
    //   1804: return
    //   1805: new android/content/Intent
    //   1808: dup
    //   1809: getstatic gpu.d : Landroid/app/Activity;
    //   1812: ldc_w com/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity
    //   1815: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1818: astore_0
    //   1819: aload_0
    //   1820: ldc 67108864
    //   1822: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1825: pop
    //   1826: getstatic gpu.d : Landroid/app/Activity;
    //   1829: aload_0
    //   1830: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1833: invokestatic c : ()V
    //   1836: return
    //   1837: ldc_w 'Cartoes_BloqueioDeCartao'
    //   1840: ldc_w 'Cartoes'
    //   1843: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1846: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_Acao'
    //   1849: ldc_w 'Bloqueio'
    //   1852: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1855: new android/content/Intent
    //   1858: dup
    //   1859: getstatic gpu.d : Landroid/app/Activity;
    //   1862: ldc_w com/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity
    //   1865: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1868: astore_0
    //   1869: aload_0
    //   1870: ldc 67108864
    //   1872: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1875: pop
    //   1876: getstatic gpu.d : Landroid/app/Activity;
    //   1879: aload_0
    //   1880: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1883: return
    //   1884: new android/content/Intent
    //   1887: dup
    //   1888: getstatic gpu.d : Landroid/app/Activity;
    //   1891: ldc_w com/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity
    //   1894: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1897: astore_0
    //   1898: aload_0
    //   1899: ldc 67108864
    //   1901: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1904: pop
    //   1905: getstatic gpu.d : Landroid/app/Activity;
    //   1908: aload_0
    //   1909: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1912: return
    //   1913: ldc_w 'Cambio_TransferenciaParaOExterior'
    //   1916: ldc_w 'ServicosInternacionais_Cambio_MenuLateral_Cambio_Submenu_Acao'
    //   1919: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   1922: ldc_w 'ServicosInternacionais_Cambio_MenuLateral_Cambio_Submenu_Acao'
    //   1925: ldc_w 'TransferenciaParaOExterior'
    //   1928: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1931: new android/content/Intent
    //   1934: dup
    //   1935: getstatic gpu.d : Landroid/app/Activity;
    //   1938: ldc_w com/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity
    //   1941: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1944: astore_0
    //   1945: aload_0
    //   1946: ldc 67108864
    //   1948: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1951: pop
    //   1952: getstatic gpu.d : Landroid/app/Activity;
    //   1955: aload_0
    //   1956: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1959: return
    //   1960: ldc_w 'Outros_MenuLateral_Acao'
    //   1963: ldc_w 'PoliticaDePrivacidadeGoogle'
    //   1966: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   1969: new android/content/Intent
    //   1972: dup
    //   1973: getstatic gpu.d : Landroid/app/Activity;
    //   1976: ldc_w com/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity
    //   1979: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   1982: astore_0
    //   1983: aload_0
    //   1984: ldc 67108864
    //   1986: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   1989: pop
    //   1990: getstatic gpu.d : Landroid/app/Activity;
    //   1993: aload_0
    //   1994: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   1997: return
    //   1998: ldc_w 'Outros_MenuLateral_MeuPerfil_Acao'
    //   2001: ldc_w 'ConfiguracoesNotificacoes'
    //   2004: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2007: invokestatic getInstance : ()Lbr/com/santander/msgsdk/MSG;
    //   2010: getstatic gpu.d : Landroid/app/Activity;
    //   2013: invokeinterface initConfigPanel : (Landroid/app/Activity;)V
    //   2018: return
    //   2019: ldc_w 'Seguros_MenuLateral_SubMenu_Acao'
    //   2022: ldc_w 'BtoMeusSeguros'
    //   2025: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2028: new android/content/Intent
    //   2031: dup
    //   2032: getstatic gpu.d : Landroid/app/Activity;
    //   2035: ldc_w com/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity
    //   2038: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2041: astore_0
    //   2042: aload_0
    //   2043: ldc 67108864
    //   2045: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2048: pop
    //   2049: getstatic gpu.d : Landroid/app/Activity;
    //   2052: aload_0
    //   2053: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2056: return
    //   2057: ldc_w 'Seguros_MenuLateral_SubMenu_Acao'
    //   2060: ldc_w 'BtoMeusSinistros'
    //   2063: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2066: new android/content/Intent
    //   2069: dup
    //   2070: getstatic gpu.d : Landroid/app/Activity;
    //   2073: ldc_w com/santander/app/seguros/ui/sinister/activities/MySinisterActivity
    //   2076: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2079: astore_0
    //   2080: aload_0
    //   2081: ldc 67108864
    //   2083: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2086: pop
    //   2087: getstatic gpu.d : Landroid/app/Activity;
    //   2090: aload_0
    //   2091: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2094: return
    //   2095: new android/content/Intent
    //   2098: dup
    //   2099: getstatic gpu.d : Landroid/app/Activity;
    //   2102: ldc_w com/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity
    //   2105: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2108: astore_0
    //   2109: aload_0
    //   2110: ldc 67108864
    //   2112: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2115: pop
    //   2116: getstatic gpu.d : Landroid/app/Activity;
    //   2119: aload_0
    //   2120: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2123: return
    //   2124: new android/content/Intent
    //   2127: dup
    //   2128: getstatic gpu.d : Landroid/app/Activity;
    //   2131: ldc_w com/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity
    //   2134: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2137: astore_0
    //   2138: aload_0
    //   2139: ldc 67108864
    //   2141: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2144: pop
    //   2145: getstatic gpu.d : Landroid/app/Activity;
    //   2148: aload_0
    //   2149: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2152: return
    //   2153: ldc_w 'CreditoFinanciamento_MenuLateral_Acao'
    //   2156: ldc_w 'CreditoImobiliario'
    //   2159: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2162: ldc_w 'clkImob.ML'
    //   2165: ldc_w 'clkImob.ML.Con'
    //   2168: ldc_w 'clkImob.ML.Can'
    //   2171: getstatic gpu.d : Landroid/app/Activity;
    //   2174: ldc_w 2131298131
    //   2177: invokevirtual getString : (I)Ljava/lang/String;
    //   2180: getstatic jox.MENU_ITEM_CREDITO_IMOBILIARIO : Ljox;
    //   2183: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V
    //   2186: return
    //   2187: ldc_w 'CreditoFinanciamento_MenuLateral_Acao'
    //   2190: ldc_w 'Vermelhinha'
    //   2193: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2196: ldc_w ''
    //   2199: ldc_w ''
    //   2202: ldc_w ''
    //   2205: getstatic gpu.d : Landroid/app/Activity;
    //   2208: ldc_w 2131298132
    //   2211: invokevirtual getString : (I)Ljava/lang/String;
    //   2214: getstatic jox.MENU_ITEM_VERMELHINHA : Ljox;
    //   2217: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V
    //   2220: return
    //   2221: invokestatic c : ()Ljava/lang/String;
    //   2224: astore_0
    //   2225: aload_0
    //   2226: invokevirtual hashCode : ()I
    //   2229: lookupswitch default -> 2264, 2642 -> 2382, 2737 -> 2354, 2632970 -> 2367
    //   2264: iconst_m1
    //   2265: istore_1
    //   2266: iload_1
    //   2267: tableswitch default -> 2292, 0 -> 2397, 1 -> 2397, 2 -> 2441
    //   2292: getstatic gpu.d : Landroid/app/Activity;
    //   2295: ldc_w 2131298128
    //   2298: invokevirtual getString : (I)Ljava/lang/String;
    //   2301: astore #4
    //   2303: ldc_w 'clkCapi.ML.'
    //   2306: ldc_w 'PF'
    //   2309: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2312: astore_3
    //   2313: ldc_w 'clkCapi.ML.'
    //   2316: ldc_w 'PF.Con'
    //   2319: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2322: astore_2
    //   2323: ldc_w 'clkCapi.ML.'
    //   2326: ldc_w 'PF.Can'
    //   2329: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2332: astore_0
    //   2333: ldc_w 'Investimentos_Capitalizacao_MenuLateral_Acao'
    //   2336: ldc_w 'Capitalizacao'
    //   2339: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2342: aload_3
    //   2343: aload_2
    //   2344: aload_0
    //   2345: aload #4
    //   2347: getstatic jox.MENU_ITEM_CAPITALIZACAO : Ljox;
    //   2350: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V
    //   2353: return
    //   2354: aload_0
    //   2355: ldc_w 'VG'
    //   2358: invokevirtual equals : (Ljava/lang/Object;)Z
    //   2361: ifeq -> 2264
    //   2364: goto -> 2266
    //   2367: aload_0
    //   2368: ldc_w 'VGUN'
    //   2371: invokevirtual equals : (Ljava/lang/Object;)Z
    //   2374: ifeq -> 2264
    //   2377: iconst_1
    //   2378: istore_1
    //   2379: goto -> 2266
    //   2382: aload_0
    //   2383: ldc_w 'SE'
    //   2386: invokevirtual equals : (Ljava/lang/Object;)Z
    //   2389: ifeq -> 2264
    //   2392: iconst_2
    //   2393: istore_1
    //   2394: goto -> 2266
    //   2397: getstatic gpu.d : Landroid/app/Activity;
    //   2400: ldc_w 2131298130
    //   2403: invokevirtual getString : (I)Ljava/lang/String;
    //   2406: astore #4
    //   2408: ldc_w 'clkCapi.ML.'
    //   2411: ldc_w 'VG'
    //   2414: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2417: astore_3
    //   2418: ldc_w 'clkCapi.ML.'
    //   2421: ldc_w 'VG.Con'
    //   2424: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2427: astore_2
    //   2428: ldc_w 'clkCapi.ML.'
    //   2431: ldc_w 'VG.Can'
    //   2434: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2437: astore_0
    //   2438: goto -> 2333
    //   2441: getstatic gpu.d : Landroid/app/Activity;
    //   2444: ldc_w 2131298129
    //   2447: invokevirtual getString : (I)Ljava/lang/String;
    //   2450: astore #4
    //   2452: ldc_w 'clkCapi.ML.'
    //   2455: ldc_w 'SL'
    //   2458: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2461: astore_3
    //   2462: ldc_w 'clkCapi.ML.'
    //   2465: ldc_w 'SL.Con'
    //   2468: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2471: astore_2
    //   2472: ldc_w 'clkCapi.ML.'
    //   2475: ldc_w 'SL.Can'
    //   2478: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   2481: astore_0
    //   2482: goto -> 2333
    //   2485: getstatic gpu.d : Landroid/app/Activity;
    //   2488: ldc_w 2131299210
    //   2491: invokevirtual getString : (I)Ljava/lang/String;
    //   2494: putstatic com/santander/app/webview/presentation/WebViewActivity.b : Ljava/lang/String;
    //   2497: getstatic gpu.d : Landroid/app/Activity;
    //   2500: new android/content/Intent
    //   2503: dup
    //   2504: getstatic gpu.d : Landroid/app/Activity;
    //   2507: ldc_w com/santander/app/webview/presentation/WebViewActivity
    //   2510: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2513: iconst_1
    //   2514: invokevirtual startActivityForResult : (Landroid/content/Intent;I)V
    //   2517: return
    //   2518: ldc_w 'ContaCorrente_Acao'
    //   2521: ldc_w 'MenuSaldo'
    //   2524: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2527: new android/content/Intent
    //   2530: dup
    //   2531: getstatic gpu.d : Landroid/app/Activity;
    //   2534: ldc_w com/santander/app/SaldoActivity
    //   2537: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2540: astore_0
    //   2541: aload_0
    //   2542: ldc 67108864
    //   2544: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2547: pop
    //   2548: getstatic gpu.d : Landroid/app/Activity;
    //   2551: aload_0
    //   2552: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2555: return
    //   2556: ldc_w 'ContaCorrente_Acao'
    //   2559: ldc_w 'MenuExtrato'
    //   2562: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2565: new android/content/Intent
    //   2568: dup
    //   2569: getstatic gpu.d : Landroid/app/Activity;
    //   2572: ldc_w com/santander/app/ContaMovementActivity
    //   2575: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2578: astore_0
    //   2579: aload_0
    //   2580: ldc 67108864
    //   2582: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2585: pop
    //   2586: getstatic gpu.d : Landroid/app/Activity;
    //   2589: aload_0
    //   2590: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2593: return
    //   2594: ldc_w 'ContaCorrente_Acao'
    //   2597: ldc_w 'MenuLancFuturos'
    //   2600: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2603: new android/content/Intent
    //   2606: dup
    //   2607: getstatic gpu.d : Landroid/app/Activity;
    //   2610: ldc_w com/santander/app/FuturosActivity
    //   2613: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2616: astore_0
    //   2617: aload_0
    //   2618: ldc 67108864
    //   2620: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2623: pop
    //   2624: getstatic gpu.d : Landroid/app/Activity;
    //   2627: aload_0
    //   2628: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2631: return
    //   2632: ldc_w 'Outros_MenuLateral_Acao'
    //   2635: ldc_w 'PropostasEmAberto'
    //   2638: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2641: invokestatic a : ()Z
    //   2644: ifeq -> 2651
    //   2647: invokestatic k : ()V
    //   2650: return
    //   2651: ldc_w 'Formalizacao'
    //   2654: ldc_w 'Outros'
    //   2657: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   2660: new android/content/Intent
    //   2663: dup
    //   2664: getstatic gpu.d : Landroid/app/Activity;
    //   2667: ldc_w com/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity
    //   2670: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2673: astore_0
    //   2674: aload_0
    //   2675: ldc 67108864
    //   2677: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   2680: pop
    //   2681: getstatic gpu.d : Landroid/app/Activity;
    //   2684: aload_0
    //   2685: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2688: return
    //   2689: invokestatic getInstance : ()Lbr/com/santander/msgsdk/MSG;
    //   2692: getstatic gpu.d : Landroid/app/Activity;
    //   2695: invokeinterface initNotifications : (Landroid/app/Activity;)V
    //   2700: return
    //   2701: ldc_w 'Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu'
    //   2704: ldc_w 'HabilitarTransferenciaPorMensagem'
    //   2707: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2710: invokestatic a : ()Z
    //   2713: ifeq -> 2732
    //   2716: getstatic gpu.d : Landroid/app/Activity;
    //   2719: invokestatic canDrawOverlays : (Landroid/content/Context;)Z
    //   2722: ifne -> 2732
    //   2725: getstatic gpu.d : Landroid/app/Activity;
    //   2728: invokestatic a : (Landroid/app/Activity;)V
    //   2731: return
    //   2732: getstatic gpu.d : Landroid/app/Activity;
    //   2735: invokestatic c : (Landroid/content/Context;)V
    //   2738: invokestatic a : ()V
    //   2741: return
    //   2742: ldc_w 'Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu'
    //   2745: ldc_w 'DesabilitarTransferenciaPorMensagem'
    //   2748: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2751: invokestatic a : ()Z
    //   2754: ifeq -> 2773
    //   2757: getstatic gpu.d : Landroid/app/Activity;
    //   2760: invokestatic canDrawOverlays : (Landroid/content/Context;)Z
    //   2763: ifne -> 2773
    //   2766: getstatic gpu.d : Landroid/app/Activity;
    //   2769: invokestatic a : (Landroid/app/Activity;)V
    //   2772: return
    //   2773: getstatic gpu.d : Landroid/app/Activity;
    //   2776: invokestatic d : (Landroid/content/Context;)V
    //   2779: invokestatic a : ()V
    //   2782: return
    //   2783: ldc_w 'Investimentos_MenuLateral_Acao'
    //   2786: ldc_w 'CarteiraDiaria'
    //   2789: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2792: new android/content/Intent
    //   2795: dup
    //   2796: getstatic gpu.d : Landroid/app/Activity;
    //   2799: ldc_w com/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity
    //   2802: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   2805: astore_0
    //   2806: getstatic gpu.d : Landroid/app/Activity;
    //   2809: aload_0
    //   2810: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   2813: return
    //   2814: new gqb
    //   2817: dup
    //   2818: invokespecial <init> : ()V
    //   2821: astore_0
    //   2822: ldc_w 'CreditoFinanciamento_MenuLateral_Submenu_Acao'
    //   2825: ldc_w 'GestaoDeCredito'
    //   2828: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2831: invokestatic a : ()Lgnp;
    //   2834: invokevirtual b : ()Lie;
    //   2837: ifnull -> 364
    //   2840: invokestatic a : ()Lnab;
    //   2843: invokevirtual f : ()Lji;
    //   2846: ifnull -> 364
    //   2849: invokestatic a : ()Lmzx;
    //   2852: invokevirtual c : ()Ljava/util/Properties;
    //   2855: ifnull -> 364
    //   2858: invokestatic c : ()Ljava/lang/String;
    //   2861: invokevirtual toString : ()Ljava/lang/String;
    //   2864: ifnull -> 364
    //   2867: invokestatic a : ()Lafw;
    //   2870: invokestatic a : ()Lgnp;
    //   2873: invokevirtual b : ()Lie;
    //   2876: invokestatic a : ()Lnab;
    //   2879: invokevirtual f : ()Lji;
    //   2882: invokestatic a : ()Lmzx;
    //   2885: invokevirtual c : ()Ljava/util/Properties;
    //   2888: aload_0
    //   2889: invokestatic c : ()Ljava/lang/String;
    //   2892: invokevirtual toString : ()Ljava/lang/String;
    //   2895: invokestatic a : ()Z
    //   2898: invokevirtual a : (Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z
    //   2901: pop
    //   2902: invokestatic a : ()Lafw;
    //   2905: getstatic gpu.d : Landroid/app/Activity;
    //   2908: invokevirtual a : (Landroid/content/Context;)V
    //   2911: return
    //   2912: new gqh
    //   2915: dup
    //   2916: invokespecial <init> : ()V
    //   2919: astore_0
    //   2920: ldc_w 'CreditoFinanciamento_MenuLateral_Submenu_Acao'
    //   2923: ldc_w 'GestaoDeCredito'
    //   2926: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   2929: invokestatic a : ()Lgnp;
    //   2932: invokevirtual b : ()Lie;
    //   2935: ifnull -> 364
    //   2938: invokestatic a : ()Lnab;
    //   2941: invokevirtual f : ()Lji;
    //   2944: ifnull -> 364
    //   2947: invokestatic a : ()Lmzx;
    //   2950: invokevirtual c : ()Ljava/util/Properties;
    //   2953: ifnull -> 364
    //   2956: invokestatic c : ()Ljava/lang/String;
    //   2959: invokevirtual toString : ()Ljava/lang/String;
    //   2962: ifnull -> 364
    //   2965: invokestatic a : ()Lafw;
    //   2968: invokestatic a : ()Lgnp;
    //   2971: invokevirtual b : ()Lie;
    //   2974: invokestatic a : ()Lnab;
    //   2977: invokevirtual f : ()Lji;
    //   2980: invokestatic a : ()Lmzx;
    //   2983: invokevirtual c : ()Ljava/util/Properties;
    //   2986: aload_0
    //   2987: invokestatic c : ()Ljava/lang/String;
    //   2990: invokevirtual toString : ()Ljava/lang/String;
    //   2993: invokestatic a : ()Z
    //   2996: invokevirtual a : (Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z
    //   2999: pop
    //   3000: invokestatic a : ()Lafw;
    //   3003: getstatic gpu.d : Landroid/app/Activity;
    //   3006: invokevirtual a : (Landroid/content/Context;)V
    //   3009: return
  }
  
  public static void a(jox paramjox, SlidingMenu paramSlidingMenu) {
    paramSlidingMenu.i();
    a(paramjox);
  }
  
  private static mzp[] a(ipp paramipp) {
    switch (grd.b[paramipp.ordinal()]) {
      default:
        return null;
      case 1:
        return new mzp[] { mzp.RELOAD_POUPANCA };
      case 2:
        break;
    } 
    return new mzp[] { mzp.RELOAD_CARTOES, mzp.RELOAD_CARTOES_DESBLOQUEIO };
  }
  
  public static void b(Activity paramActivity) {
    d = paramActivity;
  }
  
  public static void b(ActionBar paramActionBar) {
    ((ImageView)paramActionBar.getCustomView().findViewById(2131755202)).setImageDrawable(d.getResources().getDrawable(2130838770));
  }
  
  public static void b(ActionBar paramActionBar, String paramString) {
    TextView textView = (TextView)paramActionBar.getCustomView().findViewById(2131755204);
    if (textView != null) {
      textView.setVisibility(0);
      textView.setText(paramString);
      if (paramString.length() > 20 && paramString.length() < 30) {
        textView.setTextSize(15.0F);
        return;
      } 
      if (paramString.length() > 30) {
        textView.setTextSize(12.0F);
        return;
      } 
    } 
  }
  
  private static void b(boolean paramBoolean) {
    // Byte code:
    //   0: getstatic gpu.j : I
    //   3: tableswitch default -> 28, 1 -> 59, 2 -> 45, 3 -> 52
    //   28: ldc_w ''
    //   31: astore_1
    //   32: iload_0
    //   33: ifeq -> 66
    //   36: ldc 'Continuar'
    //   38: astore_2
    //   39: aload_1
    //   40: aload_2
    //   41: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   44: return
    //   45: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_ConhecaAppWay_PopUp_Acao'
    //   48: astore_1
    //   49: goto -> 32
    //   52: ldc_w ''
    //   55: astore_1
    //   56: goto -> 32
    //   59: ldc_w 'Cartoes_MenuLateral_Cartoes_Submenu_UltimasCompras_PopUp_Acao'
    //   62: astore_1
    //   63: goto -> 32
    //   66: ldc 'Cancelar'
    //   68: astore_2
    //   69: goto -> 39
  }
  
  public static boolean b() {
    return (miq.C().f().z() > 0);
  }
  
  public static int c() {
    return k;
  }
  
  private static void c(jqj paramjqj) {
    Intent intent1;
    Intent intent2 = null;
    if (g.a(paramjqj)) {
      intent1 = new Intent((Context)d, MeuPerfilSolicitarCartaoNovamenteActivity.class);
    } else if (g.e((jqj)intent1) || g.f((jqj)intent1) || g.g((jqj)intent1)) {
      f();
      intent1 = intent2;
    } else {
      intent1 = new Intent((Context)d, MeuPerfilSolicitarCartaoActivity.class);
    } 
    if (intent1 != null)
      d.startActivity(intent1); 
  }
  
  public static void d() {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)d, "android.permission.CAMERA") != 0 || ContextCompat.checkSelfPermission((Context)d, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
        ActivityCompat.requestPermissions(d, new String[] { "android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE" }, 1);
        return;
      } 
      e();
      return;
    } 
    e();
  }
  
  private static void d(jow paramjow) {
    switch (grd.a[paramjow.g().ordinal()]) {
      default:
        return;
      case 17:
        if (!paramjow.f()) {
          if (!miq.C().f().s().i()) {
            a(ipp.CARTAO_MENU_ITEM, new gra(paramjow));
            return;
          } 
          a(paramjow);
          return;
        } 
      case 11:
        if (paramjow.e() == 1) {
          a(paramjow.g(), o);
          return;
        } 
      case 43:
        if (paramjow.e() == 1) {
          a(ipp.POUPANCA_MENU_ITEM, new grb(paramjow));
          return;
        } 
      case 18:
        break;
    } 
    frq.d("Pagamentos_Pagamento_MenuLateral_Acao", "Pagamentos");
    if (!paramjow.f()) {
      if (!miq.C().f().s().i()) {
        a(ipp.CARTAO_MENU_ITEM, new grc(paramjow));
        return;
      } 
      a(paramjow);
      return;
    } 
  }
  
  private static void d(jox paramjox) {
    switch (grd.a[paramjox.ordinal()]) {
      default:
        return;
      case 66:
        frq.d("Investimentos_Capitalizacao_MenuLateral_Capitalizacao_PopUp_Acao", "Continuar");
        return;
      case 64:
        frq.d("CreditoFinanciamento_MenuLateral_PopupCreditoImobiliario_Acao", "Continuar");
        return;
      case 65:
        break;
    } 
    frq.d("Outros_MenuLateral_Vermelhinha_PopUp_Acao", "Continuar");
  }
  
  private static void d(jqj paramjqj) {
    if (g.f(paramjqj) || g.g(paramjqj)) {
      Intent intent = new Intent((Context)d, MeuPerfilAtivarCartaoActivity.class);
      Bundle bundle = new Bundle();
      bundle.putString("xxx", paramjqj.i());
      intent.putExtras(bundle);
      d.startActivity(intent);
      return;
    } 
    if (g.e(paramjqj)) {
      g();
      return;
    } 
    if (g.h(paramjqj)) {
      mxn.a(d, 2130968984);
      return;
    } 
    mxn.a(d, 2130968983);
  }
  
  public static void e() {
    Dialog dialog = new Dialog((Context)d);
    dialog.requestWindowFeature(1);
    dialog.setContentView(2130968988);
    dialog.findViewById(2131756966).setOnClickListener(new gqs(dialog));
    dialog.findViewById(2131756968).setOnClickListener(new gqt(dialog));
    dialog.show();
  }
  
  private static void e(jow paramjow) {
    switch (grd.a[paramjow.g().ordinal()]) {
      default:
        return;
      case 85:
        frq.d("ContaCorrente_Acao", "Menu");
        return;
      case 17:
        frq.d("Cartoes_MenuLateral_Acao", "Cartoes");
        return;
      case 25:
        frq.d("CreditoFinanciamento_MenuLateral_Acao", "Emprestimos");
        return;
      case 22:
        frq.d("Investimentos_MenuLateral_Acao", "Investimentos");
        return;
      case 57:
        frq.d("Seguros_MenuLateral_Acao", "BtoSeguros");
        return;
      case 82:
        break;
    } 
    hxi.c();
  }
  
  private static void e(jox paramjox) {
    switch (grd.a[paramjox.ordinal()]) {
      default:
        return;
      case 66:
        frq.d("Investimentos_Capitalizacao_MenuLateral_Capitalizacao_PopUp_Acao", "Cancelar");
        return;
      case 64:
        frq.d("CreditoFinanciamento_MenuLateral_PopupCreditoImobiliario_Acao", "Cancelar");
        return;
      case 65:
        break;
    } 
    frq.d("Outros_MenuLateral_Vermelhinha_PopUp_Acao", "Cancelar");
  }
  
  public static void f() {
    mzq.a(d, false);
    Dialog dialog = new Dialog((Context)d, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(d);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg(d));
    dialog.setOnShowListener(new myh(d));
    dialog.findViewById(2131756828).setOnClickListener(new gqu(dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(d.getResources().getString(2131298893)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(d.getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public static void g() {
    mzq.a(d, false);
    Dialog dialog = new Dialog((Context)d, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(d);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg(d));
    dialog.setOnShowListener(new myh(d));
    dialog.findViewById(2131756828).setOnClickListener(new gqv(dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(d.getResources().getString(2131298846)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(d.getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public static void h() {
    Intent intent = new Intent((Context)d, MapaLocalizadorAgenciaActivity.class);
    intent.setFlags(67108864);
    intent.putExtra("from", "menu");
    d.startActivity(intent);
  }
  
  public static void i() {
    frq.d("CreditoFinanciamento_MenuLateral_Submenu_Acao", "SimularEmprestimo");
    Intent intent = new Intent((Context)d, CPSimulacaoActivity.class);
    intent.setFlags(67108864);
    d.startActivity(intent);
  }
  
  public static void j() {
    if (mzr.a()) {
      k();
      return;
    } 
    if (hyb.j().c()) {
      Intent intent = new Intent((Context)d, AcordoSimulacaoActivity.class);
      d.startActivity(intent);
      return;
    } 
    u();
  }
  
  public static void k() {
    Intent intent = new Intent((Context)d, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    d.startActivity(intent);
  }
  
  private static void q() {
    l = new ArrayList<jow>();
    m = new HashMap<Integer, List<jow>>();
    List<jow> list = hat.v().a();
    if (list != null && !list.isEmpty()) {
      Iterator<jow> iterator = list.iterator();
      for (int i = 0; iterator.hasNext(); i++) {
        jow jow = iterator.next();
        l.add(jow);
        if (!jow.h().isEmpty())
          m.put(Integer.valueOf(i), jow.h()); 
      } 
    } 
  }
  
  private static void r() {
    String str;
    if (i != null && i.isShowing()) {
      i.dismiss();
      i = null;
    } 
    gqi gqi = new gqi();
    gqj gqj = new gqj();
    Activity activity = d;
    if (miq.C().s()) {
      str = d.getString(2131296567);
    } else {
      str = d.getString(2131296566);
    } 
    i = mxn.a(activity, gqi, gqj, str, d.getString(2131296657), d.getString(2131296654));
  }
  
  private static void s() {
    int i;
    if (i != null && i.isShowing()) {
      i.dismiss();
      i = null;
    } 
    String str = mzr.c().toString();
    gqo gqo = new gqo(str);
    gqp gqp = new gqp(str);
    if (miq.C().s()) {
      i = 2131296564;
    } else {
      i = 2131296563;
    } 
    i = mxn.a(d, gqo, gqp, "Atenção", d.getResources().getString(i), "Continuar", "Cancelar");
  }
  
  private static void t() {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)d, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
        ActivityCompat.requestPermissions(d, new String[] { "android.permission.ACCESS_COARSE_LOCATION" }, 9);
        return;
      } 
      h();
      return;
    } 
    h();
  }
  
  private static void u() {
    byte b;
    boolean bool = hyb.j().d();
    Intent intent = new Intent((Context)d, CPUSimulacaoActivity.class);
    if (bool) {
      b = 12;
    } else {
      b = 13;
    } 
    intent.putExtra("extra_type_emprestimo", b);
    intent.setFlags(67108864);
    d.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.ExitActivity;
import com.santander.app.MinhaConta;

public class mxn {
  public static final String a = "Dispositivo com conexão instável ou sem acesso à internet. Verifique se sua conexão está disponível. Por favor acesse novamente.";
  
  public static Activity b;
  
  public static Dialog c = null;
  
  private static final String d = "DialogUtil";
  
  public static Dialog a(Activity paramActivity) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968973);
    ((Button)dialog.findViewById(2131756915)).setOnClickListener(new myc(paramActivity, dialog));
    ((Button)dialog.findViewById(2131756941)).setOnClickListener(new mye(dialog));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog a(Activity paramActivity, int paramInt) {
    return b(paramActivity, paramInt, false);
  }
  
  public static Dialog a(Activity paramActivity, int paramInt1, int paramInt2, String paramString, int paramInt3) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(paramInt1);
    ((TextView)dialog.findViewById(paramInt2)).setText((CharSequence)Html.fromHtml(paramString));
    ((Button)dialog.findViewById(paramInt3)).setOnClickListener(new myb(dialog));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog a(Activity paramActivity, int paramInt, boolean paramBoolean) {
    return b(paramActivity, paramInt, paramBoolean);
  }
  
  public static Dialog a(Activity paramActivity, Dialog paramDialog, String paramString1, String paramString2, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2) {
    String str;
    mzq.a(paramActivity, false);
    TextView textView2 = (TextView)paramDialog.findViewById(2131756525);
    TextView textView1 = (TextView)paramDialog.findViewById(2131756914);
    textView2.setText(paramString1);
    paramString1 = paramString2;
    if (paramString2.contains("\\|")) {
      String[] arrayOfString = paramString2.split("\\|");
      str = arrayOfString[arrayOfString.length - 1];
    } 
    textView1.setText(hav.a(str));
    ((Button)paramDialog.findViewById(2131755738)).setOnClickListener(paramOnClickListener1);
    ((Button)paramDialog.findViewById(2131758433)).setOnClickListener(paramOnClickListener2);
    paramDialog.setOnDismissListener(new myg(paramActivity));
    paramDialog.setOnShowListener(new myh(paramActivity));
    paramDialog.show();
    return paramDialog;
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, String paramString1, String paramString2, String paramString3) {
    return c(paramActivity, paramOnClickListener1, paramOnClickListener2, paramString1, paramString2, paramString3);
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, String paramString1, String paramString2, String paramString3, String paramString4) {
    return b(paramActivity, paramOnClickListener1, paramOnClickListener2, paramString1, paramString2, paramString3, paramString4);
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2) {
    return c(paramActivity, paramOnClickListener, paramString1, paramString2);
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2, String paramString3) {
    return b(paramActivity, paramOnClickListener, "", paramString1, paramString2, paramString3);
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2, String paramString3, String paramString4) {
    return b(paramActivity, paramOnClickListener, paramString1, paramString2, paramString3, paramString4);
  }
  
  public static Dialog a(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    return b(paramActivity, paramOnClickListener, paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public static Dialog a(Activity paramActivity, String paramString1, String paramString2, View.OnClickListener paramOnClickListener) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968976);
    dialog.setCancelable(false);
    Window window = dialog.getWindow();
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    ((TextView)dialog.findViewById(2131756949)).setText(paramString1);
    Button button = (Button)dialog.findViewById(2131756931);
    button.setOnClickListener(paramOnClickListener);
    button.setText(paramString2);
    dialog.show();
    return dialog;
  }
  
  public static Dialog a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean) {
    return a(paramActivity, paramString1, paramString2, paramBoolean, (String)null);
  }
  
  public static Dialog a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, String paramString3) {
    String str;
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969209);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    TextView textView2 = (TextView)dialog.findViewById(2131756525);
    TextView textView1 = (TextView)dialog.findViewById(2131756914);
    textView2.setText(paramString1);
    paramString1 = paramString2;
    if (paramString2 != null) {
      paramString1 = paramString2;
      if (paramString2.contains("\\|")) {
        String[] arrayOfString = paramString2.split("\\|");
        str = arrayOfString[arrayOfString.length - 1];
      } 
    } 
    textView1.setText(hav.a(str));
    Button button = (Button)dialog.findViewById(2131755738);
    if (paramBoolean) {
      b = paramActivity;
      button.setOnClickListener(new mxx(dialog));
    } else {
      button.setOnClickListener(new mxy(dialog));
    } 
    if (paramString3 != null)
      button.setText(paramString3); 
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean1, String paramString3, boolean paramBoolean2) {
    String str;
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969209);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    TextView textView2 = (TextView)dialog.findViewById(2131756525);
    TextView textView1 = (TextView)dialog.findViewById(2131756914);
    textView2.setText(paramString1);
    paramString1 = paramString2;
    if (paramString2 != null) {
      paramString1 = paramString2;
      if (paramString2.contains("\\|")) {
        String[] arrayOfString = paramString2.split("\\|");
        str = arrayOfString[arrayOfString.length - 1];
      } 
    } 
    textView1.setText(hav.a(str));
    Button button = (Button)dialog.findViewById(2131755738);
    if (paramBoolean1) {
      b = paramActivity;
      button.setOnClickListener(new mxz(dialog, paramBoolean2, paramActivity));
    } else {
      button.setOnClickListener(new mya(dialog));
    } 
    if (paramString3 != null)
      button.setText(paramString3); 
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog a(Activity paramActivity, String paramString, boolean paramBoolean) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969209);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    TextView textView1 = (TextView)dialog.findViewById(2131756525);
    TextView textView2 = (TextView)dialog.findViewById(2131756914);
    textView1.setText(paramActivity.getApplicationContext().getResources().getString(2131297207));
    String str = paramString;
    if (paramString != null) {
      str = paramString;
      if (paramString.contains("\\|")) {
        String[] arrayOfString = paramString.split("\\|");
        str = arrayOfString[arrayOfString.length - 1];
      } 
    } 
    textView2.setText(hav.a(str));
    ((Button)dialog.findViewById(2131755738)).setOnClickListener(new mxp(dialog, paramBoolean, paramActivity));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static void a(Activity paramActivity, String paramString) {
    String str2 = paramActivity.getApplicationContext().getResources().getString(2131297206);
    String str1 = paramString;
    if (paramString.toLowerCase().contains("exception occurred evaluating xpath"))
      str1 = paramActivity.getString(2131297566); 
    c = a(paramActivity, str2, str1, true);
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)paramActivity);
    paramActivity.getLayoutInflater();
    builder.setTitle(paramString1).setMessage(paramString2).setCancelable(false).setNegativeButton(2131296665, new mxo(null));
    builder.create().show();
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, String paramString3) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969209);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    TextView textView2 = (TextView)dialog.findViewById(2131756525);
    if (paramString1 == null)
      paramString1 = ""; 
    textView2.setText(paramString1);
    TextView textView1 = (TextView)dialog.findViewById(2131756914);
    if (paramString2 == null)
      paramString2 = ""; 
    textView1.setText(paramString2);
    Button button = (Button)dialog.findViewById(2131755738);
    button.setOnClickListener(new mxw(dialog));
    if (paramString3 == null)
      paramString3 = ""; 
    button.setText(paramString3);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean, String paramString) {
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968963);
    dialog.setOwnerActivity(paramActivity);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    ((Button)dialog.findViewById(2131756915)).setOnClickListener(new mxq(paramBoolean, paramActivity, dialog));
    ((TextView)dialog.findViewById(2131756914)).setText(paramString);
    dialog.show();
  }
  
  public static void a(String paramString, boolean paramBoolean) {
    aqt.a();
    if (MinhaConta.h())
      return; 
    if (MinhaConta.c()) {
      MinhaConta.a(paramString, paramBoolean);
      return;
    } 
    Intent intent = new Intent(MinhaConta.b(), ExitActivity.class);
    intent.addFlags(268435456);
    intent.addFlags(67108864);
    intent.putExtra("errorMessage", paramString);
    intent.putExtra("showHome", paramBoolean);
    MinhaConta.b().startActivity(intent);
  }
  
  public static Dialog b(Activity paramActivity) {
    return ano.b(paramActivity);
  }
  
  public static Dialog b(Activity paramActivity, int paramInt, boolean paramBoolean) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(paramActivity);
    dialog.setContentView(paramInt);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.findViewById(2131756828).setOnClickListener(new myf(dialog, paramBoolean, paramActivity));
    try {
      dialog.show();
      return dialog;
    } catch (Exception exception) {
      Log.e("DialogUtil", "Erro showLoading", exception);
      return dialog;
    } 
  }
  
  public static Dialog b(Activity paramActivity, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, String paramString1, String paramString2, String paramString3) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString1);
    Button button2 = (Button)dialog.findViewById(2131756528);
    button2.setText(paramString2);
    button2.setOnClickListener(paramOnClickListener1);
    Button button1 = (Button)dialog.findViewById(2131756527);
    button1.setText(paramString3);
    button1.setOnClickListener(paramOnClickListener2);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  private static Dialog b(Activity paramActivity, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, String paramString1, String paramString2, String paramString3, String paramString4) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756525)).setText(paramString1);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString2);
    Button button2 = (Button)dialog.findViewById(2131756528);
    button2.setText(paramString3);
    button2.setOnClickListener(paramOnClickListener1);
    Button button1 = (Button)dialog.findViewById(2131756527);
    button1.setText(paramString4);
    button1.setOnClickListener(paramOnClickListener2);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog b(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969209);
    ((TextView)dialog.findViewById(2131756914)).setText(paramString1);
    Button button = (Button)dialog.findViewById(2131755738);
    button.setText(paramString2);
    button.setOnClickListener(paramOnClickListener);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  private static Dialog b(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2, String paramString3, String paramString4) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString2);
    Button button2 = (Button)dialog.findViewById(2131756528);
    button2.setText(paramString3);
    button2.setOnClickListener(paramOnClickListener);
    Button button1 = (Button)dialog.findViewById(2131756527);
    button1.setText(paramString4);
    button1.setOnClickListener(new mxr(dialog));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  private static Dialog b(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString3);
    Button button2 = (Button)dialog.findViewById(2131756528);
    button2.setText(paramString4);
    button2.setOnClickListener(paramOnClickListener);
    Button button1 = (Button)dialog.findViewById(2131756527);
    button1.setText(paramString5);
    button1.setOnClickListener(new mxs(paramString1, paramString2, dialog));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static Dialog b(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, String paramString3) {
    String str;
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968978);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    TextView textView2 = (TextView)dialog.findViewById(2131756525);
    TextView textView1 = (TextView)dialog.findViewById(2131756914);
    textView2.setText(paramString1);
    paramString1 = paramString2;
    if (paramString2.contains("\\|")) {
      String[] arrayOfString = paramString2.split("\\|");
      str = arrayOfString[arrayOfString.length - 1];
    } 
    textView1.setText(hav.a(str));
    Button button = (Button)dialog.findViewById(2131755738);
    if (paramBoolean) {
      b = paramActivity;
      button.setOnClickListener(new mxt(dialog));
    } else {
      button.setOnClickListener(new mxu(dialog));
    } 
    if (paramString3 != null)
      button.setText(paramString3); 
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static void b(Activity paramActivity, String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   4: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   7: ldc 2131297206
    //   9: invokevirtual getString : (I)Ljava/lang/String;
    //   12: astore_3
    //   13: aload_1
    //   14: astore_2
    //   15: aload_1
    //   16: ifnull -> 53
    //   19: aload_1
    //   20: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   23: ldc_w 'invalid response datahash'
    //   26: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   29: ifne -> 46
    //   32: aload_1
    //   33: astore_2
    //   34: aload_1
    //   35: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   38: ldc 'exception occurred evaluating xpath'
    //   40: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   43: ifeq -> 53
    //   46: aload_0
    //   47: ldc 2131297566
    //   49: invokevirtual getString : (I)Ljava/lang/String;
    //   52: astore_2
    //   53: aload_0
    //   54: aload_3
    //   55: aload_2
    //   56: iconst_0
    //   57: invokestatic a : (Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;
    //   60: putstatic mxn.c : Landroid/app/Dialog;
    //   63: return
  }
  
  public static Dialog c(Activity paramActivity) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity);
    dialog.setContentView(2130968946);
    dialog.setCancelable(false);
    ((TextView)dialog.findViewById(2131756847)).setText((CharSequence)Html.fromHtml("<b>Contas de água, luz e telefone:</b> últimos 10 anos (apartir de 2010)"));
    ((TextView)dialog.findViewById(2131756848)).setText((CharSequence)Html.fromHtml("<b>Títulos:</b> 24 meses para títulos Santander e 18 meses para títulos de outros bancos"));
    ((TextView)dialog.findViewById(2131756849)).setText((CharSequence)Html.fromHtml("<b>Telefone Pré-Pago:</b> 10 anos (a partir de 2010)"));
    ((TextView)dialog.findViewById(2131756850)).setText((CharSequence)Html.fromHtml("<b>Cartão de Crédito:</b> 12 meses e para AMEX últimos 10 anos (a partir de 2010)"));
    ((TextView)dialog.findViewById(2131756851)).setText((CharSequence)Html.fromHtml("<b>Transferência entre Contas Santander:</b> 24 meses"));
    ((TextView)dialog.findViewById(2131756852)).setText((CharSequence)Html.fromHtml("<b>DOC:</b> 18 meses"));
    ((TextView)dialog.findViewById(2131756853)).setText((CharSequence)Html.fromHtml("<b>TED:</b> 12 meses"));
    ((Button)dialog.findViewById(2131756854)).setOnClickListener(new mxv(dialog));
    dialog.show();
    return dialog;
  }
  
  private static Dialog c(Activity paramActivity, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, String paramString1, String paramString2, String paramString3) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString1);
    Button button2 = (Button)dialog.findViewById(2131756528);
    button2.setText(paramString2);
    button2.setOnClickListener(paramOnClickListener1);
    Button button1 = (Button)dialog.findViewById(2131756527);
    button1.setText(paramString3);
    button1.setOnClickListener(paramOnClickListener2);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  private static Dialog c(Activity paramActivity, View.OnClickListener paramOnClickListener, String paramString1, String paramString2) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    ((TextView)dialog.findViewById(2131756525)).setText("Erro");
    ((TextView)dialog.findViewById(2131756526)).setText(paramString1);
    Button button = (Button)dialog.findViewById(2131756528);
    button.setText(paramString2);
    button.setOnClickListener(paramOnClickListener);
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
    return dialog;
  }
  
  public static void c(Activity paramActivity, String paramString) {
    String str = paramString;
    if ((paramString.split("[|]")).length > 1)
      str = paramString.split("[|]")[1]; 
    b(paramActivity, str);
  }
  
  public static Dialog d(Activity paramActivity, String paramString) {
    return a(paramActivity, paramActivity.getApplicationContext().getResources().getString(2131297206), paramString, false);
  }
  
  public static Dialog e(Activity paramActivity, String paramString) {
    return a(paramActivity, paramActivity.getApplicationContext().getResources().getString(2131297207), paramString, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
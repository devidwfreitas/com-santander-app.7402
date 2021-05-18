import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.PoupancaResgateConfirmacaoActivity;

public class iiq extends Fragment {
  private final String a = "ConfirmarInvestimentoPoupancaResgatePasoTresBFragment";
  
  private PoupancaResgateConfirmacaoActivity b;
  
  public void a(PoupancaResgateConfirmacaoActivity paramPoupancaResgateConfirmacaoActivity) {
    this.b = paramPoupancaResgateConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    // Byte code:
    //   0: aload_1
    //   1: ldc 2130969243
    //   3: aload_2
    //   4: iconst_0
    //   5: invokevirtual inflate : (ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   8: astore_3
    //   9: aload_3
    //   10: ldc 2131758571
    //   12: invokevirtual findViewById : (I)Landroid/view/View;
    //   15: new iir
    //   18: dup
    //   19: aload_0
    //   20: invokespecial <init> : (Liiq;)V
    //   23: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   26: aload_0
    //   27: getfield b : Lcom/santander/app/PoupancaResgateConfirmacaoActivity;
    //   30: invokevirtual d : ()Lfts;
    //   33: astore #4
    //   35: aload_3
    //   36: ldc 2131758465
    //   38: invokevirtual findViewById : (I)Landroid/view/View;
    //   41: checkcast android/widget/TextView
    //   44: aload #4
    //   46: invokevirtual j : ()Ljava/lang/String;
    //   49: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   52: aload_3
    //   53: ldc 2131758466
    //   55: invokevirtual findViewById : (I)Landroid/view/View;
    //   58: checkcast android/widget/TextView
    //   61: aload #4
    //   63: invokevirtual f : ()Ljava/lang/String;
    //   66: invokestatic c : (Ljava/lang/String;)Ljava/lang/String;
    //   69: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   72: aload_3
    //   73: ldc 2131758467
    //   75: invokevirtual findViewById : (I)Landroid/view/View;
    //   78: checkcast android/widget/TextView
    //   81: new java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial <init> : ()V
    //   88: aload #4
    //   90: invokevirtual l : ()Ljava/lang/String;
    //   93: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: ldc ' '
    //   98: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload #4
    //   103: invokevirtual o : ()Ljava/lang/String;
    //   106: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual toString : ()Ljava/lang/String;
    //   112: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   115: aload_3
    //   116: ldc 2131758459
    //   118: invokevirtual findViewById : (I)Landroid/view/View;
    //   121: checkcast android/widget/TextView
    //   124: astore_2
    //   125: aload_2
    //   126: aload #4
    //   128: invokevirtual x : ()Ljava/lang/String;
    //   131: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   134: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   137: aload_2
    //   138: astore_1
    //   139: new java/text/SimpleDateFormat
    //   142: dup
    //   143: ldc 'yyyyMMdd'
    //   145: invokespecial <init> : (Ljava/lang/String;)V
    //   148: aload #4
    //   150: invokevirtual p : ()Ljava/lang/String;
    //   153: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   156: astore #5
    //   158: aload_2
    //   159: astore_1
    //   160: new java/text/SimpleDateFormat
    //   163: dup
    //   164: ldc 'dd/MM/yyyy'
    //   166: invokespecial <init> : (Ljava/lang/String;)V
    //   169: aload #5
    //   171: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   174: astore #5
    //   176: aload_2
    //   177: astore_1
    //   178: aload_3
    //   179: ldc 2131758568
    //   181: invokevirtual findViewById : (I)Landroid/view/View;
    //   184: checkcast android/widget/TextView
    //   187: astore_2
    //   188: aload_2
    //   189: astore_1
    //   190: aload_2
    //   191: aload #5
    //   193: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   196: aload_3
    //   197: ldc 2131755402
    //   199: invokevirtual findViewById : (I)Landroid/view/View;
    //   202: checkcast android/widget/TextView
    //   205: astore_1
    //   206: new java/text/SimpleDateFormat
    //   209: dup
    //   210: ldc 'dd/MM/yyyy HH:mm:ss'
    //   212: invokespecial <init> : (Ljava/lang/String;)V
    //   215: new java/util/Date
    //   218: dup
    //   219: invokespecial <init> : ()V
    //   222: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   225: astore_2
    //   226: aload_1
    //   227: new java/lang/StringBuilder
    //   230: dup
    //   231: invokespecial <init> : ()V
    //   234: ldc 'Data/hora: '
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload_2
    //   240: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual toString : ()Ljava/lang/String;
    //   246: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   249: aload_3
    //   250: ldc 2131758570
    //   252: invokevirtual findViewById : (I)Landroid/view/View;
    //   255: checkcast android/widget/TextView
    //   258: astore_1
    //   259: aload #4
    //   261: invokevirtual a : ()Ljava/lang/String;
    //   264: ifnull -> 304
    //   267: aload #4
    //   269: invokevirtual a : ()Ljava/lang/String;
    //   272: invokevirtual length : ()I
    //   275: ifle -> 304
    //   278: aload_1
    //   279: iconst_0
    //   280: invokevirtual setVisibility : (I)V
    //   283: aload_1
    //   284: aload #4
    //   286: invokevirtual a : ()Ljava/lang/String;
    //   289: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   292: aload_3
    //   293: areturn
    //   294: astore_2
    //   295: aload_1
    //   296: ldc ''
    //   298: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   301: goto -> 196
    //   304: aload #4
    //   306: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   309: ifnull -> 328
    //   312: aload_1
    //   313: iconst_0
    //   314: invokevirtual setVisibility : (I)V
    //   317: aload_1
    //   318: aload #4
    //   320: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   323: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   326: aload_3
    //   327: areturn
    //   328: aload #4
    //   330: invokevirtual getFaultcode : ()Ljava/lang/String;
    //   333: ifnull -> 292
    //   336: aload_1
    //   337: iconst_0
    //   338: invokevirtual setVisibility : (I)V
    //   341: aload_1
    //   342: aload #4
    //   344: invokevirtual getFaultcode : ()Ljava/lang/String;
    //   347: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   350: aload_3
    //   351: areturn
    // Exception table:
    //   from	to	target	type
    //   139	158	294	java/text/ParseException
    //   160	176	294	java/text/ParseException
    //   178	188	294	java/text/ParseException
    //   190	196	294	java/text/ParseException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iiq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
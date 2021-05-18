import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaResgateActivity;
import com.santander.app.RendaFixaResgateConfirmacaoActivity;

public class fmu extends AsyncTask<Void, Void, ftv> {
  private ftw b;
  
  private fmu(RendaFixaResgateActivity paramRendaFixaResgateActivity) {}
  
  protected ftv a(Void... paramVarArgs) {
    try {
      return hat.j().a(this.b);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftv paramftv) {
    if (paramftv != null && !paramftv.hasError() && (paramftv.m() == null || paramftv.m().equals(""))) {
      if (paramftv.a().equals("0")) {
        RendaFixaResgateActivity.a(this.a, ((ftk)RendaFixaResgateActivity.k(this.a).a().get(RendaFixaResgateActivity.t(this.a).a())).d());
        fte fte = RendaFixaResgateActivity.a(this.a).f().get(RendaFixaResgateActivity.u(this.a).a());
        Intent intent = new Intent((Context)RendaFixaResgateActivity.h(this.a), RendaFixaResgateConfirmacaoActivity.class);
        intent.putExtra("simularParameters", this.b);
        intent.putExtra("SimularResgateRendaFixaBean", paramftv);
        intent.putExtra("DadosResgateListAplicacaoRendaFixaBean", fte);
        RendaFixaResgateActivity.h(this.a).startActivity(intent);
      } else {
        hav.c((Activity)RendaFixaResgateActivity.h(this.a), paramftv.n());
      } 
      if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
        RendaFixaResgateActivity.n(this.a).cancel();
        RendaFixaResgateActivity.a(this.a, null);
      } 
      return;
    } 
    if (paramftv != null && paramftv.m() != null && !paramftv.m().equals("")) {
      if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
        RendaFixaResgateActivity.n(this.a).cancel();
        RendaFixaResgateActivity.a(this.a, null);
      } 
      hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramftv.m());
      return;
    } 
    if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
      RendaFixaResgateActivity.n(this.a).cancel();
      RendaFixaResgateActivity.a(this.a, null);
    } 
    hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramftv, true);
  }
  
  public void onPreExecute() {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   4: aload_0
    //   5: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   8: invokestatic h : (Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;
    //   11: invokestatic b : (Landroid/app/Activity;)Landroid/app/Dialog;
    //   14: invokestatic a : (Lcom/santander/app/RendaFixaResgateActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    //   17: pop
    //   18: new java/text/SimpleDateFormat
    //   21: dup
    //   22: ldc 'yyyy-MM-dd'
    //   24: invokespecial <init> : (Ljava/lang/String;)V
    //   27: astore_1
    //   28: new java/text/SimpleDateFormat
    //   31: dup
    //   32: ldc 'dd/MM/yyyy'
    //   34: invokespecial <init> : (Ljava/lang/String;)V
    //   37: astore_2
    //   38: aload_0
    //   39: new ftw
    //   42: dup
    //   43: invokespecial <init> : ()V
    //   46: putfield b : Lftw;
    //   49: aload_0
    //   50: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   53: invokestatic r : (Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    //   56: invokevirtual a : ()I
    //   59: iconst_1
    //   60: if_icmpne -> 98
    //   63: aload_0
    //   64: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   67: invokestatic s : (Lcom/santander/app/RendaFixaResgateActivity;)Lfos;
    //   70: invokevirtual b : ()Ljava/lang/String;
    //   73: astore_3
    //   74: aload_3
    //   75: ldc '-'
    //   77: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   80: ifeq -> 313
    //   83: aload_0
    //   84: getfield b : Lftw;
    //   87: aload_3
    //   88: invokevirtual a : (Ljava/lang/String;)V
    //   91: invokestatic a : ()Lhau;
    //   94: iconst_1
    //   95: invokevirtual a : (Z)V
    //   98: aload_0
    //   99: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   102: invokestatic k : (Lcom/santander/app/RendaFixaResgateActivity;)Lftn;
    //   105: invokevirtual a : ()Ljava/util/Vector;
    //   108: aload_0
    //   109: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   112: invokestatic t : (Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    //   115: invokevirtual a : ()I
    //   118: invokevirtual get : (I)Ljava/lang/Object;
    //   121: checkcast ftk
    //   124: astore_1
    //   125: aload_1
    //   126: invokevirtual d : ()Lftf;
    //   129: invokevirtual f : ()Ljava/util/Vector;
    //   132: aload_0
    //   133: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   136: invokestatic u : (Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    //   139: invokevirtual a : ()I
    //   142: invokevirtual get : (I)Ljava/lang/Object;
    //   145: checkcast fte
    //   148: astore_2
    //   149: aload_0
    //   150: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   153: getfield v : Lmip;
    //   156: invokeinterface f : ()Lmir;
    //   161: invokevirtual q : ()Lgvx;
    //   164: invokeinterface a : ()Ljava/util/List;
    //   169: aload_0
    //   170: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   173: invokestatic v : (Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Carrossel;
    //   176: invokevirtual a : ()I
    //   179: invokeinterface get : (I)Ljava/lang/Object;
    //   184: checkcast com/santander/app/contacorrente/domain/Conta
    //   187: astore_3
    //   188: aload_0
    //   189: getfield b : Lftw;
    //   192: aload_3
    //   193: invokevirtual getAgencia : ()Ljava/lang/String;
    //   196: invokevirtual i : (Ljava/lang/String;)V
    //   199: aload_0
    //   200: getfield b : Lftw;
    //   203: aload_3
    //   204: invokevirtual getCuenta : ()Ljava/lang/String;
    //   207: invokevirtual h : (Ljava/lang/String;)V
    //   210: aload_0
    //   211: getfield b : Lftw;
    //   214: aload_1
    //   215: invokevirtual d : ()Lftf;
    //   218: invokevirtual c : ()Ljava/lang/String;
    //   221: invokevirtual b : (Ljava/lang/String;)V
    //   224: aload_0
    //   225: getfield b : Lftw;
    //   228: aload_2
    //   229: invokevirtual c : ()Ljava/lang/String;
    //   232: invokevirtual c : (Ljava/lang/String;)V
    //   235: aload_0
    //   236: getfield b : Lftw;
    //   239: aload_1
    //   240: invokevirtual a : ()Ljava/lang/String;
    //   243: invokevirtual d : (Ljava/lang/String;)V
    //   246: aload_0
    //   247: getfield b : Lftw;
    //   250: aload_1
    //   251: invokevirtual a : ()Ljava/lang/String;
    //   254: invokevirtual e : (Ljava/lang/String;)V
    //   257: aload_0
    //   258: getfield b : Lftw;
    //   261: aload_1
    //   262: invokevirtual b : ()Ljava/lang/String;
    //   265: invokevirtual k : (Ljava/lang/String;)V
    //   268: aload_0
    //   269: getfield b : Lftw;
    //   272: aload_2
    //   273: invokevirtual d : ()Ljava/lang/String;
    //   276: invokevirtual f : (Ljava/lang/String;)V
    //   279: aload_0
    //   280: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   283: invokestatic c : (Lcom/santander/app/RendaFixaResgateActivity;)Landroid/support/v4/view/ViewPager;
    //   286: invokevirtual getCurrentItem : ()I
    //   289: iconst_1
    //   290: if_icmpne -> 348
    //   293: aload_0
    //   294: getfield b : Lftw;
    //   297: iconst_0
    //   298: invokevirtual a : (Z)V
    //   301: aload_0
    //   302: getfield b : Lftw;
    //   305: aload_2
    //   306: invokevirtual f : ()Ljava/lang/String;
    //   309: invokevirtual j : (Ljava/lang/String;)V
    //   312: return
    //   313: aload_2
    //   314: aload_3
    //   315: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   318: astore_2
    //   319: aload_0
    //   320: getfield b : Lftw;
    //   323: aload_1
    //   324: aload_2
    //   325: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   328: invokevirtual a : (Ljava/lang/String;)V
    //   331: goto -> 98
    //   334: astore_1
    //   335: ldc 'Error'
    //   337: aload_1
    //   338: invokevirtual getMessage : ()Ljava/lang/String;
    //   341: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   344: pop
    //   345: goto -> 98
    //   348: aload_0
    //   349: getfield b : Lftw;
    //   352: iconst_1
    //   353: invokevirtual a : (Z)V
    //   356: aload_0
    //   357: getfield b : Lftw;
    //   360: aload_0
    //   361: getfield a : Lcom/santander/app/RendaFixaResgateActivity;
    //   364: invokestatic d : (Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/EditText;
    //   367: invokevirtual getText : ()Landroid/text/Editable;
    //   370: invokevirtual toString : ()Ljava/lang/String;
    //   373: ldc_w ','
    //   376: ldc ''
    //   378: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   381: ldc_w '\.'
    //   384: ldc ''
    //   386: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   389: invokevirtual g : (Ljava/lang/String;)V
    //   392: return
    // Exception table:
    //   from	to	target	type
    //   63	98	334	java/text/ParseException
    //   313	331	334	java/text/ParseException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
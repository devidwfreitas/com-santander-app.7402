import android.app.Activity;
import android.os.AsyncTask;
import com.santander.app.perfil.activity.GerenciarDispositivoActivity;

public class kax extends AsyncTask<kby, Void, kbr> {
  private kbr b;
  
  private kax(GerenciarDispositivoActivity paramGerenciarDispositivoActivity) {}
  
  protected kbr a(kby... paramVarArgs) {
    kby kby1 = new kby();
    kby1.setConnUuid(this.a.v.i());
    kby1.setTokenSessao(this.a.v.j());
    kby1.setTokenTransacao(this.a.v.f().m());
    this.b = (new gog<kby, kbr>()).a(kby1, kbr.class, has.a(), "listarDispositivos", "return");
    return this.b;
  }
  
  protected void a(kbr paramkbr) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: aload_0
    //   4: aload_1
    //   5: invokespecial onPostExecute : (Ljava/lang/Object;)V
    //   8: aload_0
    //   9: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   12: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;
    //   15: ifnull -> 50
    //   18: aload_0
    //   19: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   22: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;
    //   25: invokevirtual isShowing : ()Z
    //   28: ifeq -> 50
    //   31: aload_0
    //   32: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   35: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;
    //   38: invokevirtual cancel : ()V
    //   41: aload_0
    //   42: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   45: aconst_null
    //   46: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    //   49: pop
    //   50: aload_1
    //   51: ifnull -> 416
    //   54: aload_1
    //   55: invokevirtual getConfirmacao : ()Ljava/lang/String;
    //   58: ldc 'OK'
    //   60: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   63: ifeq -> 416
    //   66: aload_0
    //   67: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   70: new java/util/ArrayList
    //   73: dup
    //   74: invokespecial <init> : ()V
    //   77: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Ljava/util/List;)Ljava/util/List;
    //   80: pop
    //   81: aload_0
    //   82: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   85: aload_1
    //   86: invokevirtual a : ()Ljava/util/List;
    //   89: invokestatic a : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Ljava/util/List;)Ljava/util/List;
    //   92: pop
    //   93: aload_0
    //   94: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   97: getfield v : Lmip;
    //   100: invokeinterface f : ()Lmir;
    //   105: aload_1
    //   106: invokevirtual getTokenTransacao : ()Ljava/lang/String;
    //   109: invokevirtual i : (Ljava/lang/String;)V
    //   112: aload_0
    //   113: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   116: getfield v : Lmip;
    //   119: invokeinterface k : ()Lfwv;
    //   124: invokevirtual e : ()Ljava/lang/String;
    //   127: astore #9
    //   129: aload #9
    //   131: ifnull -> 347
    //   134: ldc ''
    //   136: astore #6
    //   138: ldc ''
    //   140: astore #5
    //   142: iconst_0
    //   143: istore_3
    //   144: iconst_0
    //   145: istore_2
    //   146: iload_3
    //   147: aload_0
    //   148: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   151: invokestatic b : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;
    //   154: invokeinterface size : ()I
    //   159: if_icmpge -> 480
    //   162: new naf
    //   165: dup
    //   166: invokespecial <init> : ()V
    //   169: astore #8
    //   171: aload #6
    //   173: astore #7
    //   175: aload #9
    //   177: aload #8
    //   179: aload_0
    //   180: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   183: invokestatic b : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;
    //   186: iload_3
    //   187: invokeinterface get : (I)Ljava/lang/Object;
    //   192: checkcast kbq
    //   195: invokevirtual c : ()Ljava/lang/String;
    //   198: iconst_0
    //   199: invokestatic decode : (Ljava/lang/String;I)[B
    //   202: invokevirtual c : ([B)Ljava/lang/String;
    //   205: invokevirtual equals : (Ljava/lang/Object;)Z
    //   208: ifeq -> 355
    //   211: aload #6
    //   213: astore #7
    //   215: aload_0
    //   216: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   219: invokestatic b : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;
    //   222: iload_3
    //   223: invokeinterface get : (I)Ljava/lang/Object;
    //   228: checkcast kbq
    //   231: invokevirtual b : ()Ljava/lang/String;
    //   234: astore #6
    //   236: aload #6
    //   238: astore #7
    //   240: new java/lang/StringBuilder
    //   243: dup
    //   244: invokespecial <init> : ()V
    //   247: ldc 'inclusão: '
    //   249: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: aload_0
    //   253: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   256: invokestatic b : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;
    //   259: iload_3
    //   260: invokeinterface get : (I)Ljava/lang/Object;
    //   265: checkcast kbq
    //   268: invokevirtual e : ()Ljava/lang/String;
    //   271: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual toString : ()Ljava/lang/String;
    //   277: astore #8
    //   279: aload #8
    //   281: astore #5
    //   283: aload_1
    //   284: invokevirtual a : ()Ljava/util/List;
    //   287: iload_3
    //   288: invokeinterface remove : (I)Ljava/lang/Object;
    //   293: pop
    //   294: iload #4
    //   296: istore_2
    //   297: iload_2
    //   298: ifeq -> 347
    //   301: aload_0
    //   302: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   305: invokestatic c : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;
    //   308: aload #6
    //   310: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   313: aload_0
    //   314: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   317: invokestatic d : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;
    //   320: aload #5
    //   322: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   325: aload_0
    //   326: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   329: invokestatic d : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;
    //   332: aload_0
    //   333: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   336: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   339: ldc 2131624186
    //   341: invokevirtual getColor : (I)I
    //   344: invokevirtual setTextColor : (I)V
    //   347: aload_0
    //   348: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   351: invokestatic e : (Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)V
    //   354: return
    //   355: aload #5
    //   357: astore #7
    //   359: aload #6
    //   361: astore #5
    //   363: aload #7
    //   365: astore #6
    //   367: iload_3
    //   368: iconst_1
    //   369: iadd
    //   370: istore_3
    //   371: aload #5
    //   373: astore #7
    //   375: aload #6
    //   377: astore #5
    //   379: aload #7
    //   381: astore #6
    //   383: goto -> 146
    //   386: astore #8
    //   388: aload #5
    //   390: astore #7
    //   392: aload #6
    //   394: astore #5
    //   396: iconst_1
    //   397: istore_2
    //   398: aload #7
    //   400: astore #6
    //   402: ldc 'Error'
    //   404: aload #8
    //   406: invokevirtual toString : ()Ljava/lang/String;
    //   409: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   412: pop
    //   413: goto -> 367
    //   416: aload_1
    //   417: ifnull -> 450
    //   420: aload_1
    //   421: invokevirtual getConfirmacao : ()Ljava/lang/String;
    //   424: ldc 'ERRO'
    //   426: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   429: ifeq -> 450
    //   432: invokestatic d : ()Lhav;
    //   435: aload_0
    //   436: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   439: getfield a : Landroid/app/Activity;
    //   442: aload_1
    //   443: invokevirtual getMensagemErro : ()Ljava/lang/String;
    //   446: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   449: return
    //   450: invokestatic d : ()Lhav;
    //   453: aload_0
    //   454: getfield a : Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
    //   457: getfield a : Landroid/app/Activity;
    //   460: aconst_null
    //   461: iconst_1
    //   462: iconst_1
    //   463: invokevirtual a : (Landroid/app/Activity;Lfvu;ZZ)V
    //   466: return
    //   467: astore #8
    //   469: aload #5
    //   471: astore #6
    //   473: aload #7
    //   475: astore #5
    //   477: goto -> 402
    //   480: goto -> 297
    // Exception table:
    //   from	to	target	type
    //   175	211	467	java/lang/Exception
    //   215	236	467	java/lang/Exception
    //   240	279	467	java/lang/Exception
    //   283	294	386	java/lang/Exception
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    GerenciarDispositivoActivity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.app.Activity;
import android.os.AsyncTask;
import com.santander.app.perfil.activity.InvestimentoNoAtmConfirmacaoActivity;

public class kbb extends AsyncTask<kbz, Void, kbs> {
  private kbs b;
  
  private kbb(InvestimentoNoAtmConfirmacaoActivity paramInvestimentoNoAtmConfirmacaoActivity) {}
  
  protected kbs a(kbz... paramVarArgs) {
    kbz kbz1 = new kbz();
    kbz1.setConnUuid(this.a.v.i());
    kbz1.setTokenTransacao(this.a.v.f().m());
    kbz1.setTokenSessao(this.a.v.j());
    kbz1.a(InvestimentoNoAtmConfirmacaoActivity.a(this.a).d());
    kbz1.b(InvestimentoNoAtmConfirmacaoActivity.a(this.a).g());
    kbz1.c("0033" + InvestimentoNoAtmConfirmacaoActivity.b(this.a).getAgencia() + InvestimentoNoAtmConfirmacaoActivity.b(this.a).getCuenta());
    this.b = (new gog<kbz, kbs>()).a(kbz1, kbs.class, has.a(), "manterVisualizacaoInvestimentosATM", "return");
    return this.b;
  }
  
  protected void a(kbs paramkbs) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial onPostExecute : (Ljava/lang/Object;)V
    //   5: aload_0
    //   6: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   9: invokestatic c : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;
    //   12: ifnull -> 47
    //   15: aload_0
    //   16: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   19: invokestatic c : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;
    //   22: invokevirtual isShowing : ()Z
    //   25: ifeq -> 47
    //   28: aload_0
    //   29: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   32: invokestatic c : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Landroid/app/Dialog;
    //   35: invokevirtual cancel : ()V
    //   38: aload_0
    //   39: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   42: aconst_null
    //   43: invokestatic a : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    //   46: pop
    //   47: aload_1
    //   48: ifnonnull -> 68
    //   51: invokestatic d : ()Lhav;
    //   54: aload_0
    //   55: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   58: getfield i : Landroid/app/Activity;
    //   61: aconst_null
    //   62: iconst_0
    //   63: iconst_0
    //   64: invokevirtual a : (Landroid/app/Activity;Lfvu;ZZ)V
    //   67: return
    //   68: aload_1
    //   69: invokevirtual getConfirmacao : ()Ljava/lang/String;
    //   72: ifnull -> 105
    //   75: aload_1
    //   76: invokevirtual getConfirmacao : ()Ljava/lang/String;
    //   79: ldc 'ERRO'
    //   81: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   84: ifeq -> 105
    //   87: invokestatic d : ()Lhav;
    //   90: aload_0
    //   91: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   94: getfield i : Landroid/app/Activity;
    //   97: aload_1
    //   98: invokevirtual getMensagemErro : ()Ljava/lang/String;
    //   101: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   104: return
    //   105: new gvb
    //   108: dup
    //   109: invokespecial <init> : ()V
    //   112: astore #4
    //   114: ldc ''
    //   116: astore_3
    //   117: aload_0
    //   118: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   121: invokestatic a : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;
    //   124: ifnull -> 159
    //   127: aload_0
    //   128: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   131: invokestatic a : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;
    //   134: invokevirtual c : ()Ljava/lang/String;
    //   137: ldc 'Não bloquear'
    //   139: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   142: ifeq -> 354
    //   145: aload #4
    //   147: ldc 'abrirComprovanteDesbloqueioInvestLimitATM'
    //   149: invokevirtual i : (Ljava/lang/String;)V
    //   152: aload #4
    //   154: ldc 'shareComprovanteDesbloqueioInvestLimitATM'
    //   156: invokevirtual j : (Ljava/lang/String;)V
    //   159: aload_3
    //   160: astore_2
    //   161: aload_0
    //   162: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   165: invokestatic d : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)I
    //   168: iconst_m1
    //   169: if_icmpeq -> 214
    //   172: aload_0
    //   173: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   176: invokestatic d : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)I
    //   179: lookupswitch default -> 212, 0 -> 424, 50 -> 430, 100 -> 436
    //   212: aload_3
    //   213: astore_2
    //   214: aload #4
    //   216: aload_0
    //   217: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   220: invokestatic e : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Ljava/util/ArrayList;
    //   223: invokevirtual b : (Ljava/util/ArrayList;)V
    //   226: aload #4
    //   228: new java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial <init> : ()V
    //   235: aload_0
    //   236: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   239: ldc 2131297631
    //   241: invokevirtual getString : (I)Ljava/lang/String;
    //   244: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: ldc ' '
    //   249: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: aload_1
    //   253: invokevirtual getDataHoraTransacao : ()Ljava/lang/String;
    //   256: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual toString : ()Ljava/lang/String;
    //   262: invokevirtual g : (Ljava/lang/String;)V
    //   265: aload #4
    //   267: aload_1
    //   268: invokevirtual c : ()Ljava/lang/String;
    //   271: invokevirtual e : (Ljava/lang/String;)V
    //   274: aload #4
    //   276: aload_1
    //   277: invokevirtual getDataHoraTransacao : ()Ljava/lang/String;
    //   280: invokevirtual f : (Ljava/lang/String;)V
    //   283: aload #4
    //   285: iconst_0
    //   286: invokevirtual d : (Z)V
    //   289: aload #4
    //   291: ldc ''
    //   293: invokevirtual h : (Ljava/lang/String;)V
    //   296: aload #4
    //   298: aload_0
    //   299: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   302: ldc 2131296891
    //   304: invokevirtual getString : (I)Ljava/lang/String;
    //   307: invokevirtual c : (Ljava/lang/String;)V
    //   310: aload #4
    //   312: aload_2
    //   313: invokevirtual d : (Ljava/lang/String;)V
    //   316: aload #4
    //   318: iconst_1
    //   319: invokevirtual r : (Z)V
    //   322: new android/content/Intent
    //   325: dup
    //   326: aload_0
    //   327: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   330: ldc com/santander/app/comprovantes/activity/ComprovanteBaseActivity
    //   332: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   335: astore_1
    //   336: aload_1
    //   337: ldc 'comprovanteBase'
    //   339: aload #4
    //   341: invokevirtual putExtra : (Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   344: pop
    //   345: aload_0
    //   346: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   349: aload_1
    //   350: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   353: return
    //   354: aload_0
    //   355: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   358: invokestatic a : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;
    //   361: invokevirtual c : ()Ljava/lang/String;
    //   364: ldc 'Bloquear integralmente'
    //   366: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   369: ifeq -> 389
    //   372: aload #4
    //   374: ldc 'abrirComprovanteBloqueioInvestLimitATM'
    //   376: invokevirtual i : (Ljava/lang/String;)V
    //   379: aload #4
    //   381: ldc 'shareComprovanteBloqueioInvestLimitATM'
    //   383: invokevirtual j : (Ljava/lang/String;)V
    //   386: goto -> 159
    //   389: aload_0
    //   390: getfield a : Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;
    //   393: invokestatic a : (Lcom/santander/app/perfil/activity/InvestimentoNoAtmConfirmacaoActivity;)Lkbu;
    //   396: invokevirtual c : ()Ljava/lang/String;
    //   399: ldc 'Bloquear parcialmente'
    //   401: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   404: ifeq -> 159
    //   407: aload #4
    //   409: ldc 'abrirComprovanteBloqueioInvestLimitATM'
    //   411: invokevirtual i : (Ljava/lang/String;)V
    //   414: aload #4
    //   416: ldc 'shareComprovanteBloqueioInvestLimitATM'
    //   418: invokevirtual j : (Ljava/lang/String;)V
    //   421: goto -> 159
    //   424: ldc 'Investimento desbloqueado com sucesso!'
    //   426: astore_2
    //   427: goto -> 214
    //   430: ldc 'Investimento bloqueado com sucesso!'
    //   432: astore_2
    //   433: goto -> 214
    //   436: ldc 'Investimento bloqueado com sucesso!'
    //   438: astore_2
    //   439: goto -> 214
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    InvestimentoNoAtmConfirmacaoActivity.a(this.a, mxn.b((Activity)this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
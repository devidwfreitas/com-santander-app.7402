import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;

public class fnf extends AsyncTask<Void, Void, ftm> {
  private fnf(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity) {}
  
  protected ftm a(Void... paramVarArgs) {
    if (Rendafixa_posicaoconsolidadaActivity.d(this.a) == null)
      Rendafixa_posicaoconsolidadaActivity.a(this.a, new fwb()); 
    try {
      return (Rendafixa_posicaoconsolidadaActivity.d(this.a).g() != null && Rendafixa_posicaoconsolidadaActivity.d(this.a).g().a() != null) ? Rendafixa_posicaoconsolidadaActivity.d(this.a).g() : hat.j().a();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftm paramftm) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   4: invokestatic e : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;
    //   7: ifnull -> 42
    //   10: aload_0
    //   11: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   14: invokestatic e : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;
    //   17: invokevirtual isShowing : ()Z
    //   20: ifeq -> 42
    //   23: aload_0
    //   24: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   27: invokestatic e : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Dialog;
    //   30: invokevirtual cancel : ()V
    //   33: aload_0
    //   34: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   37: aconst_null
    //   38: invokestatic a : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    //   41: pop
    //   42: aload_1
    //   43: ifnonnull -> 62
    //   46: invokestatic d : ()Lhav;
    //   49: aload_0
    //   50: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   53: invokestatic c : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;
    //   56: aload_1
    //   57: iconst_0
    //   58: invokevirtual a : (Landroid/app/Activity;Lfvu;Z)V
    //   61: return
    //   62: aload_1
    //   63: invokevirtual hasError : ()Z
    //   66: ifeq -> 85
    //   69: invokestatic d : ()Lhav;
    //   72: aload_0
    //   73: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   76: invokestatic c : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;
    //   79: aload_1
    //   80: iconst_0
    //   81: invokevirtual a : (Landroid/app/Activity;Lfvu;Z)V
    //   84: return
    //   85: aload_0
    //   86: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   89: invokestatic d : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;
    //   92: aload_1
    //   93: invokevirtual a : (Lftm;)V
    //   96: aload_0
    //   97: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   100: invokestatic f : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Z
    //   103: ifeq -> 133
    //   106: aload_0
    //   107: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   110: invokestatic g : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    //   113: aload_0
    //   114: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   117: invokestatic h : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;
    //   120: invokevirtual a : ()V
    //   123: aload_0
    //   124: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   127: iconst_0
    //   128: invokestatic a : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;Z)Z
    //   131: pop
    //   132: return
    //   133: aload_1
    //   134: invokevirtual a : ()Ljava/util/Vector;
    //   137: ifnull -> 281
    //   140: aload_1
    //   141: invokevirtual a : ()Ljava/util/Vector;
    //   144: invokevirtual size : ()I
    //   147: ifle -> 281
    //   150: aload_0
    //   151: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   154: getfield v : Lmip;
    //   157: invokeinterface f : ()Lmir;
    //   162: invokevirtual q : ()Lgvx;
    //   165: invokeinterface a : ()Ljava/util/List;
    //   170: iconst_0
    //   171: invokeinterface get : (I)Ljava/lang/Object;
    //   176: checkcast com/santander/app/contacorrente/domain/Conta
    //   179: invokevirtual getExtractoHome : ()Lfuy;
    //   182: invokevirtual u : ()Ljava/lang/String;
    //   185: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   188: invokestatic m : (Ljava/lang/String;)Ljava/lang/String;
    //   191: ldc 'R$'
    //   193: ldc ''
    //   195: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   198: invokestatic parseDouble : (Ljava/lang/String;)D
    //   201: pop2
    //   202: aload_0
    //   203: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   206: invokestatic d : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lfwb;
    //   209: invokevirtual g : ()Lftm;
    //   212: invokevirtual a : ()Ljava/util/Vector;
    //   215: invokevirtual iterator : ()Ljava/util/Iterator;
    //   218: astore_2
    //   219: aload_2
    //   220: invokeinterface hasNext : ()Z
    //   225: ifeq -> 304
    //   228: aload_2
    //   229: invokeinterface next : ()Ljava/lang/Object;
    //   234: checkcast ftq
    //   237: astore_1
    //   238: aload_1
    //   239: invokevirtual a : ()Ljava/lang/String;
    //   242: ldc '0106'
    //   244: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   247: ifeq -> 219
    //   250: aload_1
    //   251: ifnull -> 263
    //   254: aload_0
    //   255: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   258: aload_1
    //   259: invokevirtual a : (Lftq;)V
    //   262: return
    //   263: aload_0
    //   264: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   267: invokestatic g : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    //   270: aload_0
    //   271: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   274: invokestatic h : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Lnfe;
    //   277: invokevirtual a : ()V
    //   280: return
    //   281: aload_0
    //   282: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   285: invokestatic c : (Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)Landroid/app/Activity;
    //   288: aload_0
    //   289: getfield a : Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;
    //   292: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   295: ldc 2131297717
    //   297: invokevirtual getString : (I)Ljava/lang/String;
    //   300: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)V
    //   303: return
    //   304: aconst_null
    //   305: astore_1
    //   306: goto -> 250
  }
  
  public void onPreExecute() {
    Rendafixa_posicaoconsolidadaActivity.a(this.a, mxn.b(Rendafixa_posicaoconsolidadaActivity.c(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
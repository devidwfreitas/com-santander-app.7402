import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.investimentos.presentation.SemProdutoActivity;

public class jkn extends AsyncTask<Void, Void, ftm> {
  private jkn(SemProdutoActivity paramSemProdutoActivity) {}
  
  protected ftm a(Void... paramVarArgs) {
    try {
      return (SemProdutoActivity.c(this.a).g() != null && SemProdutoActivity.c(this.a).g().a() != null) ? SemProdutoActivity.c(this.a).g() : hat.j().a();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ftm paramftm) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   4: invokestatic b : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;
    //   7: ifnull -> 42
    //   10: aload_0
    //   11: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   14: invokestatic b : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;
    //   17: invokevirtual isShowing : ()Z
    //   20: ifeq -> 42
    //   23: aload_0
    //   24: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   27: invokestatic b : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Landroid/app/Dialog;
    //   30: invokevirtual cancel : ()V
    //   33: aload_0
    //   34: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   37: aconst_null
    //   38: invokestatic a : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    //   41: pop
    //   42: aload_1
    //   43: ifnonnull -> 62
    //   46: invokestatic d : ()Lhav;
    //   49: aload_0
    //   50: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   53: getfield i : Landroid/app/Activity;
    //   56: aload_1
    //   57: iconst_0
    //   58: invokevirtual a : (Landroid/app/Activity;Lfvu;Z)V
    //   61: return
    //   62: aload_1
    //   63: invokevirtual hasError : ()Z
    //   66: ifeq -> 85
    //   69: invokestatic d : ()Lhav;
    //   72: aload_0
    //   73: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   76: getfield i : Landroid/app/Activity;
    //   79: aload_1
    //   80: iconst_0
    //   81: invokevirtual a : (Landroid/app/Activity;Lfvu;Z)V
    //   84: return
    //   85: aload_0
    //   86: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   89: invokestatic c : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;
    //   92: aload_1
    //   93: invokevirtual a : (Lftm;)V
    //   96: aload_1
    //   97: invokevirtual a : ()Ljava/util/Vector;
    //   100: ifnull -> 244
    //   103: aload_1
    //   104: invokevirtual a : ()Ljava/util/Vector;
    //   107: invokevirtual size : ()I
    //   110: ifle -> 244
    //   113: aload_0
    //   114: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   117: getfield v : Lmip;
    //   120: invokeinterface f : ()Lmir;
    //   125: invokevirtual q : ()Lgvx;
    //   128: invokeinterface a : ()Ljava/util/List;
    //   133: iconst_0
    //   134: invokeinterface get : (I)Ljava/lang/Object;
    //   139: checkcast com/santander/app/contacorrente/domain/Conta
    //   142: invokevirtual getExtractoHome : ()Lfuy;
    //   145: invokevirtual u : ()Ljava/lang/String;
    //   148: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   151: invokestatic m : (Ljava/lang/String;)Ljava/lang/String;
    //   154: ldc 'R$'
    //   156: ldc ''
    //   158: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   161: invokestatic parseDouble : (Ljava/lang/String;)D
    //   164: pop2
    //   165: aload_0
    //   166: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   169: invokestatic c : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lfwb;
    //   172: invokevirtual g : ()Lftm;
    //   175: invokevirtual a : ()Ljava/util/Vector;
    //   178: invokevirtual iterator : ()Ljava/util/Iterator;
    //   181: astore_2
    //   182: aload_2
    //   183: invokeinterface hasNext : ()Z
    //   188: ifeq -> 267
    //   191: aload_2
    //   192: invokeinterface next : ()Ljava/lang/Object;
    //   197: checkcast ftq
    //   200: astore_1
    //   201: aload_1
    //   202: invokevirtual a : ()Ljava/lang/String;
    //   205: ldc '0106'
    //   207: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   210: ifeq -> 182
    //   213: aload_1
    //   214: ifnull -> 226
    //   217: aload_0
    //   218: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   221: aload_1
    //   222: invokevirtual a : (Lftq;)V
    //   225: return
    //   226: aload_0
    //   227: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   230: invokestatic d : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V
    //   233: aload_0
    //   234: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   237: invokestatic e : (Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)Lnfe;
    //   240: invokevirtual a : ()V
    //   243: return
    //   244: aload_0
    //   245: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   248: getfield i : Landroid/app/Activity;
    //   251: aload_0
    //   252: getfield a : Lcom/santander/app/investimentos/presentation/SemProdutoActivity;
    //   255: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   258: ldc 2131297717
    //   260: invokevirtual getString : (I)Ljava/lang/String;
    //   263: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)V
    //   266: return
    //   267: aconst_null
    //   268: astore_1
    //   269: goto -> 213
  }
  
  public void onPreExecute() {
    SemProdutoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.view.View;
import com.santander.app.segundaviacomprovantes.presentation.SegundaViaActivity;

public class kna implements View.OnClickListener {
  public kna(SegundaViaActivity paramSegundaViaActivity) {}
  
  public void onClick(View paramView) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   6: invokestatic g : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;
    //   9: invokevirtual getSelectedItemPosition : ()I
    //   12: ifeq -> 184
    //   15: aload_0
    //   16: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   19: invokestatic h : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;
    //   22: invokevirtual getSelectedItemPosition : ()I
    //   25: iconst_3
    //   26: if_icmpne -> 165
    //   29: aload_0
    //   30: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   33: invokestatic a : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    //   36: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   39: invokeinterface toString : ()Ljava/lang/String;
    //   44: ldc ''
    //   46: invokevirtual equals : (Ljava/lang/Object;)Z
    //   49: ifne -> 165
    //   52: aload_0
    //   53: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   56: invokestatic c : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    //   59: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   62: invokeinterface toString : ()Ljava/lang/String;
    //   67: ldc ''
    //   69: invokevirtual equals : (Ljava/lang/Object;)Z
    //   72: ifne -> 165
    //   75: new java/text/SimpleDateFormat
    //   78: dup
    //   79: ldc 'dd/MM/yyyy'
    //   81: invokespecial <init> : (Ljava/lang/String;)V
    //   84: astore_2
    //   85: aload_2
    //   86: aload_0
    //   87: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   90: invokestatic a : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    //   93: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   96: invokeinterface toString : ()Ljava/lang/String;
    //   101: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   104: astore_1
    //   105: aload_2
    //   106: aload_0
    //   107: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   110: invokestatic c : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    //   113: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   116: invokeinterface toString : ()Ljava/lang/String;
    //   121: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   124: astore_2
    //   125: new java/text/SimpleDateFormat
    //   128: dup
    //   129: ldc 'yyyyMMdd'
    //   131: invokespecial <init> : (Ljava/lang/String;)V
    //   134: astore_3
    //   135: aload_0
    //   136: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   139: invokestatic d : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;
    //   142: aload_3
    //   143: aload_1
    //   144: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   147: invokevirtual f : (Ljava/lang/String;)V
    //   150: aload_0
    //   151: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   154: invokestatic d : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;
    //   157: aload_3
    //   158: aload_2
    //   159: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   162: invokevirtual g : (Ljava/lang/String;)V
    //   165: ldc 'Outros_Comprovantes_Acao'
    //   167: ldc 'Aplicar'
    //   169: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   172: aload_0
    //   173: getfield a : Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
    //   176: invokestatic b : (Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;
    //   179: invokeinterface a : ()V
    //   184: return
    //   185: astore_2
    //   186: aconst_null
    //   187: astore_1
    //   188: ldc 'Error'
    //   190: aload_2
    //   191: invokevirtual toString : ()Ljava/lang/String;
    //   194: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   197: pop
    //   198: aload_3
    //   199: astore_2
    //   200: goto -> 125
    //   203: astore_2
    //   204: goto -> 188
    // Exception table:
    //   from	to	target	type
    //   85	105	185	java/text/ParseException
    //   105	125	203	java/text/ParseException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
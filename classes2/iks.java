import android.view.View;

class iks implements View.OnClickListener {
  iks(ikl paramikl) {}
  
  public void onClick(View paramView) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Likl;
    //   4: invokestatic i : (Likl;)Landroid/widget/EditText;
    //   7: invokevirtual getText : ()Landroid/text/Editable;
    //   10: invokevirtual toString : ()Ljava/lang/String;
    //   13: ldc '.'
    //   15: ldc ''
    //   17: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   20: ldc ','
    //   22: ldc '.'
    //   24: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   27: astore_1
    //   28: aload_1
    //   29: invokestatic parseDouble : (Ljava/lang/String;)D
    //   32: dstore_2
    //   33: aload_1
    //   34: invokevirtual isEmpty : ()Z
    //   37: ifne -> 72
    //   40: dload_2
    //   41: dconst_0
    //   42: dcmpl
    //   43: ifle -> 72
    //   46: aload_0
    //   47: getfield a : Likl;
    //   50: invokevirtual a : ()V
    //   53: return
    //   54: astore #4
    //   56: ldc 'FazerPagamen...Fragment'
    //   58: aload #4
    //   60: invokevirtual getMessage : ()Ljava/lang/String;
    //   63: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   66: pop
    //   67: dconst_0
    //   68: dstore_2
    //   69: goto -> 33
    //   72: aload_0
    //   73: getfield a : Likl;
    //   76: invokevirtual getActivity : ()Landroid/support/v4/app/FragmentActivity;
    //   79: ldc 'O valor não pode ser R$ 0,00'
    //   81: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    //   84: pop
    //   85: return
    // Exception table:
    //   from	to	target	type
    //   28	33	54	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
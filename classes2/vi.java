import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public class vi extends RecyclerView.Adapter<vo> {
  private static final String a = "7";
  
  private static final String b = "3";
  
  private static final String c = "8";
  
  private List<ve> d;
  
  private Context e;
  
  private uz f;
  
  private boolean g;
  
  private boolean h = false;
  
  private int i = 0;
  
  public vi(Context paramContext, uz paramuz, List<ve> paramList, boolean paramBoolean) {
    this.d = paramList;
    this.e = paramContext;
    this.f = paramuz;
    this.g = paramBoolean;
  }
  
  private Drawable a(String paramString) {
    switch (Integer.valueOf(Integer.parseInt(paramString)).intValue()) {
      default:
        return this.e.getResources().getDrawable(kz.ic_risco_variavel);
      case 2:
        return this.e.getResources().getDrawable(kz.ic_risco_baixo);
      case 3:
        return this.e.getResources().getDrawable(kz.ic_risco_medio);
      case 4:
        break;
    } 
    return this.e.getResources().getDrawable(kz.ic_risco_alto);
  }
  
  private void a(ve paramve) {
    acg acg = (acg)((ack)this.e).a();
    to to = new to(paramve.a(), paramve.c(), paramve.b(), paramve.d());
    acg.c(this.f.c());
    acg.b(this.f.a());
    acg.a(Integer.valueOf(Color.parseColor(this.f.b())));
    acg.a(to);
    zy.b(this.e.getString(lg.tag_name_listagem_destaque_acao, new Object[] { this.f.a() }), paramve.b() + "_" + paramve.d());
    zs.a().b(this.e, acg);
  }
  
  private void a(vo paramvo) {
    paramvo.c.setVisibility(0);
    paramvo.q.setText((CharSequence)aat.b(this.e.getResources().getString(lg.list_coe_texto_link), "toque aqui"));
    paramvo.q.setOnClickListener(new vj(this));
  }
  
  private void a(vo paramvo, ve paramve) {
    paramvo.b.setVisibility(0);
    paramvo.n.setText(paramve.d());
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    String str = this.e.getString(lg.list_corretora_texto_link) + " ";
    SpannableString spannableString1 = new SpannableString(str);
    SpannableString spannableString2 = new SpannableString(this.e.getString(lg.list_corretora_santander_corretora));
    spannableString1.setSpan(new ForegroundColorSpan(this.e.getResources().getColor(kx.inv_warm_grey)), 0, str.length(), 0);
    spannableStringBuilder.append((CharSequence)spannableString1);
    spannableString2.setSpan(new UnderlineSpan(), 0, spannableString2.length(), 0);
    spannableStringBuilder.append((CharSequence)spannableString2);
    paramvo.o.setText((CharSequence)spannableStringBuilder, TextView.BufferType.SPANNABLE);
    paramvo.b.setOnClickListener(new vk(this, paramve));
    paramvo.f.setBackgroundColor(Color.parseColor(this.f.b()));
  }
  
  private void b(vo paramvo) {
    if (!this.h) {
      paramvo.d.setVisibility(0);
      paramvo.p.setText((CharSequence)aat.b(this.e.getResources().getString(lg.list_previdencia_texto_link), "toque aqui"));
      paramvo.p.setOnClickListener(new vm(this));
      this.h = true;
    } 
  }
  
  private void b(vo paramvo, ve paramve) {
    // Byte code:
    //   0: aload_0
    //   1: getfield g : Z
    //   4: ifne -> 25
    //   7: aload_2
    //   8: invokevirtual k : ()Ljava/lang/Boolean;
    //   11: invokevirtual booleanValue : ()Z
    //   14: ifeq -> 189
    //   17: aload_0
    //   18: getfield i : I
    //   21: iconst_3
    //   22: if_icmpge -> 189
    //   25: aload_0
    //   26: aload_0
    //   27: getfield i : I
    //   30: iconst_1
    //   31: iadd
    //   32: putfield i : I
    //   35: aload_1
    //   36: getfield a : Landroid/support/v7/widget/CardView;
    //   39: iconst_0
    //   40: invokevirtual setVisibility : (I)V
    //   43: aload_1
    //   44: getfield a : Landroid/support/v7/widget/CardView;
    //   47: new vn
    //   50: dup
    //   51: aload_0
    //   52: aload_2
    //   53: invokespecial <init> : (Lvi;Lve;)V
    //   56: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   59: aload_1
    //   60: getfield e : Landroid/view/View;
    //   63: aload_0
    //   64: getfield f : Luz;
    //   67: invokevirtual b : ()Ljava/lang/String;
    //   70: invokestatic parseColor : (Ljava/lang/String;)I
    //   73: invokevirtual setBackgroundColor : (I)V
    //   76: aload_1
    //   77: getfield g : Landroid/widget/TextView;
    //   80: aload_2
    //   81: invokevirtual d : ()Ljava/lang/String;
    //   84: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   87: aload_1
    //   88: getfield m : Landroid/widget/TextView;
    //   91: aload_2
    //   92: invokevirtual g : ()Ljava/lang/String;
    //   95: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   98: aload_1
    //   99: getfield h : Landroid/widget/TextView;
    //   102: aload_2
    //   103: invokevirtual h : ()Ljava/lang/String;
    //   106: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   109: aload_1
    //   110: getfield l : Landroid/widget/TextView;
    //   113: aload_2
    //   114: invokevirtual i : ()Ljava/lang/String;
    //   117: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   120: aload_2
    //   121: invokevirtual f : ()Ljava/lang/String;
    //   124: invokestatic parseDouble : (Ljava/lang/String;)D
    //   127: dstore_3
    //   128: dload_3
    //   129: invokestatic valueOf : (D)Ljava/lang/Double;
    //   132: astore #5
    //   134: aload_1
    //   135: getfield i : Landroid/widget/TextView;
    //   138: aload #5
    //   140: invokestatic a : (Ljava/lang/Double;)Ljava/lang/String;
    //   143: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   146: aload_1
    //   147: getfield j : Landroid/widget/TextView;
    //   150: aload_2
    //   151: invokevirtual j : ()Ljava/lang/String;
    //   154: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   157: aload_2
    //   158: invokevirtual e : ()Ljava/lang/String;
    //   161: ifnull -> 201
    //   164: aload_2
    //   165: invokevirtual e : ()Ljava/lang/String;
    //   168: invokevirtual isEmpty : ()Z
    //   171: ifne -> 201
    //   174: aload_1
    //   175: getfield k : Landroid/widget/ImageView;
    //   178: aload_0
    //   179: aload_2
    //   180: invokevirtual e : ()Ljava/lang/String;
    //   183: invokespecial a : (Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   186: invokevirtual setImageDrawable : (Landroid/graphics/drawable/Drawable;)V
    //   189: return
    //   190: astore #5
    //   192: dconst_0
    //   193: invokestatic valueOf : (D)Ljava/lang/Double;
    //   196: astore #5
    //   198: goto -> 134
    //   201: aload_1
    //   202: getfield k : Landroid/widget/ImageView;
    //   205: bipush #8
    //   207: invokevirtual setVisibility : (I)V
    //   210: return
    // Exception table:
    //   from	to	target	type
    //   120	128	190	java/lang/Exception
  }
  
  public vo a(ViewGroup paramViewGroup, int paramInt) {
    return new vo(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_listagem_subproduto_card, paramViewGroup, false));
  }
  
  public void a(vo paramvo, int paramInt) {
    String str = this.f.c();
    byte b2 = -1;
    byte b1 = b2;
    switch (str.hashCode()) {
      default:
        b1 = b2;
      case 52:
      case 53:
      case 54:
        switch (b1) {
          default:
            b(paramvo, this.d.get(paramInt));
            return;
          case 0:
            b(paramvo);
            return;
          case 1:
            a(paramvo, this.d.get(paramInt));
            return;
          case 2:
            break;
        } 
        break;
      case 51:
        b1 = b2;
        if (str.equals("3"))
          b1 = 0; 
      case 56:
        b1 = b2;
        if (str.equals("8"))
          b1 = 1; 
      case 55:
        b1 = b2;
        if (str.equals("7"))
          b1 = 2; 
    } 
    a(paramvo);
  }
  
  public int getItemCount() {
    return this.d.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;

public class acy extends acr {
  protected acg a;
  
  protected ace c;
  
  protected Boolean d = Boolean.valueOf(false);
  
  protected Boolean e = Boolean.valueOf(false);
  
  protected Boolean f = Boolean.valueOf(false);
  
  private RecyclerView g = (RecyclerView)e().findViewById(la.rv_lista_contas);
  
  private TextView h = (TextView)e().findViewById(la.config_conta);
  
  private TextView i = (TextView)e().findViewById(la.config_conta_saldo);
  
  private TextView j = (TextView)e().findViewById(la.config_conta_saldo_total);
  
  private ImageButton k = (ImageButton)e().findViewById(la.config_apl_conta_selector);
  
  private View l = e().findViewById(la.config_apl_conta_selecionada);
  
  private te m;
  
  private ou n = new ou();
  
  private String o;
  
  public acy(ack paramack) {
    super(paramack);
    this.m = new te(paramack.getApplicationContext());
    this.o = c(aca.a().b().toString());
    this.k.setVisibility(4);
    this.a = (acg)paramack.a();
  }
  
  private void b(tj paramtj) {
    if (aca.a().c() == null || aca.a().c().d().isEmpty()) {
      this.f = Boolean.valueOf(true);
      this.m.a(this.o, new acz(this, paramtj));
      return;
    } 
    ou ou1 = aca.a().c();
    this.n.g(ou1.m());
    this.n.a(ou1.d());
    for (ou ou2 : this.a.m()) {
      if (this.n.d().equals(ou2.d())) {
        this.c.a(ou2);
        break;
      } 
    } 
    g();
    this.k.setVisibility(0);
    this.k.setOnClickListener(new adb(this));
    paramtj.a(this.n);
  }
  
  private String d(String paramString) {
    return aat.b(paramString);
  }
  
  private void d() {
    if (this.g.isShown()) {
      this.k.setRotation(0.0F);
      this.g.setVisibility(8);
      return;
    } 
    a();
    this.k.setRotation(180.0F);
    this.g.setVisibility(0);
    ArrayList<ou> arrayList = new ArrayList();
    for (ou ou1 : this.a.m()) {
      if (!ou1.c().booleanValue())
        arrayList.add(ou1); 
    } 
    aco aco = new aco(arrayList, this, this.a);
    this.g.setAdapter(aco);
    this.g.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
  }
  
  private void l() {
    this.d = Boolean.valueOf(true);
    b(new ade(this));
  }
  
  protected void a() {}
  
  protected void a(Boolean paramBoolean) {
    this.k.setEnabled(paramBoolean.booleanValue());
    if (!paramBoolean.booleanValue())
      this.k.setVisibility(4); 
  }
  
  protected void a(ou paramou) {
    paramou.g();
    this.n = paramou;
    this.h.setText(aat.a(paramou.m(), paramou.d()));
    this.i.setText(d(paramou.e()));
    this.j.setText(d(paramou.h()));
    this.c.a(this.n);
  }
  
  protected void b() {}
  
  protected void c() {}
  
  public void g() {
    // Byte code:
    //   0: aload_0
    //   1: getfield k : Landroid/widget/ImageButton;
    //   4: fconst_0
    //   5: invokevirtual setRotation : (F)V
    //   8: aload_0
    //   9: getfield g : Landroid/support/v7/widget/RecyclerView;
    //   12: bipush #8
    //   14: invokevirtual setVisibility : (I)V
    //   17: aload_0
    //   18: getfield a : Lacg;
    //   21: invokevirtual m : ()Ljava/util/ArrayList;
    //   24: invokevirtual iterator : ()Ljava/util/Iterator;
    //   27: astore_2
    //   28: aload_2
    //   29: invokeinterface hasNext : ()Z
    //   34: ifeq -> 133
    //   37: aload_2
    //   38: invokeinterface next : ()Ljava/lang/Object;
    //   43: checkcast ou
    //   46: astore_3
    //   47: aload_3
    //   48: invokevirtual c : ()Ljava/lang/Boolean;
    //   51: invokevirtual booleanValue : ()Z
    //   54: ifeq -> 28
    //   57: aload_0
    //   58: aload_3
    //   59: invokevirtual a : (Lou;)V
    //   62: iconst_1
    //   63: istore_1
    //   64: iload_1
    //   65: ifne -> 129
    //   68: invokestatic a : ()Laca;
    //   71: invokevirtual c : ()Lou;
    //   74: astore_2
    //   75: aload_0
    //   76: getfield a : Lacg;
    //   79: invokevirtual m : ()Ljava/util/ArrayList;
    //   82: invokevirtual iterator : ()Ljava/util/Iterator;
    //   85: astore #4
    //   87: aload #4
    //   89: invokeinterface hasNext : ()Z
    //   94: ifeq -> 130
    //   97: aload #4
    //   99: invokeinterface next : ()Ljava/lang/Object;
    //   104: checkcast ou
    //   107: astore_3
    //   108: aload_3
    //   109: invokevirtual d : ()Ljava/lang/String;
    //   112: aload_2
    //   113: invokevirtual d : ()Ljava/lang/String;
    //   116: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   119: ifeq -> 87
    //   122: aload_3
    //   123: astore_2
    //   124: aload_0
    //   125: aload_2
    //   126: invokevirtual a : (Lou;)V
    //   129: return
    //   130: goto -> 124
    //   133: iconst_0
    //   134: istore_1
    //   135: goto -> 64
  }
  
  protected void goBack() {
    this.a.s();
    e().finish();
  }
  
  protected ou h() {
    return this.n;
  }
  
  protected void i() {
    if (this.e.booleanValue() && this.d.booleanValue())
      b(); 
  }
  
  protected void j() {
    if (this.a.m() == null || this.a.m().isEmpty()) {
      (new oo((Context)e())).a(new adc(this));
      return;
    } 
    l();
  }
  
  protected void k() {
    aad.a((Context)e(), new adf(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.emprestimo.creditopessoal.domain.CPSimularEmprestimoResponse;
import com.santander.app.emprestimo.creditopessoal.domain.CPTypeService;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateResponse;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoSimulationResponse;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class hpp extends hqk implements hpl {
  private static hpp d;
  
  final hsn a = new hsp(this);
  
  private final hqa e = new hqd();
  
  private Conta f;
  
  private float g;
  
  private int h;
  
  private boolean i = true;
  
  private CPConsultarLimiteResponse j;
  
  private CPSimularEmprestimoResponse k;
  
  private ConsignadoSimulationResponse l;
  
  private ConsignadoCalculateResponse m;
  
  private final hpc n = new hpc();
  
  private int o;
  
  private int p;
  
  private float q;
  
  private float r;
  
  private void a(@CPTypeService int paramInt1, @hxu int paramInt2, boolean paramBoolean, float paramFloat, int paramInt3, int paramInt4, @NonNull hpn paramhpn) {
    this.i = true;
    this.a.a(paramInt2, this.j, this.f, paramFloat, paramInt3, paramInt4, new hpu(this, false, paramBoolean, paramInt4, paramInt1, paramhpn));
  }
  
  private void a(@hxu int paramInt, boolean paramBoolean, Conta paramConta, @NonNull hpm paramhpm) {
    this.a.a(paramInt, paramConta, new hpr(this, false, paramBoolean, paramhpm));
  }
  
  private void a(@NonNull hpm paramhpm) {
    try {
      b(new hps(this, paramhpm, h()));
      return;
    } catch (Exception exception) {
      paramhpm.a();
      return;
    } 
  }
  
  public static hpl m() {
    hpp hpp1 = new hpp();
    d = hpp1;
    return hpp1;
  }
  
  public static hpl n() {
    if (d == null)
      m(); 
    return d;
  }
  
  private boolean w() {
    hxq hxq = h();
    if (hxq != null)
      if (hxq instanceof ConsignadoSimulationResponse) {
        this.l = (ConsignadoSimulationResponse)hxq;
      } else if (hxq instanceof ConsignadoCalculateResponse) {
        this.l = ((ConsignadoCalculateResponse)hxq).getConsignadoSimulationResponse();
      }  
    return (this.l != null);
  }
  
  private boolean x() {
    return (this.m != null && this.m.isRefinanciamento());
  }
  
  public float a(String paramString) {
    if (TextUtils.isEmpty(paramString))
      throw new InvalidParameterException(); 
    float f = hyx.a(paramString);
    if (f == 0.0F)
      throw new InvalidParameterException(); 
    this.r = 0.0F;
    this.q = 0.0F;
    b(new hpx(this, h()));
    if (f > this.r)
      throw new hov(f, this.r); 
    if (f < this.q)
      throw new how(f, this.q); 
    return f;
  }
  
  public Conta a(int paramInt) {
    return this.b.f().q().a().get(paramInt);
  }
  
  public List<String> a() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<Conta> iterator = this.b.f().q().a().iterator();
    while (iterator.hasNext())
      arrayList.add(hyx.a(iterator.next())); 
    return arrayList;
  }
  
  public void a(@CPTypeService int paramInt1, float paramFloat, int paramInt2, int paramInt3, @NonNull hpn paramhpn) {
    this.g = paramFloat;
    this.h = paramInt3;
    b(new hpt(this, paramInt1, paramFloat, paramInt2, paramInt3, paramhpn));
  }
  
  public void a(Conta paramConta, @NonNull hpm paramhpm) {
    this.f = paramConta;
    b(new hpq(this, paramConta, paramhpm, w()));
  }
  
  public void a(boolean paramBoolean, @NonNull hpo paramhpo) {
    this.i = paramBoolean;
    this.a.a(q(), paramBoolean, new hpv(this, paramhpo));
  }
  
  public List<String> b() {
    this.p = 0;
    this.o = 0;
    b(new hpw(this, h()));
    ArrayList<String> arrayList = new ArrayList();
    for (int i = this.o; i <= this.p; i++)
      arrayList.add(String.valueOf(i)); 
    Collections.reverse(arrayList);
    arrayList.add(0, "");
    return arrayList;
  }
  
  public List<String> c() {
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 1; i <= 30; i++)
      arrayList.add(String.valueOf(i)); 
    return arrayList;
  }
  
  public List<String> d() {
    if (this.m == null)
      return new ArrayList<String>(); 
    String str = this.m.getMesPagamento();
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add(str);
    return arrayList;
  }
  
  public boolean e() {
    return this.i;
  }
  
  public hxr f() {
    hxq hxq = h();
    if (hxq.isEligivel()) {
      if (this.j == null || this.j.getValorLimiteMax() <= hxq.getValorLimiteMax()) {
        hxq hxq1 = hxq;
        return (hxr)(hxq.isMorno() ? this.j : hxq1);
      } 
    } else {
      return (hxr)this.j;
    } 
    return (hxr)this.j;
  }
  
  public hxm g() {
    if (this.k != null) {
      CPSimularEmprestimoResponse cPSimularEmprestimoResponse = this.k;
      return (hxm)cPSimularEmprestimoResponse;
    } 
    CPConsultarLimiteResponse cPConsultarLimiteResponse = this.j;
    return (hxm)cPConsultarLimiteResponse;
  }
  
  public hxq h() {
    return this.c.h();
  }
  
  public CPContratacao i() {
    return (CPContratacao)((q() == 11) ? this.m : this.k);
  }
  
  public boolean j() {
    return (o() && h().isMorno());
  }
  
  public boolean k() {
    return (this.m != null && !this.m.isMorno());
  }
  
  public boolean l() {
    float f1;
    float f2 = this.k.getValorParcela();
    if (x()) {
      f1 = this.m.getValorParcelamentoAdicional();
    } else {
      f1 = this.m.getValorParcela();
    } 
    return (this.m == null || Float.valueOf(f2).floatValue() <= Float.valueOf(f1).floatValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
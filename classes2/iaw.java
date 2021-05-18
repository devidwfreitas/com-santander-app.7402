import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.faleconosco.presentation.ComprovanteFaleConoscoActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class iaw implements hzv, hzz, iad, iah, iav {
  public static final int a = 1234;
  
  private iam b;
  
  private hzu c;
  
  private iac d;
  
  private hzy e;
  
  private iag f;
  
  private mip g;
  
  private List<hze> h;
  
  private List<hzb> i;
  
  private List<hzp> j;
  
  private hyz k;
  
  private ArrayList<gky> l = new ArrayList<gky>();
  
  private double m = 0.0D;
  
  private Dialog n;
  
  private ghu o;
  
  public iaw(iam paramiam) {
    this.b = paramiam;
    this.d = new iae(this);
    this.c = new hzw(this);
    this.e = new iaa(this);
    this.g = (mip)miq.C();
    this.i = new ArrayList<hzb>();
  }
  
  private View.OnClickListener a(int paramInt) {
    return new iay(this, paramInt);
  }
  
  private byte[] a(Bitmap paramBitmap) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
    return byteArrayOutputStream.toByteArray();
  }
  
  public static void b(Activity paramActivity) {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)paramActivity, "android.permission.CAMERA") != 0 || ContextCompat.checkSelfPermission((Context)paramActivity, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
        ActivityCompat.requestPermissions(paramActivity, new String[] { "android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE" }, 1);
        return;
      } 
      c(paramActivity);
      return;
    } 
    c(paramActivity);
  }
  
  public static void c(Activity paramActivity) {
    Dialog dialog = new Dialog((Context)paramActivity);
    dialog.requestWindowFeature(1);
    dialog.setContentView(2130968989);
    ((LinearLayout)dialog.findViewById(2131756971)).setOnClickListener(new iax(paramActivity, dialog));
    dialog.show();
  }
  
  private boolean j() {
    return (this.g.f().s().a() != null && this.g.f().s().a().size() > 0) ? ((((ghu)this.g.f().s().a().get(0)).A() == null)) : false;
  }
  
  private void k() {
    this.n = mxn.b(this.b.e());
    this.g.f().t().a(new iaz(this));
  }
  
  private void l() {
    this.b.w();
  }
  
  public void a() {
    String str = null;
    if (this.b.i().trim().isEmpty()) {
      str = "Preencha campo Telefone!";
    } else if (this.b.i().trim().length() < 14 || this.b.i().trim().length() > 15) {
      str = "Telefone inválido! (insira telefone no formato (XX) XXXX-XXXX)";
    } else if (this.b.j().trim().isEmpty()) {
      str = "Preencha campo Email!";
    } else if (!myi.a(this.b.j())) {
      str = "Email inválido! (insira email no formato exemplo@exemplo.com)";
    } else if (this.b.A() && this.b.p() == null) {
      str = "Preencha campo Serviço/Produto!";
    } else if (this.b.x().getText().toString().trim().isEmpty()) {
      str = "Selecione o campo Motivo";
    } else if (this.m > Double.parseDouble(this.b.o().c()) * 1000.0D / 1024.0D) {
      str = "Tamanho total de todas as imagens juntas não podem ultrapassar 3MB! Favor excluir alguma imagem!";
    } else if (this.i.size() > 3) {
      str = "Limite Máximo de 3 arquivos para anexar!";
    } 
    if (str == null) {
      c();
      return;
    } 
    b(str);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent, Context paramContext) {
    IOException iOException = null;
    hzb hzb = new hzb();
    if (paramInt2 != 0) {
      if (paramInt1 == 1234) {
        Uri uri = paramIntent.getData();
        hzb = new hzb();
        hzb.c(uri.getLastPathSegment());
        Cursor cursor = paramContext.getContentResolver().query(paramIntent.getData(), null, null, null, null);
        if (cursor != null && cursor.moveToFirst()) {
          paramInt1 = cursor.getColumnIndex("_data");
          if (paramInt1 != -1) {
            File file = new File(cursor.getString(paramInt1));
            try {
              Bitmap bitmap = mxa.a(file);
            } catch (IOException iOException1) {
              Log.e("Error", iOException1.getMessage());
              iOException1 = iOException;
            } 
            byte[] arrayOfByte = a((Bitmap)iOException1);
            double d = Double.parseDouble(String.valueOf(arrayOfByte.length)) / 1024.0D / 1024.0D;
            hzb.a(d);
            String[] arrayOfString = cursor.getString(paramInt1).split("/");
            hzb.d(arrayOfString[arrayOfString.length - 1] + " - " + String.format("%.2f", new Object[] { Double.valueOf(d) }).replace(",", ".") + "MB");
            hzb.b(arrayOfString[arrayOfString.length - 1]);
            hzb.a((Bitmap)iOException1);
            hzb.a(Base64.encodeToString(arrayOfByte, 0));
            try {
              hzb.e((new naf()).a(arrayOfByte));
            } catch (Exception exception) {
              Log.e("ERROR_SHA", exception.getMessage());
            } 
            this.m += d;
          } 
        } 
      } 
      this.i.add(hzb);
      i();
    } 
    if (paramInt2 == 0)
      this.b.e().onBackPressed(); 
  }
  
  public void a(Activity paramActivity) {
    if (this.i != null && this.i.size() < 3) {
      b(paramActivity);
      return;
    } 
    mxn.d(this.b.e(), "Limite Máximo de 3 arquivos para anexar!");
  }
  
  public void a(hzg paramhzg) {
    this.b.d();
    this.h = new ArrayList<hze>();
    for (int i = 0; i < paramhzg.a().size(); i++) {
      hze hze = new hze();
      hze.f(((hze)paramhzg.a().get(i)).f());
      hze.b(((hze)paramhzg.a().get(i)).b());
      hze.c(((hze)paramhzg.a().get(i)).c());
      hze.d(((hze)paramhzg.a().get(i)).d());
      hze.g(((hze)paramhzg.a().get(i)).g());
      hze.e(((hze)paramhzg.a().get(i)).e());
      hze.h(((hze)paramhzg.a().get(i)).h());
      hze.j(((hze)paramhzg.a().get(i)).j());
      hze.i(((hze)paramhzg.a().get(i)).i());
      hze.k(((hze)paramhzg.a().get(i)).k());
      hze.a(((hze)paramhzg.a().get(i)).a());
      this.h.add(hze);
    } 
    this.b.a(this.h);
  }
  
  public void a(hzj paramhzj) {
    this.b.d();
    if (paramhzj.getConfirmacao().equalsIgnoreCase("OK")) {
      this.b.b(paramhzj.a());
      if (!this.b.f().equalsIgnoreCase("9")) {
        b();
        return;
      } 
    } else {
      return;
    } 
    h();
  }
  
  public void a(hzm paramhzm) {
    this.b.d();
    c(paramhzm);
  }
  
  public void a(hzr paramhzr) {
    this.b.d();
    this.j = new ArrayList<hzp>();
    for (int i = 0; i < paramhzr.a().size(); i++) {
      hzp hzp = new hzp();
      hzp.b(((hzp)paramhzr.a().get(i)).b());
      hzp.a(((hzp)paramhzr.a().get(i)).a());
      hzp.c(((hzp)paramhzr.a().get(i)).c());
      this.j.add(hzp);
    } 
    this.b.b(this.j);
  }
  
  public void a(String paramString) {
    this.b.c();
    hzi hzi = new hzi();
    hzi.a(this.g.f().k());
    this.e.a(hzi);
  }
  
  public void b() {
    this.b.c();
    hzf hzf = new hzf();
    hzf.b(this.b.f());
    if (this.b.f().equalsIgnoreCase("9"))
      hzf.a(this.b.p().a()); 
    this.c.a(hzf);
  }
  
  public void b(hzg paramhzg) {
    this.b.d();
    if (paramhzg != null) {
      if (paramhzg.getConfirmacao() != null) {
        if (paramhzg.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.b.a(paramhzg.getMensagemErro());
          return;
        } 
        this.b.b();
        return;
      } 
      this.b.b();
      return;
    } 
    this.b.b();
  }
  
  public void b(hzj paramhzj) {
    this.b.d();
    if (paramhzj != null) {
      if (paramhzj.getConfirmacao() != null) {
        if (paramhzj.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.b.a(paramhzj.getMensagemErro());
          return;
        } 
        this.b.b();
        return;
      } 
      this.b.b();
      return;
    } 
    this.b.b();
  }
  
  public void b(hzm paramhzm) {
    this.b.d();
    if (paramhzm != null) {
      if (paramhzm.getConfirmacao() != null) {
        if (paramhzm.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.b.a(paramhzm.getMensagemErro());
          return;
        } 
        this.b.b();
        return;
      } 
      this.b.b();
      return;
    } 
    this.b.b();
  }
  
  public void b(hzr paramhzr) {
    this.b.d();
    if (paramhzr != null) {
      if (paramhzr.getConfirmacao() != null) {
        if (paramhzr.getConfirmacao().equalsIgnoreCase("ERRO")) {
          this.b.a(paramhzr.getMensagemErro());
          return;
        } 
        this.b.b();
        return;
      } 
      this.b.b();
      return;
    } 
    this.b.b();
  }
  
  public void b(String paramString) {
    mxn.d(this.b.e(), paramString);
  }
  
  public void c() {
    naf naf = new naf();
    this.b.c();
    hzk hzk = new hzk();
    try {
      hzk.g(this.b.h().b());
      hzk.h(this.b.h().c());
      hzk.n(this.b.h().e());
      hzk.j(this.b.g());
      hzk.q(this.b.g());
      hzk.j(this.b.g());
      hzk.k(this.b.h().d());
      hzk.r(this.b.n().d());
      hzk.p(this.b.n().d());
      hzk.c(this.b.h().f());
      hzk.d(this.b.h().j());
      hzk.e(this.b.h().i());
      hzk.f(this.b.h().k());
      hzk.setTokenSessao(this.g.j());
      if (this.g.f().f() != null)
        hzk.setAgencia(naf.b(this.g.f().f().getBytes("UTF-8"))); 
      if (this.g.f().g() != null)
        hzk.setConta(naf.b(this.g.f().g().getBytes("UTF-8"))); 
      if (this.g.f().k() != null)
        hzk.i(naf.b(this.g.f().k().getBytes("UTF-8"))); 
      if (this.b != null && this.b.i() != null && !this.b.i().equals(""))
        hzk.l(naf.b(this.b.i().getBytes("UTF-8"))); 
      if (this.b != null && this.b.j() != null && !this.b.j().equals(""))
        hzk.m(naf.b(this.b.j().getBytes("UTF-8"))); 
      if (this.b != null && this.b.k() != null && !this.b.k().equals(""))
        hzk.o(naf.b(this.b.k().getBytes("UTF-8"))); 
      if (this.b.v() != null)
        hzk.a(naf.b(this.b.v().H().getBytes("UTF-8"))); 
      ArrayList<hyy> arrayList = new ArrayList();
      if (this.i != null && !this.i.isEmpty())
        for (int i = 0; i < this.i.size(); i++) {
          hyy hyy = new hyy();
          hyy.a(((hzb)this.i.get(i)).a());
          hyy.c(((hzb)this.i.get(i)).g());
          hyy.b(((hzb)this.i.get(i)).b());
          arrayList.add(hyy);
        }  
      if (!arrayList.isEmpty())
        if (arrayList.size() == 3) {
          hzk.a(arrayList.get(0));
          hzk.b(arrayList.get(1));
          hzk.c(arrayList.get(2));
        } else if (arrayList.size() == 2) {
          hzk.a(arrayList.get(0));
          hzk.b(arrayList.get(1));
        } else if (arrayList.size() == 1) {
          hzk.a(arrayList.get(0));
        }  
    } catch (Exception exception) {
      Log.e("ERROR_CRYPTO", exception.getMessage());
    } 
    this.d.a(hzk);
  }
  
  public void c(hzm paramhzm) {
    this.k = new hyz();
    this.k.a(d(paramhzm));
    this.k.d("");
    this.k.e("");
    this.k.c("");
    Intent intent = new Intent((Context)this.b.e(), ComprovanteFaleConoscoActivity.class);
    intent.putExtra("comprovante", this.k);
    this.b.e().startActivity(intent);
  }
  
  public String d() {
    return this.g.f().k();
  }
  
  public ArrayList<gky> d(hzm paramhzm) {
    if (paramhzm.h() != null) {
      gky gky = new gky("Protocolo: ", paramhzm.h());
      this.l.add(gky);
    } 
    if (paramhzm.d() != null) {
      gky gky = new gky("Data limite para contato:", paramhzm.d());
      this.l.add(gky);
    } 
    if (paramhzm.c() != null) {
      gky gky = new gky("CPF: ", paramhzm.c());
      this.l.add(gky);
    } 
    if (this.b.v() != null) {
      gky gky = new gky("Cartão: ", this.b.v().a());
      this.l.add(gky);
      gky = new gky("Final: ", this.b.v().I());
      this.l.add(gky);
    } 
    if (paramhzm.b() != null) {
      gky gky = new gky("Assunto: ", paramhzm.b());
      this.l.add(gky);
    } 
    if (paramhzm.g() != null) {
      gky gky = new gky("Motivo: ", paramhzm.g());
      this.l.add(gky);
    } 
    return this.l;
  }
  
  public int e() {
    return this.i.size();
  }
  
  public void f() {
    if (j()) {
      k();
      return;
    } 
    l();
  }
  
  public void g() {
    if (this.b.f().equalsIgnoreCase("9")) {
      this.b.y().setVisibility(0);
      this.b.z().setVisibility(0);
      this.b.x().setVisibility(8);
      this.b.q().setVisibility(8);
      this.b.r().setVisibility(8);
      this.b.s().setVisibility(8);
      this.b.h_().setVisibility(8);
      this.b.t().setVisibility(8);
    } 
  }
  
  public void h() {
    this.b.c();
    hzq hzq = new hzq();
    this.f = new iai(this);
    this.f.a(hzq);
  }
  
  public void i() {
    LayoutInflater layoutInflater = this.b.e().getLayoutInflater();
    this.b.l().removeAllViews();
    for (int i = 0; i < this.i.size(); i++) {
      View view = layoutInflater.inflate(2130969347, null);
      TextView textView = (TextView)view.findViewById(2131759036);
      ImageView imageView = (ImageView)view.findViewById(2131759038);
      ((ImageView)view.findViewById(2131759035)).setImageBitmap(ThumbnailUtils.extractThumbnail(((hzb)this.i.get(i)).d(), 100, 100));
      imageView.setOnClickListener(a(i));
      textView.setText(((hzb)this.i.get(i)).f());
      this.b.l().setVisibility(0);
      this.b.l().addView(view);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iaw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
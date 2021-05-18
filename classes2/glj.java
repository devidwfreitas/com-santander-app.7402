import android.content.Intent;
import android.view.View;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartoesActivity;
import com.santander.app.faturas.activity.FaturasActivity;
import java.util.List;

class glj implements View.OnClickListener {
  glj(glf paramglf, int paramInt) {}
  
  public void onClick(View paramView) {
    int j;
    int i = 0;
    byte b = 0;
    ghu ghu = this.b.b.get(this.b.c.c());
    this.b.c.a(ghu);
    if (gld.f(this.b.c) == null)
      this.b.c.a(ghu); 
    this.b.c.a(this.a);
    if (ghu.z() != null) {
      if (mzr.a()) {
        gld.a(this.b.c, gld.g(this.b.c));
        return;
      } 
      j = b;
      if (gld.h(this.b.c).f().s().b() != null) {
        List<ghu> list = gld.h(this.b.c).f().s().b();
        i = 0;
        while (true) {
          j = b;
          if (i < list.size()) {
            ghu ghu1 = list.get(i);
            if (ghu.b().contains(ghu1.I())) {
              j = i;
            } else {
              i++;
              continue;
            } 
          } 
          frq.d("Cartoes_Home_Acao", "DesbloqueieAgora");
          intent = new Intent(gld.g(this.b.c), DesbloqueioCartoesActivity.class);
          intent.putExtra("indexCartao", j);
          gld.g(this.b.c).startActivity(intent);
          return;
        } 
      } 
    } else {
      if (gld.h(this.b.c).f().s().d().contains(intent))
        i = gld.h(this.b.c).f().s().d().indexOf(intent); 
      frq.d("Cartoes_Home_Acao", "CliqueNoSelecionarCartao");
      intent = new Intent(gld.g(this.b.c), FaturasActivity.class);
      intent.putExtra("indexCartao", i);
      gld.g(this.b.c).startActivity(intent);
      return;
    } 
    frq.d("Cartoes_Home_Acao", "DesbloqueieAgora");
    Intent intent = new Intent(gld.g(this.b.c), DesbloqueioCartoesActivity.class);
    intent.putExtra("indexCartao", j);
    gld.g(this.b.c).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
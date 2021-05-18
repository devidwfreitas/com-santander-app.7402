import android.content.Intent;
import android.view.View;
import com.santander.app.previdencia.presentation.AporteActivity;

class kfe implements View.OnClickListener {
  kfe(kfd paramkfd, int paramInt1, int paramInt2) {}
  
  public void onClick(View paramView) {
    kfd.a(this.c, new kdg());
    kfd.b(this.c).f(((kdh)((kdf)kfd.a(this.c).a().get(this.a)).c().get(this.b)).f());
    kfd.b(this.c).e(((kdf)kfd.a(this.c).a().get(this.a)).a());
    kfd.b(this.c).g(((kdh)((kdf)kfd.a(this.c).a().get(this.a)).c().get(this.b)).g());
    kfd.b(this.c).h(((kdh)((kdf)kfd.a(this.c).a().get(this.a)).c().get(this.b)).h());
    kfd.b(this.c).c(((kdh)((kdf)kfd.a(this.c).a().get(this.a)).c().get(this.b)).b());
    kfd.b(this.c).d(((kdh)((kdf)kfd.a(this.c).a().get(this.a)).c().get(this.b)).c());
    kfd.b(this.c).a("1");
    Intent intent = new Intent(kfd.c(this.c), AporteActivity.class);
    intent.putExtra("aporte", kfd.b(this.c));
    kfd.c(this.c).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
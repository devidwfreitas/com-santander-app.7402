import com.santander.app.cadastrocanal.activity.QuizStartActivity;

class fxp implements fye {
  fxp(fxo paramfxo, fyf paramfyf) {}
  
  public void a() {
    for (int i = 0; i < QuizStartActivity.g(this.b.a).getCount(); i++) {
      fyk fyk1 = QuizStartActivity.g(this.b.a).a(i);
      fyk fyk2 = this.a.a().get(i);
      if (fyk1.b().equals(fyk2.b()) && fyk1.e().equals("01"))
        QuizStartActivity.g(this.b.a).a(fyk1); 
    } 
    QuizStartActivity.h(this.b.a);
    QuizStartActivity.g(this.b.a).notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
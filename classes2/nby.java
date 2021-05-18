import com.santander.app.validation.presentation.IdSantanderTokenCentralAtendimentoActivity;

public class nby implements Runnable {
  public nby(IdSantanderTokenCentralAtendimentoActivity paramIdSantanderTokenCentralAtendimentoActivity) {}
  
  public void run() {
    if (IdSantanderTokenCentralAtendimentoActivity.b(this.a).findViewHolderForAdapterPosition(0) != null)
      (IdSantanderTokenCentralAtendimentoActivity.b(this.a).findViewHolderForAdapterPosition(0)).itemView.performClick(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
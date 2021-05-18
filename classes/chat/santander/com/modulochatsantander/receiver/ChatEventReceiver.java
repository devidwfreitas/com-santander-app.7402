package chat.santander.com.modulochatsantander.receiver;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.os.ResultReceiver;
import aps;
import arp;

public class ChatEventReceiver extends ResultReceiver {
  private arp a;
  
  public ChatEventReceiver(Handler paramHandler) {
    super(paramHandler);
  }
  
  public void a(arp paramarp) {
    this.a = paramarp;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {
    byte b = -1;
    if (this.a != null && paramInt == -1) {
      String str = paramBundle.getString(aps.bx);
      switch (str.hashCode()) {
        default:
          paramInt = b;
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case -858133765:
          paramInt = b;
          if (str.equals("NEW_EVENT"))
            paramInt = 0; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case -2057224937:
          paramInt = b;
          if (str.equals("DISCONNECT_EVENT"))
            paramInt = 1; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case -940001685:
          paramInt = b;
          if (str.equals("MESSAGE_SENT_EVENT"))
            paramInt = 2; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case 933837385:
          paramInt = b;
          if (str.equals("Desculpe, estamos resolvendo uma questão técnica e você já vai conseguir usar o chat."))
            paramInt = 3; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case 852278836:
          paramInt = b;
          if (str.equals("START_SESSION_EVENT"))
            paramInt = 4; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
        case 593114861:
          paramInt = b;
          if (str.equals("END_SESSION_EVENT"))
            paramInt = 5; 
          switch (paramInt) {
            default:
              return;
            case 0:
              this.a.a();
              return;
            case 1:
              this.a.b();
              return;
            case 2:
              this.a.c();
              return;
            case 3:
              this.a.d();
              return;
            case 4:
              this.a.e();
              return;
            case 5:
              break;
          } 
          break;
      } 
      this.a.f();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\receiver\ChatEventReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
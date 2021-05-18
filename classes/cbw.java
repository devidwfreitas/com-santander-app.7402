import android.view.View;
import com.facebook.share.widget.DeviceShareButton;

public class cbw implements View.OnClickListener {
  public cbw(DeviceShareButton paramDeviceShareButton) {}
  
  public void onClick(View paramView) {
    DeviceShareButton.a(this.a, paramView);
    DeviceShareButton.a(this.a).b(this.a.g());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
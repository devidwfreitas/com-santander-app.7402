package br.com.santander.dynamicauth.features.blink.a;

import android.net.Uri;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.VideoView;
import br.com.santander.dynamicauth.R;
import br.com.santander.dynamicauth.enums.DynamicAuthEnum;
import br.com.santander.dynamicauth.features.blink.view.BlinkActivity;
import br.com.santander.dynamicauth.models.DynamicAuthParameters;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import br.com.santander.uisdk.edittext.SantanderEditText;
import br.com.santander.uisdk.textview.SantanderTextView;

public class a implements View.OnClickListener {
  private BlinkActivity a;
  
  private VideoView b;
  
  private SantanderTextView c;
  
  private SantanderEditText d;
  
  private Button e;
  
  private Button f;
  
  public a(BlinkActivity paramBlinkActivity) {
    this.a = paramBlinkActivity;
    b();
  }
  
  private void b() {
    int i = this.a.getIntent().getIntExtra("CHALLENGE_TYPE", -1);
    this.a.getIntent().removeExtra("CHALLENGE_TYPE");
    String str1 = this.a.getIntent().getStringExtra("TOKEN_OPTOCAL_VIDEO");
    this.a.getIntent().removeExtra("TOKEN_OPTOCAL_VIDEO");
    String str2 = this.a.getIntent().getStringExtra("TOKEN_OPTOCAL_SERIAL");
    this.a.getIntent().removeExtra("TOKEN_OPTOCAL_SERIAL");
    this.b = (VideoView)this.a.findViewById(R.id.blink_video_view);
    this.c = (SantanderTextView)this.a.findViewById(R.id.blink_serial_text_view);
    this.d = (SantanderEditText)this.a.findViewById(R.id.blink_challenge_edit_text);
    this.e = (Button)this.a.findViewById(R.id.blink_proceed_button);
    this.e.setOnClickListener(this);
    this.f = (Button)this.a.findViewById(R.id.blink_video_play_button);
    this.f.setOnClickListener(this);
    if (i == DynamicAuthEnum.CODE_TOKEN_OTICO.getValue() && str1 != null && str2 != null) {
      this.b.setVideoURI(Uri.parse(str1));
      this.c.setText(str2);
    } 
  }
  
  public void a() {
    DynamicAuthParameters.getInstance().getCallBack().onFinish();
    this.a.finish();
  }
  
  public void onClick(View paramView) {
    if (paramView.getId() == R.id.blink_video_play_button && this.b != null && !this.b.isPlaying()) {
      this.b.start();
      return;
    } 
    if (paramView.getId() == R.id.blink_proceed_button && this.d != null) {
      Editable editable = this.d.getText();
      if (editable != null) {
        this.a.finish();
        DynamicAuthParameters.getInstance().getCallBack().onSuccess(new DynamicAuthResponse(DynamicAuthEnum.CODE_TOKEN_OTICO, editable.toString()));
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\features\blink\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
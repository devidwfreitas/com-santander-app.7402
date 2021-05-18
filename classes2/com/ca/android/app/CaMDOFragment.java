package com.ca.android.app;

import android.annotation.TargetApi;
import android.app.Fragment;
import com.ca.mdo.SDK;

@TargetApi(11)
public abstract class CaMDOFragment extends Fragment {
  public void onPause() {
    super.onPause();
    SDK.getAgent(getActivity().getApplication()).onPauseOfFragment(this);
  }
  
  public void onResume() {
    super.onResume();
    SDK.getAgent(getActivity().getApplication()).onResumeOfFragment(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
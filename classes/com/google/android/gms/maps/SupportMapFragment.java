package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import csp;
import dxk;
import dyf;

public class SupportMapFragment extends Fragment {
  private final dyf a = new dyf(this);
  
  public static SupportMapFragment a() {
    return new SupportMapFragment();
  }
  
  public static SupportMapFragment a(GoogleMapOptions paramGoogleMapOptions) {
    SupportMapFragment supportMapFragment = new SupportMapFragment();
    Bundle bundle = new Bundle();
    bundle.putParcelable("MapOptions", (Parcelable)paramGoogleMapOptions);
    supportMapFragment.setArguments(bundle);
    return supportMapFragment;
  }
  
  public final void a(Bundle paramBundle) {
    csp.b("onEnterAmbient must be called on the main thread.");
    this.a.c(paramBundle);
  }
  
  public void a(dxk paramdxk) {
    csp.b("getMapAsync must be called on the main thread.");
    this.a.a(paramdxk);
  }
  
  public final void b() {
    csp.b("onExitAmbient must be called on the main thread.");
    this.a.j();
  }
  
  public void onActivityCreated(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader()); 
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    dyf.a(this.a, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a.a(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = this.a.a(paramLayoutInflater, paramViewGroup, paramBundle);
    view.setClickable(true);
    return view;
  }
  
  public void onDestroy() {
    this.a.g();
    super.onDestroy();
  }
  
  public void onDestroyView() {
    this.a.f();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle) {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    dyf.a(this.a, paramActivity);
    GoogleMapOptions googleMapOptions = GoogleMapOptions.a((Context)paramActivity, paramAttributeSet);
    Bundle bundle = new Bundle();
    bundle.putParcelable("MapOptions", (Parcelable)googleMapOptions);
    this.a.a(paramActivity, bundle, paramBundle);
  }
  
  public void onLowMemory() {
    this.a.h();
    super.onLowMemory();
  }
  
  public void onPause() {
    this.a.d();
    super.onPause();
  }
  
  public void onResume() {
    super.onResume();
    this.a.c();
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    if (paramBundle != null)
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader()); 
    super.onSaveInstanceState(paramBundle);
    this.a.b(paramBundle);
  }
  
  public void onStart() {
    super.onStart();
    this.a.b();
  }
  
  public void onStop() {
    this.a.e();
    super.onStop();
  }
  
  public void setArguments(Bundle paramBundle) {
    super.setArguments(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\SupportMapFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
package android.support.design.widget;

import android.content.res.ColorStateList;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.R;
import android.support.design.internal.SnackbarContentLayout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;

public final class Snackbar extends BaseTransientBottomBar<Snackbar> {
  public static final int LENGTH_INDEFINITE = -2;
  
  public static final int LENGTH_LONG = 0;
  
  public static final int LENGTH_SHORT = -1;
  
  @Nullable
  private BaseTransientBottomBar$BaseCallback<Snackbar> mCallback;
  
  private Snackbar(ViewGroup paramViewGroup, View paramView, BaseTransientBottomBar$ContentViewCallback paramBaseTransientBottomBar$ContentViewCallback) {
    super(paramViewGroup, paramView, paramBaseTransientBottomBar$ContentViewCallback);
  }
  
  private static ViewGroup findSuitableParent(View paramView) {
    ViewGroup viewGroup = null;
    View view = paramView;
    while (true) {
      ViewParent viewParent1;
      if (view instanceof CoordinatorLayout)
        return (ViewGroup)view; 
      ViewGroup viewGroup1 = viewGroup;
      if (view instanceof android.widget.FrameLayout) {
        if (view.getId() == 16908290)
          return (ViewGroup)view; 
        viewGroup1 = (ViewGroup)view;
      } 
      paramView = view;
      if (view != null) {
        viewParent1 = view.getParent();
        if (viewParent1 instanceof View) {
          View view1 = (View)viewParent1;
        } else {
          viewParent1 = null;
        } 
      } 
      ViewParent viewParent2 = viewParent1;
      viewGroup = viewGroup1;
      if (viewParent1 == null)
        return viewGroup1; 
    } 
  }
  
  @NonNull
  public static Snackbar make(@NonNull View paramView, @StringRes int paramInt1, int paramInt2) {
    return make(paramView, paramView.getResources().getText(paramInt1), paramInt2);
  }
  
  @NonNull
  public static Snackbar make(@NonNull View paramView, @NonNull CharSequence paramCharSequence, int paramInt) {
    ViewGroup viewGroup = findSuitableParent(paramView);
    if (viewGroup == null)
      throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view."); 
    SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout)LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.design_layout_snackbar_include, viewGroup, false);
    Snackbar snackbar = new Snackbar(viewGroup, (View)snackbarContentLayout, (BaseTransientBottomBar$ContentViewCallback)snackbarContentLayout);
    snackbar.setText(paramCharSequence);
    snackbar.setDuration(paramInt);
    return snackbar;
  }
  
  @NonNull
  public Snackbar setAction(@StringRes int paramInt, View.OnClickListener paramOnClickListener) {
    return setAction(getContext().getText(paramInt), paramOnClickListener);
  }
  
  @NonNull
  public Snackbar setAction(CharSequence paramCharSequence, View.OnClickListener paramOnClickListener) {
    Button button = ((SnackbarContentLayout)this.mView.getChildAt(0)).getActionView();
    if (TextUtils.isEmpty(paramCharSequence) || paramOnClickListener == null) {
      button.setVisibility(8);
      button.setOnClickListener(null);
      return this;
    } 
    button.setVisibility(0);
    button.setText(paramCharSequence);
    button.setOnClickListener(new Snackbar$1(this, paramOnClickListener));
    return this;
  }
  
  @NonNull
  public Snackbar setActionTextColor(@ColorInt int paramInt) {
    ((SnackbarContentLayout)this.mView.getChildAt(0)).getActionView().setTextColor(paramInt);
    return this;
  }
  
  @NonNull
  public Snackbar setActionTextColor(ColorStateList paramColorStateList) {
    ((SnackbarContentLayout)this.mView.getChildAt(0)).getActionView().setTextColor(paramColorStateList);
    return this;
  }
  
  @Deprecated
  @NonNull
  public Snackbar setCallback(Snackbar$Callback paramSnackbar$Callback) {
    if (this.mCallback != null)
      removeCallback(this.mCallback); 
    if (paramSnackbar$Callback != null)
      addCallback(paramSnackbar$Callback); 
    this.mCallback = paramSnackbar$Callback;
    return this;
  }
  
  @NonNull
  public Snackbar setText(@StringRes int paramInt) {
    return setText(getContext().getText(paramInt));
  }
  
  @NonNull
  public Snackbar setText(@NonNull CharSequence paramCharSequence) {
    ((SnackbarContentLayout)this.mView.getChildAt(0)).getMessageView().setText(paramCharSequence);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\Snackbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
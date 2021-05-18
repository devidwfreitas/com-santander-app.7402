package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@SuppressLint({"NewApi"})
public class AnimatedVectorDrawableCompat extends VectorDrawableCommon implements Animatable2Compat {
  private static final String ANIMATED_VECTOR = "animated-vector";
  
  private static final boolean DBG_ANIMATION_VECTOR_DRAWABLE = false;
  
  private static final String LOGTAG = "AnimatedVDCompat";
  
  private static final String TARGET = "target";
  
  private AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState mAnimatedVectorState;
  
  private ArrayList<Animatable2Compat$AnimationCallback> mAnimationCallbacks = null;
  
  private Animator.AnimatorListener mAnimatorListener = null;
  
  private ArgbEvaluator mArgbEvaluator = null;
  
  AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState mCachedConstantStateDelegate;
  
  final Drawable.Callback mCallback = new AnimatedVectorDrawableCompat$1(this);
  
  private Context mContext;
  
  AnimatedVectorDrawableCompat() {
    this((Context)null, (AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState)null, (Resources)null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext) {
    this(paramContext, (AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState)null, (Resources)null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext, @Nullable AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, @Nullable Resources paramResources) {
    this.mContext = paramContext;
    if (paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState != null) {
      this.mAnimatedVectorState = paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
      return;
    } 
    this.mAnimatedVectorState = new AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState(paramContext, paramAnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, this.mCallback, paramResources);
  }
  
  public static void clearAnimationCallbacks(Drawable paramDrawable) {
    if (paramDrawable == null || !(paramDrawable instanceof android.graphics.drawable.Animatable))
      return; 
    if (Build.VERSION.SDK_INT >= 24) {
      ((AnimatedVectorDrawable)paramDrawable).clearAnimationCallbacks();
      return;
    } 
    ((AnimatedVectorDrawableCompat)paramDrawable).clearAnimationCallbacks();
  }
  
  @Nullable
  public static AnimatedVectorDrawableCompat create(@NonNull Context paramContext, @DrawableRes int paramInt) {
    if (Build.VERSION.SDK_INT >= 24) {
      AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(paramContext);
      animatedVectorDrawableCompat.mDelegateDrawable = ResourcesCompat.getDrawable(paramContext.getResources(), paramInt, paramContext.getTheme());
      animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
      animatedVectorDrawableCompat.mCachedConstantStateDelegate = new AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState(animatedVectorDrawableCompat.mDelegateDrawable.getConstantState());
      return animatedVectorDrawableCompat;
    } 
    Resources resources = paramContext.getResources();
    try {
      XmlResourceParser xmlResourceParser = resources.getXml(paramInt);
      AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)xmlResourceParser);
      do {
        paramInt = xmlResourceParser.next();
      } while (paramInt != 2 && paramInt != 1);
      if (paramInt != 2)
        throw new XmlPullParserException("No start tag found"); 
      return createFromXmlInner(paramContext, paramContext.getResources(), (XmlPullParser)xmlResourceParser, attributeSet, paramContext.getTheme());
    } catch (XmlPullParserException xmlPullParserException) {
      Log.e("AnimatedVDCompat", "parser error", (Throwable)xmlPullParserException);
    } catch (IOException iOException) {
      Log.e("AnimatedVDCompat", "parser error", iOException);
    } 
    return null;
  }
  
  public static AnimatedVectorDrawableCompat createFromXmlInner(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(paramContext);
    animatedVectorDrawableCompat.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return animatedVectorDrawableCompat;
  }
  
  public static void registerAnimationCallback(Drawable paramDrawable, Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    if (paramDrawable != null && paramAnimatable2Compat$AnimationCallback != null && paramDrawable instanceof android.graphics.drawable.Animatable) {
      if (Build.VERSION.SDK_INT >= 24) {
        registerPlatformCallback((AnimatedVectorDrawable)paramDrawable, paramAnimatable2Compat$AnimationCallback);
        return;
      } 
      ((AnimatedVectorDrawableCompat)paramDrawable).registerAnimationCallback(paramAnimatable2Compat$AnimationCallback);
      return;
    } 
  }
  
  private static void registerPlatformCallback(@NonNull AnimatedVectorDrawable paramAnimatedVectorDrawable, @NonNull Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    paramAnimatedVectorDrawable.registerAnimationCallback(paramAnimatable2Compat$AnimationCallback.getPlatformCallback());
  }
  
  private void removeAnimatorSetListener() {
    if (this.mAnimatorListener != null) {
      this.mAnimatedVectorState.mAnimatorSet.removeListener(this.mAnimatorListener);
      this.mAnimatorListener = null;
    } 
  }
  
  private void setupAnimatorsForTarget(String paramString, Animator paramAnimator) {
    paramAnimator.setTarget(this.mAnimatedVectorState.mVectorDrawable.getTargetByName(paramString));
    if (Build.VERSION.SDK_INT < 21)
      setupColorAnimator(paramAnimator); 
    if (AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.access$000(this.mAnimatedVectorState) == null) {
      AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.access$002(this.mAnimatedVectorState, new ArrayList());
      this.mAnimatedVectorState.mTargetNameMap = new ArrayMap();
    } 
    AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.access$000(this.mAnimatedVectorState).add(paramAnimator);
    this.mAnimatedVectorState.mTargetNameMap.put(paramAnimator, paramString);
  }
  
  private void setupColorAnimator(Animator paramAnimator) {
    if (paramAnimator instanceof AnimatorSet) {
      ArrayList<Animator> arrayList = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (arrayList != null)
        for (int i = 0; i < arrayList.size(); i++)
          setupColorAnimator(arrayList.get(i));  
    } 
    if (paramAnimator instanceof ObjectAnimator) {
      ObjectAnimator objectAnimator = (ObjectAnimator)paramAnimator;
      String str = objectAnimator.getPropertyName();
      if ("fillColor".equals(str) || "strokeColor".equals(str)) {
        if (this.mArgbEvaluator == null)
          this.mArgbEvaluator = new ArgbEvaluator(); 
        objectAnimator.setEvaluator((TypeEvaluator)this.mArgbEvaluator);
      } 
    } 
  }
  
  public static boolean unregisterAnimationCallback(Drawable paramDrawable, Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    return (paramDrawable != null && paramAnimatable2Compat$AnimationCallback != null && paramDrawable instanceof android.graphics.drawable.Animatable) ? ((Build.VERSION.SDK_INT >= 24) ? unregisterPlatformCallback((AnimatedVectorDrawable)paramDrawable, paramAnimatable2Compat$AnimationCallback) : ((AnimatedVectorDrawableCompat)paramDrawable).unregisterAnimationCallback(paramAnimatable2Compat$AnimationCallback)) : false;
  }
  
  private static boolean unregisterPlatformCallback(AnimatedVectorDrawable paramAnimatedVectorDrawable, Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    return paramAnimatedVectorDrawable.unregisterAnimationCallback(paramAnimatable2Compat$AnimationCallback.getPlatformCallback());
  }
  
  public void applyTheme(Resources.Theme paramTheme) {
    if (this.mDelegateDrawable != null)
      DrawableCompat.applyTheme(this.mDelegateDrawable, paramTheme); 
  }
  
  public boolean canApplyTheme() {
    return (this.mDelegateDrawable != null) ? DrawableCompat.canApplyTheme(this.mDelegateDrawable) : false;
  }
  
  public void clearAnimationCallbacks() {
    if (this.mDelegateDrawable != null) {
      ((AnimatedVectorDrawable)this.mDelegateDrawable).clearAnimationCallbacks();
      return;
    } 
    removeAnimatorSetListener();
    if (this.mAnimationCallbacks != null) {
      this.mAnimationCallbacks.clear();
      return;
    } 
  }
  
  public void draw(Canvas paramCanvas) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.draw(paramCanvas);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.draw(paramCanvas);
    if (this.mAnimatedVectorState.mAnimatorSet.isStarted()) {
      invalidateSelf();
      return;
    } 
  }
  
  public int getAlpha() {
    return (this.mDelegateDrawable != null) ? DrawableCompat.getAlpha(this.mDelegateDrawable) : this.mAnimatedVectorState.mVectorDrawable.getAlpha();
  }
  
  public int getChangingConfigurations() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getChangingConfigurations() : (super.getChangingConfigurations() | this.mAnimatedVectorState.mChangingConfigurations);
  }
  
  public Drawable.ConstantState getConstantState() {
    return (this.mDelegateDrawable != null) ? new AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState(this.mDelegateDrawable.getConstantState()) : null;
  }
  
  public int getIntrinsicHeight() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getIntrinsicHeight() : this.mAnimatedVectorState.mVectorDrawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getIntrinsicWidth() : this.mAnimatedVectorState.mVectorDrawable.getIntrinsicWidth();
  }
  
  public int getOpacity() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getOpacity() : this.mAnimatedVectorState.mVectorDrawable.getOpacity();
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet) {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, (Resources.Theme)null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.inflate(this.mDelegateDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    } 
    int i = paramXmlPullParser.getEventType();
    int j = paramXmlPullParser.getDepth();
    while (i != 1 && (paramXmlPullParser.getDepth() >= j + 1 || i != 3)) {
      if (i == 2) {
        TypedArray typedArray;
        String str = paramXmlPullParser.getName();
        if ("animated-vector".equals(str)) {
          typedArray = VectorDrawableCommon.obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_AnimatedVectorDrawable);
          i = typedArray.getResourceId(0, 0);
          if (i != 0) {
            VectorDrawableCompat vectorDrawableCompat = VectorDrawableCompat.create(paramResources, i, paramTheme);
            vectorDrawableCompat.setAllowCaching(false);
            vectorDrawableCompat.setCallback(this.mCallback);
            if (this.mAnimatedVectorState.mVectorDrawable != null)
              this.mAnimatedVectorState.mVectorDrawable.setCallback(null); 
            this.mAnimatedVectorState.mVectorDrawable = vectorDrawableCompat;
          } 
          typedArray.recycle();
        } else if ("target".equals(typedArray)) {
          typedArray = paramResources.obtainAttributes(paramAttributeSet, AndroidResources.styleable_AnimatedVectorDrawableTarget);
          String str1 = typedArray.getString(0);
          i = typedArray.getResourceId(1, 0);
          if (i != 0)
            if (this.mContext != null) {
              setupAnimatorsForTarget(str1, AnimatorInflater.loadAnimator(this.mContext, i));
            } else {
              typedArray.recycle();
              throw new IllegalStateException("Context can't be null when inflating animators");
            }  
          typedArray.recycle();
        } 
      } 
      i = paramXmlPullParser.next();
    } 
    this.mAnimatedVectorState.setupAnimatorSet();
  }
  
  public boolean isAutoMirrored() {
    return (this.mDelegateDrawable != null) ? DrawableCompat.isAutoMirrored(this.mDelegateDrawable) : this.mAnimatedVectorState.mVectorDrawable.isAutoMirrored();
  }
  
  public boolean isRunning() {
    return (this.mDelegateDrawable != null) ? ((AnimatedVectorDrawable)this.mDelegateDrawable).isRunning() : this.mAnimatedVectorState.mAnimatorSet.isRunning();
  }
  
  public boolean isStateful() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.isStateful() : this.mAnimatedVectorState.mVectorDrawable.isStateful();
  }
  
  public Drawable mutate() {
    if (this.mDelegateDrawable != null)
      this.mDelegateDrawable.mutate(); 
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setBounds(paramRect);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt) {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.setLevel(paramInt) : this.mAnimatedVectorState.mVectorDrawable.setLevel(paramInt);
  }
  
  protected boolean onStateChange(int[] paramArrayOfint) {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.setState(paramArrayOfint) : this.mAnimatedVectorState.mVectorDrawable.setState(paramArrayOfint);
  }
  
  public void registerAnimationCallback(@NonNull Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    if (this.mDelegateDrawable != null) {
      registerPlatformCallback((AnimatedVectorDrawable)this.mDelegateDrawable, paramAnimatable2Compat$AnimationCallback);
      return;
    } 
    if (paramAnimatable2Compat$AnimationCallback != null) {
      if (this.mAnimationCallbacks == null)
        this.mAnimationCallbacks = new ArrayList<Animatable2Compat$AnimationCallback>(); 
      if (!this.mAnimationCallbacks.contains(paramAnimatable2Compat$AnimationCallback)) {
        this.mAnimationCallbacks.add(paramAnimatable2Compat$AnimationCallback);
        if (this.mAnimatorListener == null)
          this.mAnimatorListener = (Animator.AnimatorListener)new AnimatedVectorDrawableCompat$2(this); 
        this.mAnimatedVectorState.mAnimatorSet.addListener(this.mAnimatorListener);
        return;
      } 
    } 
  }
  
  public void setAlpha(int paramInt) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setAlpha(paramInt);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setAutoMirrored(paramBoolean);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setAutoMirrored(paramBoolean);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setColorFilter(paramColorFilter);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setColorFilter(paramColorFilter);
  }
  
  public void setTint(int paramInt) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTint(this.mDelegateDrawable, paramInt);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTintList(this.mDelegateDrawable, paramColorStateList);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTintMode(this.mDelegateDrawable, paramMode);
      return;
    } 
    this.mAnimatedVectorState.mVectorDrawable.setTintMode(paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2) {
    if (this.mDelegateDrawable != null)
      return this.mDelegateDrawable.setVisible(paramBoolean1, paramBoolean2); 
    this.mAnimatedVectorState.mVectorDrawable.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start() {
    if (this.mDelegateDrawable != null) {
      ((AnimatedVectorDrawable)this.mDelegateDrawable).start();
      return;
    } 
    if (!this.mAnimatedVectorState.mAnimatorSet.isStarted()) {
      this.mAnimatedVectorState.mAnimatorSet.start();
      invalidateSelf();
      return;
    } 
  }
  
  public void stop() {
    if (this.mDelegateDrawable != null) {
      ((AnimatedVectorDrawable)this.mDelegateDrawable).stop();
      return;
    } 
    this.mAnimatedVectorState.mAnimatorSet.end();
  }
  
  public boolean unregisterAnimationCallback(@NonNull Animatable2Compat$AnimationCallback paramAnimatable2Compat$AnimationCallback) {
    if (this.mDelegateDrawable != null)
      unregisterPlatformCallback((AnimatedVectorDrawable)this.mDelegateDrawable, paramAnimatable2Compat$AnimationCallback); 
    if (this.mAnimationCallbacks == null || paramAnimatable2Compat$AnimationCallback == null)
      return false; 
    boolean bool2 = this.mAnimationCallbacks.remove(paramAnimatable2Compat$AnimationCallback);
    boolean bool1 = bool2;
    if (this.mAnimationCallbacks.size() == 0) {
      removeAnimatorSetListener();
      return bool2;
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\AnimatedVectorDrawableCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

class VectorDrawableCompat$VGroup {
  int mChangingConfigurations;
  
  final ArrayList<Object> mChildren = new ArrayList();
  
  private String mGroupName = null;
  
  private final Matrix mLocalMatrix = new Matrix();
  
  private float mPivotX = 0.0F;
  
  private float mPivotY = 0.0F;
  
  float mRotate = 0.0F;
  
  private float mScaleX = 1.0F;
  
  private float mScaleY = 1.0F;
  
  private final Matrix mStackedMatrix = new Matrix();
  
  private int[] mThemeAttrs;
  
  private float mTranslateX = 0.0F;
  
  private float mTranslateY = 0.0F;
  
  public VectorDrawableCompat$VGroup() {}
  
  public VectorDrawableCompat$VGroup(VectorDrawableCompat$VGroup paramVectorDrawableCompat$VGroup, ArrayMap<String, Object> paramArrayMap) {
    this.mRotate = paramVectorDrawableCompat$VGroup.mRotate;
    this.mPivotX = paramVectorDrawableCompat$VGroup.mPivotX;
    this.mPivotY = paramVectorDrawableCompat$VGroup.mPivotY;
    this.mScaleX = paramVectorDrawableCompat$VGroup.mScaleX;
    this.mScaleY = paramVectorDrawableCompat$VGroup.mScaleY;
    this.mTranslateX = paramVectorDrawableCompat$VGroup.mTranslateX;
    this.mTranslateY = paramVectorDrawableCompat$VGroup.mTranslateY;
    this.mThemeAttrs = paramVectorDrawableCompat$VGroup.mThemeAttrs;
    this.mGroupName = paramVectorDrawableCompat$VGroup.mGroupName;
    this.mChangingConfigurations = paramVectorDrawableCompat$VGroup.mChangingConfigurations;
    if (this.mGroupName != null)
      paramArrayMap.put(this.mGroupName, this); 
    this.mLocalMatrix.set(paramVectorDrawableCompat$VGroup.mLocalMatrix);
    ArrayList<Object> arrayList = paramVectorDrawableCompat$VGroup.mChildren;
    for (int i = 0; i < arrayList.size(); i++) {
      paramVectorDrawableCompat$VGroup = (VectorDrawableCompat$VGroup)arrayList.get(i);
      if (paramVectorDrawableCompat$VGroup instanceof VectorDrawableCompat$VGroup) {
        paramVectorDrawableCompat$VGroup = paramVectorDrawableCompat$VGroup;
        this.mChildren.add(new VectorDrawableCompat$VGroup(paramVectorDrawableCompat$VGroup, paramArrayMap));
      } else {
        VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath;
        VectorDrawableCompat$VClipPath vectorDrawableCompat$VClipPath;
        if (paramVectorDrawableCompat$VGroup instanceof VectorDrawableCompat$VFullPath) {
          vectorDrawableCompat$VFullPath = new VectorDrawableCompat$VFullPath((VectorDrawableCompat$VFullPath)paramVectorDrawableCompat$VGroup);
        } else if (vectorDrawableCompat$VFullPath instanceof VectorDrawableCompat$VClipPath) {
          vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VClipPath((VectorDrawableCompat$VClipPath)vectorDrawableCompat$VFullPath);
        } else {
          throw new IllegalStateException("Unknown object in the tree!");
        } 
        this.mChildren.add(vectorDrawableCompat$VClipPath);
        if (vectorDrawableCompat$VClipPath.mPathName != null)
          paramArrayMap.put(vectorDrawableCompat$VClipPath.mPathName, vectorDrawableCompat$VClipPath); 
      } 
    } 
  }
  
  private void updateLocalMatrix() {
    this.mLocalMatrix.reset();
    this.mLocalMatrix.postTranslate(-this.mPivotX, -this.mPivotY);
    this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
    this.mLocalMatrix.postRotate(this.mRotate, 0.0F, 0.0F);
    this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
  }
  
  private void updateStateFromTypedArray(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser) {
    this.mThemeAttrs = null;
    this.mRotate = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "rotation", 5, this.mRotate);
    this.mPivotX = paramTypedArray.getFloat(1, this.mPivotX);
    this.mPivotY = paramTypedArray.getFloat(2, this.mPivotY);
    this.mScaleX = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "scaleX", 3, this.mScaleX);
    this.mScaleY = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "scaleY", 4, this.mScaleY);
    this.mTranslateX = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "translateX", 6, this.mTranslateX);
    this.mTranslateY = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "translateY", 7, this.mTranslateY);
    String str = paramTypedArray.getString(0);
    if (str != null)
      this.mGroupName = str; 
    updateLocalMatrix();
  }
  
  public String getGroupName() {
    return this.mGroupName;
  }
  
  public Matrix getLocalMatrix() {
    return this.mLocalMatrix;
  }
  
  public float getPivotX() {
    return this.mPivotX;
  }
  
  public float getPivotY() {
    return this.mPivotY;
  }
  
  public float getRotation() {
    return this.mRotate;
  }
  
  public float getScaleX() {
    return this.mScaleX;
  }
  
  public float getScaleY() {
    return this.mScaleY;
  }
  
  public float getTranslateX() {
    return this.mTranslateX;
  }
  
  public float getTranslateY() {
    return this.mTranslateY;
  }
  
  public void inflate(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser) {
    TypedArray typedArray = VectorDrawableCommon.obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_VectorDrawableGroup);
    updateStateFromTypedArray(typedArray, paramXmlPullParser);
    typedArray.recycle();
  }
  
  public void setPivotX(float paramFloat) {
    if (paramFloat != this.mPivotX) {
      this.mPivotX = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setPivotY(float paramFloat) {
    if (paramFloat != this.mPivotY) {
      this.mPivotY = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setRotation(float paramFloat) {
    if (paramFloat != this.mRotate) {
      this.mRotate = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setScaleX(float paramFloat) {
    if (paramFloat != this.mScaleX) {
      this.mScaleX = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setScaleY(float paramFloat) {
    if (paramFloat != this.mScaleY) {
      this.mScaleY = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setTranslateX(float paramFloat) {
    if (paramFloat != this.mTranslateX) {
      this.mTranslateX = paramFloat;
      updateLocalMatrix();
    } 
  }
  
  public void setTranslateY(float paramFloat) {
    if (paramFloat != this.mTranslateY) {
      this.mTranslateY = paramFloat;
      updateLocalMatrix();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
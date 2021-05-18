package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.graphics.Rect;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
class ChangeBoundsPort extends TransitionPort {
  private static final String LOG_TAG = "ChangeBounds";
  
  private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
  
  private static final String PROPNAME_PARENT = "android:changeBounds:parent";
  
  private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
  
  private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
  
  private static RectEvaluator sRectEvaluator;
  
  private static final String[] sTransitionProperties = new String[] { "android:changeBounds:bounds", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY" };
  
  boolean mReparent = false;
  
  boolean mResizeClip = false;
  
  int[] tempLocation = new int[2];
  
  static {
    sRectEvaluator = new RectEvaluator();
  }
  
  private void captureValues(TransitionValues paramTransitionValues) {
    View view = paramTransitionValues.view;
    paramTransitionValues.values.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
    paramTransitionValues.values.put("android:changeBounds:parent", paramTransitionValues.view.getParent());
    paramTransitionValues.view.getLocationInWindow(this.tempLocation);
    paramTransitionValues.values.put("android:changeBounds:windowX", Integer.valueOf(this.tempLocation[0]));
    paramTransitionValues.values.put("android:changeBounds:windowY", Integer.valueOf(this.tempLocation[1]));
  }
  
  public void captureEndValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public void captureStartValues(TransitionValues paramTransitionValues) {
    captureValues(paramTransitionValues);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    // Byte code:
    //   0: aload_2
    //   1: ifnull -> 8
    //   4: aload_3
    //   5: ifnonnull -> 10
    //   8: aconst_null
    //   9: areturn
    //   10: aload_2
    //   11: getfield values : Ljava/util/Map;
    //   14: astore #22
    //   16: aload_3
    //   17: getfield values : Ljava/util/Map;
    //   20: astore #21
    //   22: aload #22
    //   24: ldc 'android:changeBounds:parent'
    //   26: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   31: checkcast android/view/ViewGroup
    //   34: astore #22
    //   36: aload #21
    //   38: ldc 'android:changeBounds:parent'
    //   40: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   45: checkcast android/view/ViewGroup
    //   48: astore #23
    //   50: aload #22
    //   52: ifnull -> 60
    //   55: aload #23
    //   57: ifnonnull -> 62
    //   60: aconst_null
    //   61: areturn
    //   62: aload_3
    //   63: getfield view : Landroid/view/View;
    //   66: astore #21
    //   68: aload #22
    //   70: aload #23
    //   72: if_acmpeq -> 88
    //   75: aload #22
    //   77: invokevirtual getId : ()I
    //   80: aload #23
    //   82: invokevirtual getId : ()I
    //   85: if_icmpne -> 566
    //   88: iconst_1
    //   89: istore #6
    //   91: aload_0
    //   92: getfield mReparent : Z
    //   95: ifeq -> 103
    //   98: iload #6
    //   100: ifeq -> 894
    //   103: aload_2
    //   104: getfield values : Ljava/util/Map;
    //   107: ldc 'android:changeBounds:bounds'
    //   109: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   114: checkcast android/graphics/Rect
    //   117: astore_1
    //   118: aload_3
    //   119: getfield values : Ljava/util/Map;
    //   122: ldc 'android:changeBounds:bounds'
    //   124: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   129: checkcast android/graphics/Rect
    //   132: astore_2
    //   133: aload_1
    //   134: getfield left : I
    //   137: istore #19
    //   139: aload_2
    //   140: getfield left : I
    //   143: istore #20
    //   145: aload_1
    //   146: getfield top : I
    //   149: istore #17
    //   151: aload_2
    //   152: getfield top : I
    //   155: istore #18
    //   157: aload_1
    //   158: getfield right : I
    //   161: istore #15
    //   163: aload_2
    //   164: getfield right : I
    //   167: istore #16
    //   169: aload_1
    //   170: getfield bottom : I
    //   173: istore #13
    //   175: aload_2
    //   176: getfield bottom : I
    //   179: istore #14
    //   181: iload #15
    //   183: iload #19
    //   185: isub
    //   186: istore #9
    //   188: iload #13
    //   190: iload #17
    //   192: isub
    //   193: istore #10
    //   195: iload #16
    //   197: iload #20
    //   199: isub
    //   200: istore #11
    //   202: iload #14
    //   204: iload #18
    //   206: isub
    //   207: istore #12
    //   209: iconst_0
    //   210: istore #8
    //   212: iconst_0
    //   213: istore #7
    //   215: iload #8
    //   217: istore #6
    //   219: iload #9
    //   221: ifeq -> 312
    //   224: iload #8
    //   226: istore #6
    //   228: iload #10
    //   230: ifeq -> 312
    //   233: iload #8
    //   235: istore #6
    //   237: iload #11
    //   239: ifeq -> 312
    //   242: iload #8
    //   244: istore #6
    //   246: iload #12
    //   248: ifeq -> 312
    //   251: iload #19
    //   253: iload #20
    //   255: if_icmpeq -> 261
    //   258: iconst_1
    //   259: istore #7
    //   261: iload #7
    //   263: istore #6
    //   265: iload #17
    //   267: iload #18
    //   269: if_icmpeq -> 278
    //   272: iload #7
    //   274: iconst_1
    //   275: iadd
    //   276: istore #6
    //   278: iload #6
    //   280: istore #7
    //   282: iload #15
    //   284: iload #16
    //   286: if_icmpeq -> 295
    //   289: iload #6
    //   291: iconst_1
    //   292: iadd
    //   293: istore #7
    //   295: iload #7
    //   297: istore #6
    //   299: iload #13
    //   301: iload #14
    //   303: if_icmpeq -> 312
    //   306: iload #7
    //   308: iconst_1
    //   309: iadd
    //   310: istore #6
    //   312: iload #6
    //   314: ifle -> 1200
    //   317: aload_0
    //   318: getfield mResizeClip : Z
    //   321: ifne -> 572
    //   324: iload #6
    //   326: anewarray android/animation/PropertyValuesHolder
    //   329: astore_1
    //   330: iload #19
    //   332: iload #20
    //   334: if_icmpeq -> 344
    //   337: aload #21
    //   339: iload #19
    //   341: invokevirtual setLeft : (I)V
    //   344: iload #17
    //   346: iload #18
    //   348: if_icmpeq -> 358
    //   351: aload #21
    //   353: iload #17
    //   355: invokevirtual setTop : (I)V
    //   358: iload #15
    //   360: iload #16
    //   362: if_icmpeq -> 372
    //   365: aload #21
    //   367: iload #15
    //   369: invokevirtual setRight : (I)V
    //   372: iload #13
    //   374: iload #14
    //   376: if_icmpeq -> 386
    //   379: aload #21
    //   381: iload #13
    //   383: invokevirtual setBottom : (I)V
    //   386: iload #19
    //   388: iload #20
    //   390: if_icmpeq -> 1214
    //   393: iconst_1
    //   394: istore #6
    //   396: aload_1
    //   397: iconst_0
    //   398: ldc 'left'
    //   400: iconst_2
    //   401: newarray int
    //   403: dup
    //   404: iconst_0
    //   405: iload #19
    //   407: iastore
    //   408: dup
    //   409: iconst_1
    //   410: iload #20
    //   412: iastore
    //   413: invokestatic ofInt : (Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    //   416: aastore
    //   417: iload #17
    //   419: iload #18
    //   421: if_icmpeq -> 1211
    //   424: iload #6
    //   426: iconst_1
    //   427: iadd
    //   428: istore #7
    //   430: aload_1
    //   431: iload #6
    //   433: ldc 'top'
    //   435: iconst_2
    //   436: newarray int
    //   438: dup
    //   439: iconst_0
    //   440: iload #17
    //   442: iastore
    //   443: dup
    //   444: iconst_1
    //   445: iload #18
    //   447: iastore
    //   448: invokestatic ofInt : (Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    //   451: aastore
    //   452: iload #7
    //   454: istore #6
    //   456: iload #15
    //   458: iload #16
    //   460: if_icmpeq -> 1208
    //   463: iload #6
    //   465: iconst_1
    //   466: iadd
    //   467: istore #7
    //   469: aload_1
    //   470: iload #6
    //   472: ldc 'right'
    //   474: iconst_2
    //   475: newarray int
    //   477: dup
    //   478: iconst_0
    //   479: iload #15
    //   481: iastore
    //   482: dup
    //   483: iconst_1
    //   484: iload #16
    //   486: iastore
    //   487: invokestatic ofInt : (Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    //   490: aastore
    //   491: iload #7
    //   493: istore #6
    //   495: iload #13
    //   497: iload #14
    //   499: if_icmpeq -> 524
    //   502: aload_1
    //   503: iload #6
    //   505: ldc 'bottom'
    //   507: iconst_2
    //   508: newarray int
    //   510: dup
    //   511: iconst_0
    //   512: iload #13
    //   514: iastore
    //   515: dup
    //   516: iconst_1
    //   517: iload #14
    //   519: iastore
    //   520: invokestatic ofInt : (Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    //   523: aastore
    //   524: aload #21
    //   526: aload_1
    //   527: invokestatic ofPropertyValuesHolder : (Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    //   530: astore_1
    //   531: aload #21
    //   533: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   536: instanceof android/view/ViewGroup
    //   539: ifeq -> 564
    //   542: aload #21
    //   544: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   547: checkcast android/view/ViewGroup
    //   550: astore_2
    //   551: aload_0
    //   552: new android/support/transition/ChangeBoundsPort$1
    //   555: dup
    //   556: aload_0
    //   557: invokespecial <init> : (Landroid/support/transition/ChangeBoundsPort;)V
    //   560: invokevirtual addListener : (Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    //   563: pop
    //   564: aload_1
    //   565: areturn
    //   566: iconst_0
    //   567: istore #6
    //   569: goto -> 91
    //   572: iload #9
    //   574: iload #11
    //   576: if_icmpeq -> 594
    //   579: aload #21
    //   581: iload #9
    //   583: iload #11
    //   585: invokestatic max : (II)I
    //   588: iload #20
    //   590: iadd
    //   591: invokevirtual setRight : (I)V
    //   594: iload #10
    //   596: iload #12
    //   598: if_icmpeq -> 616
    //   601: aload #21
    //   603: iload #10
    //   605: iload #12
    //   607: invokestatic max : (II)I
    //   610: iload #18
    //   612: iadd
    //   613: invokevirtual setBottom : (I)V
    //   616: iload #19
    //   618: iload #20
    //   620: if_icmpeq -> 634
    //   623: aload #21
    //   625: iload #19
    //   627: iload #20
    //   629: isub
    //   630: i2f
    //   631: invokevirtual setTranslationX : (F)V
    //   634: iload #17
    //   636: iload #18
    //   638: if_icmpeq -> 652
    //   641: aload #21
    //   643: iload #17
    //   645: iload #18
    //   647: isub
    //   648: i2f
    //   649: invokevirtual setTranslationY : (F)V
    //   652: iload #20
    //   654: iload #19
    //   656: isub
    //   657: i2f
    //   658: fstore #4
    //   660: iload #18
    //   662: iload #17
    //   664: isub
    //   665: i2f
    //   666: fstore #5
    //   668: iload #11
    //   670: iload #9
    //   672: isub
    //   673: istore #8
    //   675: iload #12
    //   677: iload #10
    //   679: isub
    //   680: istore #13
    //   682: iconst_0
    //   683: istore #7
    //   685: fload #4
    //   687: fconst_0
    //   688: fcmpl
    //   689: ifeq -> 695
    //   692: iconst_1
    //   693: istore #7
    //   695: iload #7
    //   697: istore #6
    //   699: fload #5
    //   701: fconst_0
    //   702: fcmpl
    //   703: ifeq -> 712
    //   706: iload #7
    //   708: iconst_1
    //   709: iadd
    //   710: istore #6
    //   712: iload #8
    //   714: ifne -> 726
    //   717: iload #6
    //   719: istore #7
    //   721: iload #13
    //   723: ifeq -> 732
    //   726: iload #6
    //   728: iconst_1
    //   729: iadd
    //   730: istore #7
    //   732: iload #7
    //   734: anewarray android/animation/PropertyValuesHolder
    //   737: astore_1
    //   738: fload #4
    //   740: fconst_0
    //   741: fcmpl
    //   742: ifeq -> 1202
    //   745: iconst_1
    //   746: istore #6
    //   748: aload_1
    //   749: iconst_0
    //   750: ldc 'translationX'
    //   752: iconst_2
    //   753: newarray float
    //   755: dup
    //   756: iconst_0
    //   757: aload #21
    //   759: invokevirtual getTranslationX : ()F
    //   762: fastore
    //   763: dup
    //   764: iconst_1
    //   765: fconst_0
    //   766: fastore
    //   767: invokestatic ofFloat : (Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    //   770: aastore
    //   771: fload #5
    //   773: fconst_0
    //   774: fcmpl
    //   775: ifeq -> 802
    //   778: aload_1
    //   779: iload #6
    //   781: ldc 'translationY'
    //   783: iconst_2
    //   784: newarray float
    //   786: dup
    //   787: iconst_0
    //   788: aload #21
    //   790: invokevirtual getTranslationY : ()F
    //   793: fastore
    //   794: dup
    //   795: iconst_1
    //   796: fconst_0
    //   797: fastore
    //   798: invokestatic ofFloat : (Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    //   801: aastore
    //   802: iload #8
    //   804: ifne -> 812
    //   807: iload #13
    //   809: ifeq -> 840
    //   812: new android/graphics/Rect
    //   815: dup
    //   816: iconst_0
    //   817: iconst_0
    //   818: iload #9
    //   820: iload #10
    //   822: invokespecial <init> : (IIII)V
    //   825: pop
    //   826: new android/graphics/Rect
    //   829: dup
    //   830: iconst_0
    //   831: iconst_0
    //   832: iload #11
    //   834: iload #12
    //   836: invokespecial <init> : (IIII)V
    //   839: pop
    //   840: aload #21
    //   842: aload_1
    //   843: invokestatic ofPropertyValuesHolder : (Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    //   846: astore_1
    //   847: aload #21
    //   849: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   852: instanceof android/view/ViewGroup
    //   855: ifeq -> 880
    //   858: aload #21
    //   860: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   863: checkcast android/view/ViewGroup
    //   866: astore_2
    //   867: aload_0
    //   868: new android/support/transition/ChangeBoundsPort$2
    //   871: dup
    //   872: aload_0
    //   873: invokespecial <init> : (Landroid/support/transition/ChangeBoundsPort;)V
    //   876: invokevirtual addListener : (Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    //   879: pop
    //   880: aload_1
    //   881: new android/support/transition/ChangeBoundsPort$3
    //   884: dup
    //   885: aload_0
    //   886: invokespecial <init> : (Landroid/support/transition/ChangeBoundsPort;)V
    //   889: invokevirtual addListener : (Landroid/animation/Animator$AnimatorListener;)V
    //   892: aload_1
    //   893: areturn
    //   894: aload_2
    //   895: getfield values : Ljava/util/Map;
    //   898: ldc 'android:changeBounds:windowX'
    //   900: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   905: checkcast java/lang/Integer
    //   908: invokevirtual intValue : ()I
    //   911: istore #6
    //   913: aload_2
    //   914: getfield values : Ljava/util/Map;
    //   917: ldc 'android:changeBounds:windowY'
    //   919: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   924: checkcast java/lang/Integer
    //   927: invokevirtual intValue : ()I
    //   930: istore #7
    //   932: aload_3
    //   933: getfield values : Ljava/util/Map;
    //   936: ldc 'android:changeBounds:windowX'
    //   938: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   943: checkcast java/lang/Integer
    //   946: invokevirtual intValue : ()I
    //   949: istore #8
    //   951: aload_3
    //   952: getfield values : Ljava/util/Map;
    //   955: ldc 'android:changeBounds:windowY'
    //   957: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   962: checkcast java/lang/Integer
    //   965: invokevirtual intValue : ()I
    //   968: istore #9
    //   970: iload #6
    //   972: iload #8
    //   974: if_icmpne -> 984
    //   977: iload #7
    //   979: iload #9
    //   981: if_icmpeq -> 1200
    //   984: aload_1
    //   985: aload_0
    //   986: getfield tempLocation : [I
    //   989: invokevirtual getLocationInWindow : ([I)V
    //   992: aload #21
    //   994: invokevirtual getWidth : ()I
    //   997: aload #21
    //   999: invokevirtual getHeight : ()I
    //   1002: getstatic android/graphics/Bitmap$Config.ARGB_8888 : Landroid/graphics/Bitmap$Config;
    //   1005: invokestatic createBitmap : (IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   1008: astore_2
    //   1009: aload #21
    //   1011: new android/graphics/Canvas
    //   1014: dup
    //   1015: aload_2
    //   1016: invokespecial <init> : (Landroid/graphics/Bitmap;)V
    //   1019: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   1022: new android/graphics/drawable/BitmapDrawable
    //   1025: dup
    //   1026: aload_2
    //   1027: invokespecial <init> : (Landroid/graphics/Bitmap;)V
    //   1030: astore_2
    //   1031: aload #21
    //   1033: iconst_4
    //   1034: invokevirtual setVisibility : (I)V
    //   1037: aload_1
    //   1038: invokestatic createFrom : (Landroid/view/View;)Landroid/support/transition/ViewOverlay;
    //   1041: aload_2
    //   1042: invokevirtual add : (Landroid/graphics/drawable/Drawable;)V
    //   1045: new android/graphics/Rect
    //   1048: dup
    //   1049: iload #6
    //   1051: aload_0
    //   1052: getfield tempLocation : [I
    //   1055: iconst_0
    //   1056: iaload
    //   1057: isub
    //   1058: iload #7
    //   1060: aload_0
    //   1061: getfield tempLocation : [I
    //   1064: iconst_1
    //   1065: iaload
    //   1066: isub
    //   1067: iload #6
    //   1069: aload_0
    //   1070: getfield tempLocation : [I
    //   1073: iconst_0
    //   1074: iaload
    //   1075: isub
    //   1076: aload #21
    //   1078: invokevirtual getWidth : ()I
    //   1081: iadd
    //   1082: iload #7
    //   1084: aload_0
    //   1085: getfield tempLocation : [I
    //   1088: iconst_1
    //   1089: iaload
    //   1090: isub
    //   1091: aload #21
    //   1093: invokevirtual getHeight : ()I
    //   1096: iadd
    //   1097: invokespecial <init> : (IIII)V
    //   1100: astore_3
    //   1101: new android/graphics/Rect
    //   1104: dup
    //   1105: iload #8
    //   1107: aload_0
    //   1108: getfield tempLocation : [I
    //   1111: iconst_0
    //   1112: iaload
    //   1113: isub
    //   1114: iload #9
    //   1116: aload_0
    //   1117: getfield tempLocation : [I
    //   1120: iconst_1
    //   1121: iaload
    //   1122: isub
    //   1123: iload #8
    //   1125: aload_0
    //   1126: getfield tempLocation : [I
    //   1129: iconst_0
    //   1130: iaload
    //   1131: isub
    //   1132: aload #21
    //   1134: invokevirtual getWidth : ()I
    //   1137: iadd
    //   1138: iload #9
    //   1140: aload_0
    //   1141: getfield tempLocation : [I
    //   1144: iconst_1
    //   1145: iaload
    //   1146: isub
    //   1147: aload #21
    //   1149: invokevirtual getHeight : ()I
    //   1152: iadd
    //   1153: invokespecial <init> : (IIII)V
    //   1156: astore #22
    //   1158: aload_2
    //   1159: ldc_w 'bounds'
    //   1162: getstatic android/support/transition/ChangeBoundsPort.sRectEvaluator : Landroid/support/transition/RectEvaluator;
    //   1165: iconst_2
    //   1166: anewarray java/lang/Object
    //   1169: dup
    //   1170: iconst_0
    //   1171: aload_3
    //   1172: aastore
    //   1173: dup
    //   1174: iconst_1
    //   1175: aload #22
    //   1177: aastore
    //   1178: invokestatic ofObject : (Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    //   1181: astore_3
    //   1182: aload_3
    //   1183: new android/support/transition/ChangeBoundsPort$4
    //   1186: dup
    //   1187: aload_0
    //   1188: aload_1
    //   1189: aload_2
    //   1190: aload #21
    //   1192: invokespecial <init> : (Landroid/support/transition/ChangeBoundsPort;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    //   1195: invokevirtual addListener : (Landroid/animation/Animator$AnimatorListener;)V
    //   1198: aload_3
    //   1199: areturn
    //   1200: aconst_null
    //   1201: areturn
    //   1202: iconst_0
    //   1203: istore #6
    //   1205: goto -> 771
    //   1208: goto -> 495
    //   1211: goto -> 456
    //   1214: iconst_0
    //   1215: istore #6
    //   1217: goto -> 417
  }
  
  public String[] getTransitionProperties() {
    return sTransitionProperties;
  }
  
  public void setReparent(boolean paramBoolean) {
    this.mReparent = paramBoolean;
  }
  
  public void setResizeClip(boolean paramBoolean) {
    this.mResizeClip = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\ChangeBoundsPort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */
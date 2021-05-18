.class public Lmgb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/SeekBar;IJ)V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lmgb;->a(Landroid/widget/SeekBar;ILandroid/animation/Animator$AnimatorListener;J)V

    .line 61
    return-void
.end method

.method public static a(Landroid/widget/SeekBar;ILandroid/animation/Animator$AnimatorListener;J)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "progress"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 65
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 66
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 68
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 69
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 72
    return-void

    .line 65
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 11

    .prologue
    const/high16 v6, -0x3b860000    # -1000.0f

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 75
    const/16 v0, 0x258

    .line 76
    const/16 v1, 0x1f4

    .line 78
    new-array v2, v10, [F

    .line 79
    new-array v3, v10, [F

    .line 80
    if-eqz p2, :cond_0

    .line 81
    aput v6, v2, v8

    .line 82
    aput v5, v2, v9

    .line 84
    aput v5, v3, v8

    .line 85
    const/high16 v4, 0x447a0000    # 1000.0f

    aput v4, v3, v9

    .line 94
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 95
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 96
    const/16 v6, 0x12c

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 99
    const/16 v6, 0x12c

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 101
    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v5, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 102
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 104
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 106
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v10, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 111
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 113
    new-array v0, v10, [Landroid/animation/Animator;

    aput-object v2, v0, v8

    aput-object v3, v0, v9

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    new-instance v0, Lmgc;

    invoke-direct {v0, p1, p0}, Lmgc;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 137
    return-void

    .line 87
    :cond_0
    const/high16 v4, 0x447a0000    # 1000.0f

    aput v4, v2, v8

    .line 88
    aput v5, v2, v9

    .line 90
    aput v5, v3, v8

    .line 91
    aput v6, v3, v9

    goto/16 :goto_0

    .line 95
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

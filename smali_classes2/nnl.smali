.class public Lnnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method private constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lnnl;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lme/relex/circleindicator/CircleIndicator;Lnnj;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lnnl;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 299
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.class final Lcep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 149
    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    return v0
.end method

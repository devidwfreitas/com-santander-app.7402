.class final Lcek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 596
    .line 598
    sub-float v0, p1, v3

    .line 599
    mul-float v1, v0, v0

    const v2, 0x402ce6b0

    mul-float/2addr v0, v2

    const v2, 0x3fd9cd60

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

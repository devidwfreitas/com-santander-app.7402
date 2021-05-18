.class final Lcej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    .line 578
    .line 580
    mul-float v0, p1, p1

    const v1, 0x402ce6b0

    mul-float/2addr v1, p1

    const v2, 0x3fd9cd60

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

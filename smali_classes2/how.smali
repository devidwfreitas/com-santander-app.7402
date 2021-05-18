.class public Lhow;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 15
    iput p1, p0, Lhow;->a:F

    .line 16
    iput p2, p0, Lhow;->b:F

    .line 17
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lhow;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lhow;->b:F

    return v0
.end method

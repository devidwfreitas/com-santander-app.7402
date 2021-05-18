.class public Lbgc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lbgc;->a:F

    .line 6
    iput p1, p0, Lbgc;->a:F

    .line 7
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lbgc;->a:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lbgc;->a:F

    .line 17
    return-void
.end method

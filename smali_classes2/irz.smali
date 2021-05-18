.class public Lirz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lirz;->c:I

    .line 21
    iput p2, p0, Lirz;->b:I

    .line 22
    iput p3, p0, Lirz;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lirz;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lirz;->a:I

    .line 31
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lirz;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lirz;->b:I

    .line 39
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lirz;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lirz;->c:I

    .line 47
    return-void
.end method

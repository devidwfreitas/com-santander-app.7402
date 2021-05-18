.class public Lhnk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private c:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhxl;)V
    .locals 7

    .prologue
    const v6, 0x7f09090f

    const v5, 0x7f0e0110

    const v4, 0x7f0203b1

    const v3, 0x7f0e0019

    const v2, 0x7f0203af

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    iput v6, p0, Lhnk;->a:I

    .line 32
    iput v5, p0, Lhnk;->b:I

    .line 33
    iput v4, p0, Lhnk;->c:I

    .line 63
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 35
    const v0, 0x7f090910

    iput v0, p0, Lhnk;->a:I

    .line 36
    iput v3, p0, Lhnk;->b:I

    .line 37
    iput v2, p0, Lhnk;->c:I

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 39
    invoke-interface {p1}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090918

    :goto_1
    iput v0, p0, Lhnk;->a:I

    .line 40
    iput v3, p0, Lhnk;->b:I

    .line 41
    iput v2, p0, Lhnk;->c:I

    goto :goto_0

    .line 39
    :cond_2
    const v0, 0x7f090913

    goto :goto_1

    .line 42
    :cond_3
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 43
    invoke-interface {p1}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f090917

    :goto_2
    iput v0, p0, Lhnk;->a:I

    .line 44
    const v0, 0x7f0e010c

    iput v0, p0, Lhnk;->b:I

    .line 45
    const v0, 0x7f0203ae

    iput v0, p0, Lhnk;->c:I

    goto :goto_0

    .line 43
    :cond_4
    const v0, 0x7f090912

    goto :goto_2

    .line 46
    :cond_5
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 47
    const v0, 0x7f090911

    iput v0, p0, Lhnk;->a:I

    .line 48
    iput v3, p0, Lhnk;->b:I

    .line 49
    iput v2, p0, Lhnk;->c:I

    goto :goto_0

    .line 50
    :cond_6
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 51
    const v0, 0x7f090916

    iput v0, p0, Lhnk;->a:I

    .line 52
    iput v5, p0, Lhnk;->b:I

    .line 53
    iput v4, p0, Lhnk;->c:I

    goto :goto_0

    .line 54
    :cond_7
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 55
    invoke-interface {p1}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f090919

    :goto_3
    iput v0, p0, Lhnk;->a:I

    .line 56
    iput v3, p0, Lhnk;->b:I

    .line 57
    iput v2, p0, Lhnk;->c:I

    goto/16 :goto_0

    .line 55
    :cond_8
    const v0, 0x7f090914

    goto :goto_3

    .line 59
    :cond_9
    iput v6, p0, Lhnk;->a:I

    .line 60
    iput v5, p0, Lhnk;->b:I

    .line 61
    iput v4, p0, Lhnk;->c:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 67
    iget v0, p0, Lhnk;->a:I

    return v0
.end method

.method public a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lhnk;->b:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lhnk;->b:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 81
    iget v0, p0, Lhnk;->c:I

    return v0
.end method

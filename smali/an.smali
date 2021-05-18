.class public Lan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lan;->a:I

    .line 45
    iput v0, p0, Lan;->b:I

    .line 50
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lan;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lan;->b:I

    .line 59
    return-void
.end method

.method a(Lak;[B)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Lak;->o()I

    move-result v0

    iput v0, p0, Lan;->b:I

    .line 72
    invoke-virtual {p1}, Lak;->O()I

    move-result v0

    iput v0, p0, Lan;->a:I

    .line 73
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lan;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lan;->a:I

    .line 67
    return-void
.end method

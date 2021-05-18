.class public Lmvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvl;


# instance fields
.field private a:Lmuq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lmsc;

.field private c:I


# direct methods
.method public constructor <init>(Lmuq;)V
    .locals 1
    .param p1    # Lmuq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmvm;->a:Lmuq;

    .line 35
    invoke-static {}, Lmse;->l()Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmvm;->b:Lmsc;

    .line 36
    return-void
.end method

.method static synthetic a(Lmvm;)Lmuq;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmvm;->a:Lmuq;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lmvm;->a:Lmuq;

    invoke-interface {v0}, Lmuq;->d()V

    .line 181
    iget-object v0, p0, Lmvm;->a:Lmuq;

    invoke-interface {v0, p1}, Lmuq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lmvm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lmvm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lmvm;->a:Lmuq;

    const v1, 0x7f090b5e

    invoke-interface {v0, v1}, Lmuq;->b(I)V

    .line 69
    iget-object v0, p0, Lmvm;->b:Lmsc;

    new-instance v1, Lmvn;

    invoke-direct {v1, p0}, Lmvn;-><init>(Lmvm;)V

    invoke-interface {v0, v1}, Lmsc;->a(Lmsk;)V

    goto :goto_0
.end method

.method static synthetic b(Lmvm;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmvm;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lmvm;->a:Lmuq;

    const v1, 0x7f090b53

    invoke-interface {v0, v1}, Lmuq;->b(I)V

    .line 110
    iget-object v0, p0, Lmvm;->b:Lmsc;

    new-instance v1, Lmvp;

    invoke-direct {v1, p0}, Lmvp;-><init>(Lmvm;)V

    invoke-interface {v0, v1}, Lmsc;->b(Lmsk;)V

    goto :goto_0
.end method

.method static synthetic c(Lmvm;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmvm;->c()V

    return-void
.end method

.method static synthetic d(Lmvm;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lmvm;->c:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lmvm;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lmvm;->a:Lmuq;

    const v1, 0x7f090b53

    invoke-interface {v0, v1}, Lmuq;->b(I)V

    .line 152
    :goto_1
    iget-object v0, p0, Lmvm;->b:Lmsc;

    new-instance v1, Lmvr;

    invoke-direct {v1, p0}, Lmvr;-><init>(Lmvm;)V

    invoke-interface {v0, v1}, Lmsc;->a(Lmsj;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lmvm;->a:Lmuq;

    const v1, 0x7f090b5d

    invoke-interface {v0, v1}, Lmuq;->b(I)V

    goto :goto_1
.end method

.method private e()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lmvm;->a:Lmuq;

    const-string v1, "Op\u00e7\u00f5as inv\u00e1lida"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmuq;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic e(Lmvm;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmvm;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lmvm;->a:Lmuq;

    .line 63
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lmvm;->a:Lmuq;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "EXTRA_TRANSFER_STEP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 46
    iput v0, p0, Lmvm;->c:I

    .line 47
    invoke-direct {p0}, Lmvm;->b()V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 49
    iput v0, p0, Lmvm;->c:I

    .line 50
    invoke-direct {p0}, Lmvm;->c()V

    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 52
    iget-object v0, p0, Lmvm;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->a()Lmrp;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lmwm;->a(Lmrp;)V

    .line 54
    invoke-direct {p0}, Lmvm;->d()V

    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0}, Lmvm;->e()V

    goto :goto_0
.end method

.class abstract Lhqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqi;


# instance fields
.field private a:I

.field protected b:Lmip;

.field protected c:Lhxo;

.field private d:I

.field private e:I

.field private f:Lipi;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhqk;->b:Lmip;

    .line 30
    iget-object v0, p0, Lhqk;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    iput-object v0, p0, Lhqk;->c:Lhxo;

    .line 31
    iget-object v0, p0, Lhqk;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    iput-object v0, p0, Lhqk;->f:Lipi;

    .line 32
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lhqk;->f:Lipi;

    const-string v1, "00000071"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(ILhqj;)V
    .locals 1
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 91
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 92
    invoke-interface {p2}, Lhqj;->a()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 94
    invoke-interface {p2}, Lhqj;->b()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {p2}, Lhqj;->c()V

    goto :goto_0
.end method

.method public a(Lhqj;)V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lhqk;->d:I

    invoke-virtual {p0, v0, p1}, Lhqk;->a(ILhqj;)V

    .line 103
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 81
    iput p1, p0, Lhqk;->e:I

    .line 82
    return-void
.end method

.method public b(Lhqj;)V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lhqk;->a:I

    invoke-virtual {p0, v0, p1}, Lhqk;->a(ILhqj;)V

    .line 87
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 76
    iput p1, p0, Lhqk;->d:I

    .line 77
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 70
    iput p1, p0, Lhqk;->a:I

    .line 71
    invoke-virtual {p0, p1}, Lhqk;->c(I)V

    .line 72
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 114
    iget v0, p0, Lhqk;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lhqk;->d:I

    if-eq v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lhqk;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lhqk;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 107
    iget v0, p0, Lhqk;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lhqk;->d:I

    if-eq v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lhqk;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhqk;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lhqk;->e:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lhqk;->d:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lhqk;->a:I

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lhqk;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhqk;->c:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lhqk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhqk;->c:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhqk;->c:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

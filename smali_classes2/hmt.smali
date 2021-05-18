.class public Lhmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhln;
.implements Lhlo;
.implements Lhms;


# instance fields
.field private a:Lhmn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lhlm;

.field private c:Lhxl;

.field private d:Z

.field private e:Lhya;


# direct methods
.method public constructor <init>(Lhmn;)V
    .locals 1
    .param p1    # Lhmn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lhmt;->a:Lhmn;

    .line 41
    new-instance v0, Lhlp;

    invoke-direct {v0}, Lhlp;-><init>()V

    iput-object v0, p0, Lhmt;->b:Lhlm;

    .line 42
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    iput-object v0, p0, Lhmt;->e:Lhya;

    .line 43
    return-void
.end method

.method static synthetic a(Lhmt;)Lhmn;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lhmt;->a:Lhmn;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    iget-object v1, p0, Lhmt;->c:Lhxl;

    invoke-interface {v0, v1}, Lhmn;->c(Lhxl;)V

    .line 127
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->a()V

    goto :goto_0
.end method

.method public a(Lhxl;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0, p1}, Lhmn;->d(Lhxl;)V

    .line 96
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    invoke-static {v0}, Lhnj;->a(I)V

    .line 97
    invoke-static {p1}, Lhnj;->a(Lhxl;)V

    .line 98
    invoke-interface {p1}, Lhxl;->y()Z

    move-result v0

    invoke-static {v0}, Lhnj;->a(Z)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->f()V

    .line 71
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0, p1}, Lhmn;->a(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->d()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmt;->d:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    iget-object v1, p0, Lhmt;->c:Lhxl;

    invoke-interface {v0, v1}, Lhmn;->c(Lhxl;)V

    .line 135
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->a()V

    goto :goto_0
.end method

.method public b(Lhxl;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lhnj;->e()V

    .line 106
    iput-object p1, p0, Lhmt;->c:Lhxl;

    .line 107
    invoke-interface {p1}, Lhxl;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0, p1}, Lhmn;->e(Lhxl;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0, p1}, Lhmn;->a(Lhxl;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->b()V

    .line 81
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->e()V

    .line 82
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->d()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmt;->d:Z

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->c()V

    .line 50
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->f()V

    .line 51
    iget-object v0, p0, Lhmt;->b:Lhlm;

    invoke-interface {v0, p0}, Lhlm;->a(Lhlo;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lhmt;->d:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->c()V

    .line 60
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->b()V

    .line 61
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->f()V

    .line 62
    iget-object v0, p0, Lhmt;->b:Lhlm;

    invoke-interface {v0, p0}, Lhlm;->a(Lhlo;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lhmt;->a:Lhmn;

    .line 89
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->c()V

    .line 143
    iget-object v0, p0, Lhmt;->e:Lhya;

    const/4 v1, 0x3

    new-instance v2, Lhmu;

    invoke-direct {v2, p0}, Lhmu;-><init>(Lhmt;)V

    invoke-interface {v0, v1, v2}, Lhya;->a(ILhxy;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lhmt;->a:Lhmn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhmt;->c:Lhxl;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lhmt;->a:Lhmn;

    invoke-interface {v0}, Lhmn;->c()V

    .line 119
    iget-object v0, p0, Lhmt;->b:Lhlm;

    iget-object v1, p0, Lhmt;->c:Lhxl;

    invoke-interface {v0, v1, p0}, Lhlm;->a(Lhxl;Lhln;)V

    goto :goto_0
.end method

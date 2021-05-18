.class public Lhxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lfvb;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhxw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhxp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lhxk;

.field private f:Lhxk;

.field private g:Lhxq;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lhxo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfvb;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lhxo;->b:Lfvb;

    .line 41
    return-void
.end method

.method public a(Lhxk;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lhxo;->e:Lhxk;

    .line 65
    return-void
.end method

.method public a(Lhxq;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhxo;->g:Lhxq;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lhxo;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhxw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lhxo;->c:Ljava/util/List;

    .line 49
    return-void
.end method

.method public b()Lfvb;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lhxo;->b:Lfvb;

    return-object v0
.end method

.method public b(Lhxk;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lhxo;->f:Lhxk;

    .line 73
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lhxo;->h:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhxp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lhxo;->d:Ljava/util/List;

    .line 57
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhxw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lhxo;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lhxo;->j:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhxp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lhxo;->d:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lhxo;->i:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public e()Lhxk;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lhxo;->e:Lhxk;

    return-object v0
.end method

.method public f()Lhxk;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lhxo;->f:Lhxk;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lhxo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lhxq;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lhxo;->g:Lhxq;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "HABILITADO_PARA_ACORDO"

    invoke-virtual {p0, v0}, Lhxo;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhxo;->b(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lhxo;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxo;->h:Ljava/lang/String;

    const-string v1, "HABILITADO_PARA_ACORDO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lhxo;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxo;->i:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lhxo;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxo;->j:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

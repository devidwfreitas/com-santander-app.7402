.class public Lsy;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "colour"
    .end annotation
.end field

.field private e:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "participationPercent"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subproducts"
    .end annotation
.end field

.field private g:Lsw;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "balance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Labv;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsy;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lsy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lsy;->e:Ljava/lang/Double;

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lsy;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lsy;->f:Ljava/util/List;

    .line 88
    return-void
.end method

.method public a(Lsw;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lsy;->g:Lsw;

    .line 96
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lsy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lsy;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lsy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lsy;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lsy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lsy;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lsy;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lsy;->g:Lsw;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lsy;->g:Lsw;

    invoke-virtual {v0}, Lsw;->g()V

    .line 111
    :cond_0
    iget-object v0, p0, Lsy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    .line 112
    invoke-virtual {v0}, Lto;->g()V

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lsy;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Lsw;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lsy;->g:Lsw;

    return-object v0
.end method

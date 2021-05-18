.class public Lgad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lfvu;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lgad;->d:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgad;->e:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lgad;->f:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgad;->g:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lgad;->h:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lgad;->i:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgad;->j:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lgad;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lfvu;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lgad;->a:Lfvu;

    .line 43
    return-void
.end method

.method public a(Lgae;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lgad;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lgad;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Lfvu;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgad;->a:Lfvu;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgad;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgad;->i:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lgad;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgad;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lgad;->e:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lgad;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lgad;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lgad;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lgad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lgad;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgad;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lgev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgex;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lgfg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgev;->h:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgev;->h:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lgev;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lgev;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgev;->h:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lgev;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lgev;->b:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lgev;->e:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgev;->h:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lgev;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lgev;->b:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lgev;->e:Z

    .line 36
    iput-boolean p4, p0, Lgev;->f:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgev;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lgfg;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgev;->i:Lgfg;

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lgev;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lgev;->h:Ljava/util/List;

    .line 89
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lgev;->e:Z

    .line 81
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgev;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lgev;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lgev;->f:Z

    .line 97
    return-void
.end method

.method public c()Lgfg;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgev;->i:Lgfg;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lgev;->c:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lgev;->g:Z

    .line 105
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lgev;->d:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lgev;->e:Z

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lgev;->h:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lgev;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lgev;->g:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgev;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgev;->d:Ljava/lang/String;

    return-object v0
.end method

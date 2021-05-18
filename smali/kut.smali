.class public Lkut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkus;
    .annotation runtime Leks;
        a = "document"
    .end annotation
.end field

.field private b:Lkuu;

.field private c:Lkuu;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lkut;->d:Z

    .line 43
    iput-boolean v0, p0, Lkut;->e:Z

    .line 44
    iput-boolean v0, p0, Lkut;->f:Z

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    .line 108
    invoke-virtual {v0}, Lkuw;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Lkut;

    invoke-direct {v3}, Lkut;-><init>()V

    .line 110
    invoke-virtual {v3, v0}, Lkut;->a(Lkuw;)V

    .line 111
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Lkus;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lkut;->a:Lkus;

    .line 83
    return-void
.end method

.method public a(Lkut;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Lkut;->f()Lkus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkut;->a(Lkus;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkut;->a(Lkut;Z)V

    .line 20
    return-void
.end method

.method public a(Lkut;Z)V
    .locals 1

    .prologue
    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p1}, Lkut;->f()Lkus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkut;->a(Lkus;)V

    .line 26
    :cond_0
    invoke-virtual {p1}, Lkut;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkut;->c(Z)V

    .line 27
    invoke-virtual {p1}, Lkut;->b()Lkuu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkut;->a(Lkuu;)V

    .line 28
    invoke-virtual {p1}, Lkut;->c()Lkuu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkut;->b(Lkuu;)V

    .line 29
    invoke-virtual {p1}, Lkut;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkut;->a(Z)V

    .line 30
    invoke-virtual {p1}, Lkut;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkut;->b(Z)V

    .line 31
    return-void
.end method

.method public a(Lkuu;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lkut;->b:Lkuu;

    .line 56
    return-void
.end method

.method public a(Lkuw;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lkut;->a(Lkus;)V

    .line 120
    invoke-virtual {p0, v1}, Lkut;->c(Z)V

    .line 121
    sget-object v0, Lkuu;->GONE:Lkuu;

    invoke-virtual {p0, v0}, Lkut;->a(Lkuu;)V

    .line 122
    sget-object v0, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {p0, v0}, Lkut;->b(Lkuu;)V

    .line 123
    invoke-virtual {p0, v1}, Lkut;->b(Z)V

    .line 124
    invoke-virtual {p0, v1}, Lkut;->a(Z)V

    .line 125
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lkut;->e:Z

    .line 75
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lkut;->d:Z

    return v0
.end method

.method public b()Lkuu;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lkut;->b:Lkuu;

    return-object v0
.end method

.method public b(Lkuu;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lkut;->c:Lkuu;

    .line 64
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lkut;->d:Z

    .line 79
    return-void
.end method

.method public c()Lkuu;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lkut;->c:Lkuu;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lkut;->f:Z

    .line 91
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lkut;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lkut;->f:Z

    return v0
.end method

.method public f()Lkus;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lkut;->a:Lkus;

    return-object v0
.end method

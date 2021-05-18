.class public Lftv;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lftv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lftv;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lftv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lftv;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lftv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lftv;->e:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lftv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lftv;->g:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lftv;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lftv;->h:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    instance-of v1, p1, Lftv;

    if-eqz v1, :cond_0

    .line 124
    check-cast p1, Lftv;

    .line 125
    iget-object v1, p0, Lftv;->h:Ljava/lang/String;

    iget-object v2, p1, Lftv;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lftv;->e:Ljava/lang/String;

    iget-object v2, p1, Lftv;->e:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lftv;->d:Ljava/lang/String;

    iget-object v2, p1, Lftv;->d:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lftv;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lftv;->i:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lftv;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lftv;->j:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lftv;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lftv;->k:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lftv;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lftv;->l:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lftv;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lftv;->m:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lftv;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lftv;->n:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lftv;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lftv;->o:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lftv;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lftv;->r:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lftv;->p:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lftv;->p:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lftv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lftv;->b:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lftv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lftv;->f:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lftv;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lftv;->q:Ljava/lang/String;

    .line 154
    return-void
.end method

.class public Lftw;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Z

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

.field private n:I


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
    .line 35
    iget-object v0, p0, Lftw;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    const-string v0, ""

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lftw;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lftw;->n:I

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lftw;->e:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lftw;->b:Z

    .line 119
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lftw;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lftw;->f:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lftw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lftw;->g:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lftw;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lftw;->h:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lftw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lftw;->i:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lftw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lftw;->j:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lftw;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lftw;->k:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lftw;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftw;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lftw;->d:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lftw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lftw;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lftw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lftw;->l:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lftw;->m:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lftw;->b:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lftw;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftw;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lftw;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lftw;->n:I

    return v0
.end method

.class public Lftl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Lftj;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lftj;

    invoke-direct {v0}, Lftj;-><init>()V

    iput-object v0, p0, Lftl;->b:Lftj;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lftj;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lftl;->b:Lftj;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lftl;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lftl;->k:Z

    .line 49
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lftl;->k:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lftl;->f:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lftl;->l:Z

    .line 57
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lftl;->l:Z

    return v0
.end method

.method public c()Lftj;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lftl;->b:Lftj;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lftl;->g:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lftl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lftl;->h:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lftl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lftl;->i:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lftl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lftl;->j:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lftl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lftl;->c:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lftl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lftl;->d:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lftl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lftl;->m:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lftl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lftl;->n:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lftl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lftl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lftl;->n:Ljava/lang/String;

    return-object v0
.end method

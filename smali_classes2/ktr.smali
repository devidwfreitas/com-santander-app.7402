.class public Lktr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lktr;->l:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public b(Z)Lktr;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lktr;

    invoke-direct {v0}, Lktr;-><init>()V

    .line 32
    invoke-virtual {p0}, Lktr;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktr;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lktr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktr;->d(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lktr;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktr;->e(Ljava/lang/String;)V

    .line 35
    iget-boolean v1, p0, Lktr;->d:Z

    invoke-virtual {v0, v1}, Lktr;->f(Z)V

    .line 36
    iget-boolean v1, p0, Lktr;->e:Z

    invoke-virtual {v0, v1}, Lktr;->e(Z)V

    .line 37
    invoke-virtual {v0, p1}, Lktr;->d(Z)V

    .line 38
    invoke-virtual {p0}, Lktr;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lktr;->e(I)V

    .line 39
    invoke-virtual {p0}, Lktr;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lktr;->c(I)V

    .line 40
    invoke-virtual {p0}, Lktr;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lktr;->c(I)V

    .line 41
    invoke-virtual {p0}, Lktr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktr;->f(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lktr;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktr;->a(Ljava/lang/Integer;)V

    .line 43
    iget-object v1, p0, Lktr;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktr;->b(Ljava/lang/String;)V

    .line 44
    iget-boolean v1, p0, Lktr;->g:Z

    invoke-virtual {v0, v1}, Lktr;->c(Z)V

    .line 45
    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lktr;->l:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lktr;->m:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lktr;->i:I

    .line 91
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lktr;->a:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lktr;->g:Z

    .line 55
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lktr;->j:I

    .line 99
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lktr;->b:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lktr;->f:Z

    .line 83
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lktr;->g:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lktr;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lktr;->h:I

    .line 147
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lktr;->c:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lktr;->e:Z

    .line 107
    return-void
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lktr;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lktr;->k:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lktr;->d:Z

    .line 139
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lktr;->f:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lktr;->i:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lktr;->j:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lktr;->e:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lktr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lktr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lktr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lktr;->d:Z

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lktr;->h:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lktr;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f020437

    return v0
.end method

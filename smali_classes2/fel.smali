.class public Lfel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lfem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lfel;->a:I

    .line 10
    iput-boolean v1, p0, Lfel;->b:Z

    .line 11
    iput-boolean v1, p0, Lfel;->c:Z

    .line 12
    iput-boolean v1, p0, Lfel;->d:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfel;->e:Z

    .line 14
    iput-boolean v1, p0, Lfel;->f:Z

    .line 15
    iput-boolean v1, p0, Lfel;->g:Z

    .line 16
    iput-boolean v1, p0, Lfel;->h:Z

    .line 17
    sget-object v0, Lfem;->AUTO:Lfem;

    iput-object v0, p0, Lfel;->i:Lfem;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lfel;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lfel;->a:I

    .line 38
    return-void
.end method

.method public a(Lfem;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lfel;->i:Lfem;

    .line 149
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lfel;->b:Z

    .line 53
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lfel;->c:Z

    .line 66
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lfel;->b:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lfel;->g:Z

    .line 79
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lfel;->c:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lfel;->d:Z

    .line 94
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lfel;->g:Z

    return v0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 106
    iput-boolean p1, p0, Lfel;->e:Z

    .line 108
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lfel;->f:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lfem;->CONTINUOUS:Lfem;

    iput-object v0, p0, Lfel;->i:Lfem;

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    .line 111
    sget-object v0, Lfem;->AUTO:Lfem;

    iput-object v0, p0, Lfel;->i:Lfem;

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lfel;->i:Lfem;

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lfel;->d:Z

    return v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 127
    iput-boolean p1, p0, Lfel;->f:Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Lfem;->CONTINUOUS:Lfem;

    iput-object v0, p0, Lfel;->i:Lfem;

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-boolean v0, p0, Lfel;->e:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lfem;->AUTO:Lfem;

    iput-object v0, p0, Lfel;->i:Lfem;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lfel;->i:Lfem;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lfel;->e:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lfel;->h:Z

    .line 162
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lfel;->f:Z

    return v0
.end method

.method public h()Lfem;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lfel;->i:Lfem;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lfel;->h:Z

    return v0
.end method

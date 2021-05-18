.class public Lmvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrv;
.implements Lmrw;
.implements Lmvh;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lmuk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lmsc;

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lmuk;)V
    .locals 1
    .param p1    # Lmuk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmvi;->c:Lmuk;

    .line 40
    invoke-static {}, Lmse;->l()Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmvi;->d:Lmsc;

    .line 41
    return-void
.end method

.method static synthetic a(Lmvi;)Lmuk;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmvi;->c:Lmuk;

    return-object v0
.end method

.method static synthetic b(Lmvi;)Lmsc;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmvi;->d:Lmsc;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->p()V

    .line 69
    iget-object v0, p0, Lmvi;->d:Lmsc;

    new-instance v1, Lmvj;

    invoke-direct {v1, p0}, Lmvj;-><init>(Lmvi;)V

    invoke-interface {v0, p1, v1}, Lmsc;->a(Ljava/lang/String;Lmrx;)V

    goto :goto_0
.end method

.method static synthetic c(Lmvi;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lmvi;->e:Z

    return v0
.end method

.method static synthetic d(Lmvi;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmvi;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0, p0}, Lmsc;->a(Lmrv;)V

    .line 119
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->h()V

    .line 120
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->f()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->g()V

    .line 136
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "EXTRA_USE_FINGERPRINT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmvi;->e:Z

    .line 48
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->c()V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmvi;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->d()V

    .line 173
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lmuk;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmvi;->f:Z

    .line 128
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->c()V

    .line 129
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0, p1, p0}, Lmsc;->a(Ljava/lang/String;Lmrw;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lmvi;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lmvi;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->c()V

    .line 147
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0, p2, p0}, Lmsc;->a(Ljava/lang/String;Lmrw;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->i()V

    .line 156
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->j()V

    goto :goto_0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->d()V

    .line 181
    iget-boolean v0, p0, Lmvi;->f:Z

    if-eqz v0, :cond_1

    .line 182
    iput-boolean v2, p0, Lmvi;->f:Z

    .line 183
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->i()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lmuk;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->d()V

    .line 164
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->i()V

    .line 165
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->k()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->i()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmvi;->c:Lmuk;

    .line 56
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->h()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lmvi;->d:Lmsc;

    invoke-interface {v0}, Lmsc;->i()V

    .line 194
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->g()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lmvi;->g:I

    .line 202
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->g()V

    .line 203
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->o()V

    .line 204
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->l()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmvi;->c:Lmuk;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lmvi;->g:I

    .line 212
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->n()V

    .line 213
    iget-object v0, p0, Lmvi;->c:Lmuk;

    invoke-interface {v0}, Lmuk;->m()V

    goto :goto_0
.end method

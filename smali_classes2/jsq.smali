.class public Ljsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljsq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Ljsq;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ljsq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Ljsq;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljsq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ljsq;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljsq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ljsq;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljsq;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ljsq;->e:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljsq;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ljsq;->f:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljsq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Ljsq;->g:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljsq;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljsq;->h:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->h:Ljava/lang/String;

    .line 94
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->f:Ljava/lang/String;

    .line 95
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->b:Ljava/lang/String;

    .line 96
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->c:Ljava/lang/String;

    .line 97
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->g:Ljava/lang/String;

    .line 98
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->a:Ljava/lang/String;

    .line 99
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->e:Ljava/lang/String;

    .line 100
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    iget-object v1, p0, Ljsq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsq;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-class v1, Ljsq;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

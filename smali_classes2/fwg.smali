.class public Lfwg;
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

.field private k:Lftg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lfvu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lfwg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lftg;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lfwg;->k:Lftg;

    .line 204
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lfwg;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lfwg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lfwg;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lfwg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lfwg;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lfwg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lfwg;->e:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lfwg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lfwg;->f:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    instance-of v0, p1, Lfwg;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lfwg;

    .line 41
    iget-object v0, p0, Lfwg;->c:Ljava/lang/String;

    iget-object v1, p1, Lfwg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lfwg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lfwg;->g:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lfwg;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lfwg;->h:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lfwg;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lfwg;->i:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lfwg;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lfwg;->j:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public j()Lftg;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lfwg;->k:Lftg;

    return-object v0
.end method

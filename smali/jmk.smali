.class public Ljmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljmj;


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private b:Ljlr;

.field private c:Ljly;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljlj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljlj;

.field private f:Ljlq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljly;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Ljmk;->c:Ljly;

    .line 36
    new-instance v0, Ljlt;

    invoke-direct {v0, p1, p0}, Ljlt;-><init>(Landroid/content/Context;Ljmj;)V

    iput-object v0, p0, Ljmk;->b:Ljlr;

    .line 37
    return-void
.end method

.method static synthetic a(Ljmk;)Ljly;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljmk;->c:Ljly;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Ljmk;->c:Ljly;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljly;->a(Ljava/util/ArrayList;)V

    .line 177
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ljmk;->b:Ljlr;

    invoke-interface {v0, p1}, Ljlr;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljmk;->b:Ljlr;

    invoke-interface {v0, p1}, Ljlr;->b(Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 41
    iget-object v0, p0, Ljmk;->a:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljml;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Ljml;-><init>(Ljmk;JJ)V

    iput-object v0, p0, Ljmk;->a:Landroid/os/CountDownTimer;

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljmk;->c()V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Ljmk;->e(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Ljmk;->d()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Ljmk;->d()V

    goto :goto_0
.end method

.method public a(Ljli;)V
    .locals 8

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljli;->a()Ljlh;

    move-result-object v0

    invoke-virtual {v0}, Ljlh;->a()Ljlf;

    move-result-object v0

    invoke-virtual {v0}, Ljlf;->a()Ljlg;

    move-result-object v0

    invoke-virtual {v0}, Ljlg;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 118
    invoke-virtual {p1}, Ljli;->a()Ljlh;

    move-result-object v0

    invoke-virtual {v0}, Ljlh;->a()Ljlf;

    move-result-object v0

    invoke-virtual {v0}, Ljlf;->a()Ljlg;

    move-result-object v0

    invoke-virtual {v0}, Ljlg;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 119
    invoke-virtual {p1}, Ljli;->a()Ljlh;

    move-result-object v0

    invoke-virtual {v0}, Ljlh;->b()Ljava/lang/String;

    move-result-object v6

    .line 121
    iget-object v1, p0, Ljmk;->c:Ljly;

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Ljly;->a(DDLjava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public a(Ljlo;)V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljmk;->d:Ljava/util/ArrayList;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljlo;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljln;

    .line 132
    new-instance v2, Ljlj;

    invoke-direct {v2}, Ljlj;-><init>()V

    .line 134
    sget-object v3, Ljlk;->endereco:Ljlk;

    invoke-virtual {v2, v3}, Ljlj;->a(Ljlk;)V

    .line 135
    invoke-virtual {v0}, Ljln;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljlj;->c(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljln;->e()Ljlj;

    move-result-object v3

    invoke-virtual {v3}, Ljlj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljlj;->a(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljln;->e()Ljlj;

    move-result-object v0

    invoke-virtual {v0}, Ljlj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljlj;->b(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Ljmk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Ljmk;->c:Ljly;

    iget-object v1, p0, Ljmk;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljly;->a(Ljava/util/ArrayList;)V

    .line 146
    return-void
.end method

.method public a(Ljlq;)V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljmk;->d:Ljava/util/ArrayList;

    .line 153
    if-eqz p1, :cond_0

    .line 155
    iput-object p1, p0, Ljmk;->f:Ljlq;

    .line 156
    new-instance v0, Ljlj;

    invoke-direct {v0}, Ljlj;-><init>()V

    iput-object v0, p0, Ljmk;->e:Ljlj;

    .line 158
    iget-object v0, p0, Ljmk;->e:Ljlj;

    sget-object v1, Ljlk;->agencia:Ljlk;

    invoke-virtual {v0, v1}, Ljlj;->a(Ljlk;)V

    .line 159
    iget-object v0, p0, Ljmk;->e:Ljlj;

    invoke-virtual {p1}, Ljlq;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljlj;->a(I)V

    .line 160
    iget-object v0, p0, Ljmk;->e:Ljlj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljlq;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljlq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljlj;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Ljmk;->e:Ljlj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljlq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljlq;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljlq;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljlj;->b(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Ljmk;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Ljmk;->e:Ljlj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    iget-object v0, p0, Ljmk;->c:Ljly;

    iget-object v1, p0, Ljmk;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljly;->a(Ljava/util/ArrayList;)V

    .line 167
    return-void
.end method

.method public b()Ljlq;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ljmk;->f:Ljlq;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljmk;->b:Ljlr;

    invoke-interface {v0, p1}, Ljlr;->c(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public b(Ljlq;)V
    .locals 8

    .prologue
    .line 182
    invoke-virtual {p1}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 183
    invoke-virtual {p1}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 184
    invoke-virtual {p1}, Ljlq;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 186
    iget-object v1, p0, Ljmk;->c:Ljly;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Ljly;->a(DDLjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljmk;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ljmk;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 60
    iget-object v0, p0, Ljmk;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljmk;->d()V

    .line 172
    iget-object v0, p0, Ljmk;->c:Ljly;

    invoke-interface {v0, p1}, Ljly;->a(Ljava/lang/String;)V

    .line 173
    return-void
.end method

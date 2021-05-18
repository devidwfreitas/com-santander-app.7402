.class Lmry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmru;


# static fields
.field private static final a:Ljava/lang/String; = "LoginInteractorImpl"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Litn;

.field private d:Lieu;

.field private e:Liex;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lmry;->b:Landroid/app/Activity;

    .line 48
    new-instance v0, Litp;

    invoke-direct {v0, p1}, Litp;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmry;->c:Litn;

    .line 49
    new-instance v0, Lieu;

    invoke-direct {v0, p1}, Lieu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmry;->d:Lieu;

    .line 50
    return-void
.end method

.method static synthetic a(Lmry;)Litn;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmry;->c:Litn;

    return-object v0
.end method

.method static synthetic a(Lmry;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lmry;->g:Z

    return p1
.end method

.method static synthetic b(Lmry;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lmry;->f:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lmrw;)V
    .locals 2

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Informe a senha"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lmrw;->b(Ljava/lang/Exception;)V

    .line 175
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lmry;->c:Litn;

    new-instance v1, Lmsa;

    invoke-direct {v1, p0, p2}, Lmsa;-><init>(Lmry;Lmrw;)V

    invoke-interface {v0, v1, p1}, Litn;->a(Lgkw;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lmrx;)V
    .locals 6

    .prologue
    .line 116
    :try_start_0
    const-string v0, "[^0-9*]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lfnx;

    invoke-direct {v1}, Lfnx;-><init>()V

    .line 118
    invoke-virtual {v1, v0}, Lfnx;->a(Ljava/lang/String;)V

    .line 120
    new-instance v2, Lfnu;

    const-class v3, Lfnp;

    invoke-direct {v2, v3}, Lfnu;-><init>(Ljava/lang/Class;)V

    .line 121
    iget-object v3, p0, Lmry;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    new-instance v5, Lmrz;

    invoke-direct {v5, p0, v0, p2}, Lmrz;-><init>(Lmry;Ljava/lang/String;Lmrx;)V

    invoke-interface {v2, v3, v4, v1, v5}, Lfnv;->a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-interface {p2, v0}, Lmrx;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lmrv;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lmry;->e:Liex;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lmry;->e:Liex;

    new-instance v1, Lmsb;

    invoke-direct {v1, p0, p1}, Lmsb;-><init>(Lmry;Lmrv;)V

    invoke-interface {v0, v1}, Liex;->a(Liew;)V

    goto :goto_0
.end method

.method public a(Lmrx;)V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lmry;->g:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Lmrx;->a()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lmry;->d()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0, p1}, Lmry;->a(Ljava/lang/String;Lmrx;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lmry;->b()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lmry;->c:Litn;

    invoke-interface {v0}, Litn;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lmry;->b()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x4

    const/16 v2, 0xb

    const-string v3, "***.***"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lmry;->b()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "[^0-9*]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lmry;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lmry;->d:Lieu;

    invoke-virtual {v2}, Lieu;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmry;->d:Lieu;

    .line 92
    invoke-virtual {v2, v0}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 93
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    new-instance v2, Liey;

    iget-object v3, p0, Lmry;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Liey;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lmry;->e:Liex;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lmry;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lmry;->e:Liex;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lmry;->e:Liex;

    invoke-interface {v0}, Liex;->a()V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmry;->e:Liex;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lmry;->e:Liex;

    invoke-interface {v0}, Liex;->b()V

    goto :goto_0
.end method

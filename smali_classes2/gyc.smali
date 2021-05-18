.class public abstract Lgyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Landroid/content/SharedPreferences;

.field private c:Lmip;

.field private d:Ljava/lang/String;

.field private e:Lgwq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgyc;->a:Landroid/content/Context;

    .line 30
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgyc;->c:Lmip;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgyc;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lgyc;->k()Lgta;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lgyc;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->w()Lgwx;

    move-result-object v1

    invoke-virtual {v1}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lgyc;->k()Lgta;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lgyc;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lgyc;->g()Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method private k()Lgta;
    .locals 5

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lgyc;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 95
    invoke-virtual {v0}, Lgta;->e()Lgwq;

    move-result-object v3

    iget-object v4, p0, Lgyc;->e:Lgwq;

    if-ne v3, v4, :cond_0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lgyc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lgyc;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public a(Lgwq;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lgyc;->e:Lgwq;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iput-object p2, p0, Lgyc;->d:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lgyc;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lgyc;->b:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lgyc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lgyc;->d:Ljava/lang/String;

    invoke-direct {p0}, Lgyc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lgyc;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lgyc;->i()V

    .line 63
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lgyc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lgyc;->j()V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lgyc;->c()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lgyc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lgyc;->i()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lgyc;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lgyc;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lgyc;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lgyc;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgyc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lgyc;->c:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0
.end method

.method public abstract g()Lgta;
.end method

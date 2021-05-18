.class public Lgxb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgxb;


# instance fields
.field private b:Lmiq;

.field private final c:Landroid/content/Context;

.field private d:Lgwq;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgxb;->c:Landroid/content/Context;

    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgxb;->b:Lmiq;

    .line 38
    sget-object v0, Lgwq;->formalizacao:Lgwq;

    invoke-virtual {p0, v0}, Lgxb;->a(Lgwq;)V

    .line 39
    return-void
.end method

.method public static a()Lgxb;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lgxb;->a:Lgxb;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lgxb;

    invoke-direct {v0}, Lgxb;-><init>()V

    sput-object v0, Lgxb;->a:Lgxb;

    .line 31
    :cond_0
    sget-object v0, Lgxb;->a:Lgxb;

    return-object v0
.end method


# virtual methods
.method public a(Lgwq;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgxb;->d:Lgwq;

    .line 63
    return-void
.end method

.method public b()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 43
    iget-object v1, p0, Lgxb;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lgwq;->formalizacao:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 45
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 46
    const v1, 0x7f0204a5

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 47
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 48
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 49
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgta;->a(Z)V

    .line 54
    return-object v0
.end method

.method public c()Lgwq;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgxb;->d:Lgwq;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgxb;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->z()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lgxb;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lgxb;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 72
    invoke-virtual {v0}, Lgta;->e()Lgwq;

    move-result-object v2

    iget-object v3, p0, Lgxb;->d:Lgwq;

    if-ne v2, v3, :cond_0

    .line 73
    iget-object v2, p0, Lgxb;->b:Lmiq;

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->w()Lgwx;

    move-result-object v2

    invoke-virtual {v2}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

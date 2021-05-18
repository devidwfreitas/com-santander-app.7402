.class public Lmzk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lffm;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmzk;->a:Landroid/app/Activity;

    .line 28
    invoke-static {p1}, Lffm;->a(Landroid/app/Activity;)Lffm;

    move-result-object v0

    iput-object v0, p0, Lmzk;->b:Lffm;

    .line 29
    iget-object v0, p0, Lmzk;->b:Lffm;

    invoke-static {}, Lmzk;->c()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lffm;->a(Ljava/util/Properties;)V

    .line 30
    return-void
.end method

.method public static c()Ljava/util/Properties;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 52
    const-string v1, "Configuration-key"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    return-object v0
.end method


# virtual methods
.method public a()Lmzl;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lmzk;->b:Lffm;

    invoke-virtual {v0}, Lffm;->t()Ljava/lang/String;

    move-result-object v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lmzk;->b:Lffm;

    invoke-virtual {v0}, Lffm;->u()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 40
    const-class v2, Lmzl;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmzl;

    .line 42
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmzk;->b:Lffm;

    invoke-virtual {v0}, Lffm;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

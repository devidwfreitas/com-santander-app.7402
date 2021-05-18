.class Lgnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lih;

.field final synthetic b:Lgnp;


# direct methods
.method constructor <init>(Lgnp;Lih;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgnq;->b:Lgnp;

    iput-object p2, p0, Lgnq;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 104
    check-cast p1, Lkkt;

    .line 106
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v0

    invoke-virtual {v0}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lgnq;->b:Lgnp;

    invoke-static {v1, p1, v0}, Lgnp;->a(Lgnp;Lkkt;Ljava/util/Properties;)Lir;

    move-result-object v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lgnq;->b:Lgnp;

    invoke-static {v1}, Lgnp;->a(Lgnp;)Lie;

    move-result-object v1

    new-instance v2, Lgnr;

    invoke-direct {v2, p0}, Lgnr;-><init>(Lgnq;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

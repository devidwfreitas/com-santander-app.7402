.class final Lbhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbia;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lbia;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lbhy;->a:Lbia;

    iput-object p2, p0, Lbhy;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0}, Lbgs;->c()Z

    .line 304
    invoke-static {}, Lbjg;->a()Lbjg;

    move-result-object v0

    invoke-virtual {v0}, Lbjg;->c()Z

    .line 305
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 312
    :cond_0
    iget-object v0, p0, Lbhy;->a:Lbia;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lbhy;->a:Lbia;

    invoke-interface {v0}, Lbia;->a()V

    .line 317
    :cond_1
    iget-object v0, p0, Lbhy;->b:Landroid/content/Context;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lbla;->b()V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lbhy;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

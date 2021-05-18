.class Lmvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lala;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lmva;


# direct methods
.method constructor <init>(Lmva;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmvb;->b:Lmva;

    iput-object p2, p0, Lmvb;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lmvb;->b:Lmva;

    iget-object v1, p0, Lmvb;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lmva;->a(Lmva;Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    instance-of v0, p1, Lalh;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lalh;

    invoke-static {v0}, Lmyn;->a(Lalh;)V

    .line 59
    check-cast p1, Lalh;

    invoke-static {p1}, Lmyn;->b(Lalh;)V

    .line 61
    :cond_0
    return-void
.end method

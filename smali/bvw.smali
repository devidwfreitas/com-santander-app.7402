.class Lbvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lbvv;


# direct methods
.method constructor <init>(Lbvv;Lbhl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbvw;->b:Lbvv;

    iput-object p2, p0, Lbvw;->a:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    .line 125
    iget-object v1, p0, Lbvw;->a:Lbhl;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v0

    invoke-interface {v1, v0}, Lbhl;->a(Lbhp;)V

    .line 129
    :goto_0
    return v2

    .line 128
    :cond_0
    iget-object v0, p0, Lbvw;->a:Lbhl;

    new-instance v1, Lbvx;

    invoke-direct {v1}, Lbvx;-><init>()V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

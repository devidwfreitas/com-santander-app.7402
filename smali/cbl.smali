.class Lcbl;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lcbk;


# direct methods
.method constructor <init>(Lcbk;Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcbl;->b:Lcbk;

    iput-object p3, p0, Lcbl;->a:Lbhl;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {p2}, Lbze;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcbl;->a:Lbhl;

    invoke-interface {v0}, Lbhl;->a()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcbl;->a:Lbhl;

    new-instance v1, Lcbp;

    invoke-direct {v1, p2}, Lcbp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

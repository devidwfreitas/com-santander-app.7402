.class Lcbs;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lcbr;


# direct methods
.method constructor <init>(Lcbr;Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcbs;->b:Lcbr;

    iput-object p3, p0, Lcbs;->a:Lbhl;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcbs;->a:Lbhl;

    new-instance v1, Lcbu;

    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcbu;-><init>(Ljava/lang/String;Lcbs;)V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

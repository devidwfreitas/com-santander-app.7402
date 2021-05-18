.class Lccd;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lccc;


# direct methods
.method constructor <init>(Lccc;Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lccd;->b:Lccc;

    iput-object p3, p0, Lccd;->a:Lbhl;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lccd;->a:Lbhl;

    new-instance v1, Lccf;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lccf;-><init>(Landroid/os/Bundle;Lccd;)V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

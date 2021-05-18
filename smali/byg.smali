.class Lbyg;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lbyf;


# direct methods
.method constructor <init>(Lbyf;Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lbyg;->b:Lbyf;

    iput-object p3, p0, Lbyg;->a:Lbhl;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lbyg;->a:Lbhl;

    new-instance v1, Lbyk;

    invoke-direct {v1, p2}, Lbyk;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lbhl;->a(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.class Lbwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnt;


# instance fields
.field final synthetic a:Lbvy;


# direct methods
.method constructor <init>(Lbvy;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lbwj;->a:Lbvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lbnr;)V
    .locals 1

    .prologue
    .line 525
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lbwj;->a:Lbvy;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lbvy;->a(Lbvy;Ljava/util/ArrayList;Lbnr;)V

    .line 536
    :goto_0
    return-void

    .line 527
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lbwj;->a:Lbvy;

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-static {v0, p1, p2}, Lbvy;->a(Lbvy;Lcom/facebook/share/model/ShareOpenGraphObject;Lbnr;)V

    goto :goto_0

    .line 531
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lbwj;->a:Lbvy;

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-static {v0, p1, p2}, Lbvy;->a(Lbvy;Lcom/facebook/share/model/SharePhoto;Lbnr;)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-interface {p2, p1}, Lbnr;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

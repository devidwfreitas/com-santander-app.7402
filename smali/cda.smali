.class Lcda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnx;


# instance fields
.field final synthetic a:Lbmr;

.field final synthetic b:Lcom/facebook/share/model/ShareContent;

.field final synthetic c:Z

.field final synthetic d:Lccz;


# direct methods
.method constructor <init>(Lccz;Lbmr;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcda;->d:Lccz;

    iput-object p2, p0, Lcda;->a:Lbmr;

    iput-object p3, p0, Lcda;->b:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcda;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcda;->a:Lbmr;

    .line 338
    invoke-virtual {v0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcda;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcda;->c:Z

    .line 337
    invoke-static {v0, v1, v2}, Lbyp;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcda;->a:Lbmr;

    .line 346
    invoke-virtual {v0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcda;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcda;->c:Z

    .line 345
    invoke-static {v0, v1, v2}, Lbwv;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

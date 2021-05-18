.class Lcct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnx;


# instance fields
.field final synthetic a:Lbmr;

.field final synthetic b:Lcom/facebook/share/model/ShareContent;

.field final synthetic c:Z

.field final synthetic d:Lccs;


# direct methods
.method constructor <init>(Lccs;Lbmr;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcct;->d:Lccs;

    iput-object p2, p0, Lcct;->a:Lbmr;

    iput-object p3, p0, Lcct;->b:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcct;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcct;->a:Lbmr;

    .line 222
    invoke-virtual {v0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcct;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcct;->c:Z

    .line 221
    invoke-static {v0, v1, v2}, Lbyp;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcct;->a:Lbmr;

    .line 230
    invoke-virtual {v0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcct;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcct;->c:Z

    .line 229
    invoke-static {v0, v1, v2}, Lbwv;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

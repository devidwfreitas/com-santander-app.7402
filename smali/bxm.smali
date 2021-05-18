.class Lbxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbxl;


# direct methods
.method constructor <init>(Lbxl;)V
    .locals 0

    .prologue
    .line 1680
    iput-object p1, p0, Lbxm;->a:Lbxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lbxm;->a:Lbxl;

    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    iput-object v1, v0, Lbxl;->c:Lcom/facebook/FacebookRequestError;

    .line 1684
    iget-object v0, p0, Lbxm;->a:Lbxl;

    iget-object v0, v0, Lbxl;->c:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lbxm;->a:Lbxl;

    iget-object v1, p0, Lbxm;->a:Lbxl;

    iget-object v1, v1, Lbxl;->c:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v0, v1}, Lbxl;->a(Lcom/facebook/FacebookRequestError;)V

    .line 1689
    :goto_0
    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lbxm;->a:Lbxl;

    invoke-virtual {v0, p1}, Lbxl;->a(Lbix;)V

    goto :goto_0
.end method

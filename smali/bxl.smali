.class abstract Lbxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxz;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lccn;

.field protected c:Lcom/facebook/FacebookRequestError;

.field final synthetic d:Lbww;

.field private e:Lcom/facebook/GraphRequest;


# direct methods
.method protected constructor <init>(Lbww;Ljava/lang/String;Lccn;)V
    .locals 0

    .prologue
    .line 1662
    iput-object p1, p0, Lbxl;->d:Lbww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p2, p0, Lbxl;->a:Ljava/lang/String;

    .line 1664
    iput-object p3, p0, Lbxl;->b:Lccn;

    .line 1665
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/FacebookRequestError;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lbxl;->c:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public a(Lbiu;)V
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lbxl;->e:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lbiu;->a(Lcom/facebook/GraphRequest;)Z

    .line 1669
    return-void
.end method

.method protected abstract a(Lbix;)V
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1694
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1695
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running request for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxl;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbxl;->b:Lccn;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1694
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1700
    return-void
.end method

.method protected a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .prologue
    .line 1676
    iput-object p1, p0, Lbxl;->e:Lcom/facebook/GraphRequest;

    .line 1679
    invoke-static {}, Lbhv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->b(Ljava/lang/String;)V

    .line 1680
    new-instance v0, Lbxm;

    invoke-direct {v0, p0}, Lbxm;-><init>(Lbxl;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Lbim;)V

    .line 1691
    return-void
.end method

.class public Lbrd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lbrf;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lbrd;->g:Lcom/facebook/AccessToken;

    .line 603
    iget-object v0, p0, Lbrd;->g:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 604
    invoke-static {p1}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_1

    .line 606
    iput-object v0, p0, Lbrd;->b:Ljava/lang/String;

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lbrd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 614
    return-void

    .line 608
    :cond_1
    new-instance v0, Lbhp;

    const-string v1, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    if-nez p2, :cond_0

    .line 627
    invoke-static {p1}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 629
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput-object p2, p0, Lbrd;->b:Ljava/lang/String;

    .line 632
    invoke-direct {p0, p1, p3, p4}, Lbrd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 633
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 699
    iput-object p1, p0, Lbrd;->a:Landroid/content/Context;

    .line 700
    iput-object p2, p0, Lbrd;->c:Ljava/lang/String;

    .line 701
    if-eqz p3, :cond_0

    .line 702
    iput-object p3, p0, Lbrd;->f:Landroid/os/Bundle;

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lbrd;->f:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a()Lbqy;
    .locals 6

    .prologue
    .line 664
    iget-object v0, p0, Lbrd;->g:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lbrd;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lbrd;->g:Lcom/facebook/AccessToken;

    .line 667
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lbrd;->f:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lbrd;->g:Lcom/facebook/AccessToken;

    .line 670
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_0
    new-instance v0, Lbqy;

    iget-object v1, p0, Lbrd;->a:Landroid/content/Context;

    iget-object v2, p0, Lbrd;->c:Ljava/lang/String;

    iget-object v3, p0, Lbrd;->f:Landroid/os/Bundle;

    iget v4, p0, Lbrd;->d:I

    iget-object v5, p0, Lbrd;->e:Lbrf;

    invoke-direct/range {v0 .. v5}, Lbqy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILbrf;)V

    return-object v0

    .line 672
    :cond_0
    iget-object v0, p0, Lbrd;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lbrd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)Lbrd;
    .locals 0

    .prologue
    .line 642
    iput p1, p0, Lbrd;->d:I

    .line 643
    return-object p0
.end method

.method public a(Lbrf;)Lbrd;
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lbrd;->e:Lbrf;

    .line 654
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lbrd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lbrd;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lbrd;->d:I

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lbrd;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()Lbrf;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lbrd;->e:Lbrf;

    return-object v0
.end method

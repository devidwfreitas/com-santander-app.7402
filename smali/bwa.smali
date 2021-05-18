.class Lbwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbnr;

.field final synthetic b:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Lbnr;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lbwa;->b:Lbvy;

    iput-object p2, p0, Lbwa;->a:Lbnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 3

    .prologue
    .line 613
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->f()Ljava/lang/String;

    move-result-object v0

    .line 616
    if-nez v0, :cond_0

    .line 617
    const-string v0, "Error staging Open Graph object."

    .line 619
    :cond_0
    iget-object v1, p0, Lbwa;->a:Lbnr;

    new-instance v2, Lbhq;

    invoke-direct {v2, p1, v0}, Lbhq;-><init>(Lbix;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lbnr;->a(Lbhp;)V

    .line 638
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 624
    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Lbwa;->a:Lbnr;

    new-instance v1, Lbhq;

    const-string v2, "Error staging Open Graph object."

    invoke-direct {v1, p1, v2}, Lbhq;-><init>(Lbix;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbnr;->a(Lbhp;)V

    goto :goto_0

    .line 630
    :cond_2
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    if-nez v0, :cond_3

    .line 632
    iget-object v0, p0, Lbwa;->a:Lbnr;

    new-instance v1, Lbhq;

    const-string v2, "Error staging Open Graph object."

    invoke-direct {v1, p1, v2}, Lbhq;-><init>(Lbix;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbnr;->a(Lbhp;)V

    goto :goto_0

    .line 637
    :cond_3
    iget-object v1, p0, Lbwa;->a:Lbnr;

    invoke-interface {v1, v0}, Lbnr;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

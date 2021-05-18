.class Lbwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbns;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbim;

.field final synthetic d:Lbnr;

.field final synthetic e:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Lorg/json/JSONObject;Ljava/lang/String;Lbim;Lbnr;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lbwb;->e:Lbvy;

    iput-object p2, p0, Lbwb;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lbwb;->b:Ljava/lang/String;

    iput-object p4, p0, Lbwb;->c:Lbim;

    iput-object p5, p0, Lbwb;->d:Lbnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 645
    iget-object v0, p0, Lbwb;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 647
    const-string v1, "object"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :try_start_0
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 650
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lbwb;->e:Lbvy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objects/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbwb;->b:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 653
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-static {v2, v4}, Lbvy;->a(Lbvy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lbiz;->POST:Lbiz;

    iget-object v5, p0, Lbwb;->c:Lbim;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 656
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 659
    if-nez v0, :cond_0

    .line 660
    const-string v0, "Error staging Open Graph object."

    .line 662
    :cond_0
    iget-object v1, p0, Lbwb;->d:Lbnr;

    new-instance v2, Lbhp;

    invoke-direct {v2, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lbnr;->a(Lbhp;)V

    goto :goto_0
.end method

.method public a(Lbhp;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lbwb;->d:Lbnr;

    invoke-interface {v0, p1}, Lbnr;->a(Lbhp;)V

    .line 669
    return-void
.end method

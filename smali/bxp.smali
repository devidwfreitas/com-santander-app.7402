.class Lbxp;
.super Lbxl;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field final synthetic i:Lbww;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/String;Lccn;)V
    .locals 4

    .prologue
    .line 1588
    iput-object p1, p0, Lbxp;->i:Lbww;

    .line 1589
    invoke-direct {p0, p1, p2, p3}, Lbxl;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1582
    iget-object v0, p0, Lbxp;->i:Lbww;

    invoke-static {v0}, Lbww;->b(Lbww;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxp;->e:Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lbxp;->i:Lbww;

    invoke-static {v0}, Lbww;->c(Lbww;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxp;->f:Ljava/lang/String;

    .line 1584
    iget-object v0, p0, Lbxp;->i:Lbww;

    invoke-static {v0}, Lbww;->d(Lbww;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxp;->g:Ljava/lang/String;

    .line 1585
    iget-object v0, p0, Lbxp;->i:Lbww;

    .line 1586
    invoke-static {v0}, Lbww;->e(Lbww;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxp;->h:Ljava/lang/String;

    .line 1591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    const-string v1, "fields"

    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1604
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 1603
    invoke-virtual {p0, v1}, Lbxp;->a(Lcom/facebook/GraphRequest;)V

    .line 1608
    return-void
.end method


# virtual methods
.method protected a(Lbix;)V
    .locals 3

    .prologue
    .line 1612
    .line 1613
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "engagement"

    .line 1612
    invoke-static {v0, v1}, Lbqq;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1615
    if-eqz v0, :cond_0

    .line 1617
    const-string v1, "count_string_with_like"

    iget-object v2, p0, Lbxp;->e:Ljava/lang/String;

    .line 1618
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbxp;->e:Ljava/lang/String;

    .line 1622
    const-string v1, "count_string_without_like"

    iget-object v2, p0, Lbxp;->f:Ljava/lang/String;

    .line 1623
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbxp;->f:Ljava/lang/String;

    .line 1627
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lbxp;->g:Ljava/lang/String;

    .line 1628
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbxp;->g:Ljava/lang/String;

    .line 1632
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lbxp;->h:Ljava/lang/String;

    .line 1633
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxp;->h:Ljava/lang/String;

    .line 1637
    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1641
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 1642
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbxp;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbxp;->b:Lccn;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1641
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    iget-object v0, p0, Lbxp;->i:Lbww;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lbww;->a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1648
    return-void
.end method

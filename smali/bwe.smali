.class Lbwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lbpw;

.field final synthetic d:Lbhl;

.field final synthetic e:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Ljava/util/ArrayList;Ljava/util/ArrayList;Lbpw;Lbhl;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lbwe;->e:Lbvy;

    iput-object p2, p0, Lbwe;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lbwe;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lbwe;->c:Lbpw;

    iput-object p5, p0, Lbwe;->d:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lbwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lbwe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    iget-object v1, p0, Lbwe;->c:Lbpw;

    iget-object v0, p0, Lbwe;->c:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbpw;->a:Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lbwe;->c:Lbpw;

    iget-object v0, v0, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lbwe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    iget-object v1, p0, Lbwe;->d:Lbhl;

    const/4 v2, 0x0

    iget-object v0, p0, Lbwe;->b:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbix;

    .line 337
    invoke-static {v1, v2, v0}, Lbze;->a(Lbhl;Ljava/lang/String;Lbix;)V

    .line 349
    :cond_2
    :goto_0
    return-void

    .line 341
    :cond_3
    iget-object v0, p0, Lbwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lbwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lbwe;->d:Lbhl;

    invoke-static {v1, v0, p1}, Lbze;->a(Lbhl;Ljava/lang/String;Lbix;)V

    goto :goto_0
.end method

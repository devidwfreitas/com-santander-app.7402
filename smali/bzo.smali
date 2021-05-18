.class final Lbzo;
.super Lbgz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lbgz;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p2, :cond_2

    .line 270
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :cond_2
    invoke-static {}, Lbzn;->a()V

    goto :goto_0
.end method

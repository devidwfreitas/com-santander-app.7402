.class Lkyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxl;

.field final synthetic b:Lkxl;

.field final synthetic c:Lkyb;


# direct methods
.method constructor <init>(Lkyb;Lkxl;Lkxl;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkyc;->c:Lkyb;

    iput-object p2, p0, Lkyc;->a:Lkxl;

    iput-object p3, p0, Lkyc;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lkwd;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwd;

    .line 53
    iget-object v1, p0, Lkyc;->a:Lkxl;

    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    iget-object v0, p0, Lkyc;->b:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lkyc;->b:Lkxl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkyc;->a(Lis;)V

    return-void
.end method

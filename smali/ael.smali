.class final Lael;
.super Ljava/lang/Object;

# interfaces
.implements Lih;


# instance fields
.field private synthetic a:Laej;

.field private synthetic b:Laei;


# direct methods
.method constructor <init>(Laei;Laej;)V
    .locals 0

    iput-object p1, p0, Lael;->b:Laei;

    iput-object p2, p0, Lael;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lis;)V
    .locals 1

    iget-object v0, p0, Lael;->a:Laej;

    invoke-interface {v0, p1}, Laej;->a(Lis;)V

    return-void
.end method

.method public final onSuccess(Lis;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lael;->b:Laei;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "titles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "title"

    const-class v3, Laeb;

    invoke-virtual {v0, v1, v2, v3}, Laei;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lael;->a:Laej;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "altairMessage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "altairWarning"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "warningCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Laej;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Laei;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lael;->a:Laej;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laej;->a(Lis;)V

    goto :goto_0
.end method

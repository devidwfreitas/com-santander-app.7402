.class final Laek;
.super Ljava/lang/Object;

# interfaces
.implements Lih;


# instance fields
.field private synthetic a:Laeb;

.field private synthetic b:Laeh;

.field private synthetic c:Laeg;


# direct methods
.method constructor <init>(Laeg;Laeb;Laeh;)V
    .locals 0

    iput-object p1, p0, Laek;->c:Laeg;

    iput-object p2, p0, Laek;->a:Laeb;

    iput-object p3, p0, Laek;->b:Laeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lis;)V
    .locals 1

    iget-object v0, p0, Laek;->b:Laeh;

    invoke-interface {v0, p1}, Laeh;->a(Lis;)V

    return-void
.end method

.method public final onSuccess(Lis;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laek;->c:Laeg;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "titleDetail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Laec;

    invoke-virtual {v0, v1, v2}, Laeg;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laec;

    iget-object v1, p0, Laek;->a:Laeb;

    invoke-virtual {v1, v0}, Laeb;->a(Laec;)V

    iget-object v0, p0, Laek;->b:Laeh;

    iget-object v1, p0, Laek;->a:Laeb;

    invoke-interface {v0, v1}, Laeh;->a(Laeb;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Laeg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Laek;->b:Laeh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laeh;->a(Lis;)V

    goto :goto_0
.end method

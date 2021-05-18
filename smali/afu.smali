.class final Lafu;
.super Laer;


# instance fields
.field private synthetic b:Lafh;


# direct methods
.method constructor <init>(Lafh;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lafu;->b:Lafh;

    invoke-direct {p0, p2}, Laer;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "rebootIndicator"

    const-string v2, "S"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lafu;->b:Lafh;

    invoke-static {v0}, Lafh;->d(Lafh;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lafu;->b:Lafh;

    invoke-static {v3}, Lafh;->d(Lafh;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    const-string v3, "paymentType"

    invoke-virtual {v0}, Laeb;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dueDate"

    invoke-virtual {v0}, Laeb;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sequentialNumber"

    invoke-virtual {v0}, Laeb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "documentNumber"

    invoke-static {}, Laea;->a()Laea;

    move-result-object v4

    invoke-virtual {v4}, Laea;->d()Lji;

    move-result-object v4

    invoke-static {}, Laea;->a()Laea;

    move-result-object v5

    invoke-virtual {v5}, Laea;->d()Lji;

    move-result-object v5

    invoke-virtual {v0}, Laeb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "recall"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lafu;->b:Lafh;

    invoke-static {v0, v1}, Lafh;->a(Lafh;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lafh;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

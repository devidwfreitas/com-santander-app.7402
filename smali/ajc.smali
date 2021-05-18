.class public Lajc;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    sget-object v1, Lim;->GET:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p4}, Lir;->a(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    sget-object v1, Lim;->PUT:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p4}, Lir;->a(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lajc;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lajc;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p1
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lajc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lajc;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Laja;->b()Laja;

    move-result-object v2

    invoke-virtual {v2}, Laja;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

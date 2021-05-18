.class final Lnjv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lnjr;


# direct methods
.method constructor <init>(Lnhp;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lnjx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "?request="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "tealium://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnjv;->a:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lnjv;->a:Ljava/lang/String;

    invoke-static {v2}, Lnjq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The command id provided by the request is not a valid command id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v2, "tealium://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnjv;->a:Ljava/lang/String;

    const-string v2, "?request="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lnjv;->a:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lnjv;->a(Lnhp;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lnjr;

    move-result-object v0

    iput-object v0, p0, Lnjv;->b:Lnjr;

    return-void

    :cond_4
    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_2
    const-string v2, "payload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :cond_5
    const-string v3, "response_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method static a(Lnhp;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lnjr;
    .locals 1

    new-instance v0, Lnjw;

    invoke-direct {v0, p1, p2, p3, p0}, Lnjw;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lnhp;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnjv;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Lnjr;
    .locals 1

    iget-object v0, p0, Lnjv;->b:Lnjr;

    return-object v0
.end method

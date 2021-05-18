.class public final Lnhd;
.super Ljava/lang/Object;

# interfaces
.implements Lnje;


# instance fields
.field private final a:Lnhp;

.field private final b:Ljava/lang/String;

.field private final c:Lnhc;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnkj;Lnhp;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnhd;->a:Lnhp;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lnhd;->c:Lnhc;

    iput-object p3, p0, Lnhd;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lnkj;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnkj;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnkj;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnhd;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnkj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnkj;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnhd;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "https://datacloud.tealiumiq.com/%s/%s/8/i.gif?data="

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lnkj;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lnkj;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnhd;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lnil;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lnil;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cp.utag_main_v_id"

    iget-object v2, p0, Lnhd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnhd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lnil;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lnhd;->b(Lnil;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnhd;->a:Lnhp;

    invoke-static {v0}, Lnii;->b(Ljava/lang/String;)Lnii;

    move-result-object v0

    invoke-virtual {v0}, Lnii;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lnhp;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lnhd;->c:Lnhc;

    invoke-virtual {v1, v0}, Lnhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

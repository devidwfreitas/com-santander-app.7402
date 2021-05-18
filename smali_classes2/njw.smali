.class final Lnjw;
.super Lnjr;


# instance fields
.field final synthetic c:Lnhp;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lnhp;)V
    .locals 0

    iput-object p4, p0, Lnjw;->c:Lnhp;

    invoke-direct {p0, p1, p2, p3}, Lnjr;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lnjr;->g()V

    invoke-virtual {p0}, Lnjw;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnjw;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "try {\tutag.mobile.remote_api.response[\"%s\"][\"%s\"](%d);} catch(err) {\tconsole.error(err);};"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnjw;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lnjw;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lnjw;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnjw;->c:Lnhp;

    new-instance v2, Lnia;

    invoke-direct {v2, v0}, Lnia;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lnhp;->a(Lnib;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "try {\tutag.mobile.remote_api.response[\"%s\"][\"%s\"](%d, %s);} catch(err) {\tconsole.error(err);};"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnjw;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lnjw;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lnjw;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lnjw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

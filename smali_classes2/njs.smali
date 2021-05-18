.class final Lnjs;
.super Lnjq;


# instance fields
.field private final a:Lnhp;


# direct methods
.method constructor <init>(Lnhp;)V
    .locals 2

    const-string v0, "_config"

    const-string v1, "Java callback for mobile.html information."

    invoke-direct {p0, v0, v1}, Lnjq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lnjs;->a:Lnhp;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lnjr;)V
    .locals 4

    invoke-virtual {p1}, Lnjr;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trace_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnjs;->a:Lnhp;

    new-instance v2, Lnif;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lnif;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Lnhp;->b(Lnib;)V

    :cond_0
    invoke-virtual {p1}, Lnjr;->g()V

    return-void
.end method

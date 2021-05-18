.class public Laei;
.super Laef;


# static fields
.field private static final a:Ljava/lang/String; = "authorized-direct-debit/v1/title-list"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laef;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Laej;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ladz;->b()Ladz;

    move-result-object v0

    invoke-virtual {v0}, Ladz;->a()Lje;

    move-result-object v0

    const-string v1, "authorized-direct-debit/v1/title-list"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Laei;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lir;

    move-result-object v1

    new-instance v2, Lael;

    invoke-direct {v2, p0, p2}, Lael;-><init>(Laei;Laej;)V

    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Laej;->a(Lis;)V

    goto :goto_0
.end method

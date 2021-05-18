.class public final Lbqn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "method_results"

.field public static final B:Ljava/lang/String; = "version"

.field public static final C:Ljava/lang/String; = "touch"

.field public static final D:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Ljava/lang/String; = "CONNECTION_FAILURE"

.field private static final G:Ljava/lang/String;

.field private static final H:Ljava/lang/String; = "m.%s"

.field private static final I:Ljava/lang/String; = "https://graph-video.%s"

.field private static final J:Ljava/lang/String; = "https://graph.%s"

.field private static final K:Ljava/lang/String; = "v2.9"

.field public static final a:Ljava/lang/String; = "dialog/"

.field public static final b:Ljava/lang/String; = "access_token"

.field public static final c:Ljava/lang/String; = "app_id"

.field public static final d:Ljava/lang/String; = "auth_type"

.field public static final e:Ljava/lang/String; = "client_id"

.field public static final f:Ljava/lang/String; = "display"

.field public static final g:Ljava/lang/String; = "touch"

.field public static final h:Ljava/lang/String; = "e2e"

.field public static final i:Ljava/lang/String; = "legacy_override"

.field public static final j:Ljava/lang/String; = "redirect_uri"

.field public static final k:Ljava/lang/String; = "response_type"

.field public static final l:Ljava/lang/String; = "return_scopes"

.field public static final m:Ljava/lang/String; = "scope"

.field public static final n:Ljava/lang/String; = "sso"

.field public static final o:Ljava/lang/String; = "default_audience"

.field public static final p:Ljava/lang/String; = "sdk"

.field public static final q:Ljava/lang/String; = "state"

.field public static final r:Ljava/lang/String; = "rerequest"

.field public static final s:Ljava/lang/String; = "token,signed_request"

.field public static final t:Ljava/lang/String; = "true"

.field public static final u:Ljava/lang/String; = "fbconnect://success"

.field public static final v:Ljava/lang/String; = "fbconnect://cancel"

.field public static final w:Ljava/lang/String; = "app_id"

.field public static final x:Ljava/lang/String; = "bridge_args"

.field public static final y:Ljava/lang/String; = "android_key_hash"

.field public static final z:Ljava/lang/String; = "method_args"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lbqn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbqn;->G:Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "service_disabled"

    aput-object v1, v0, v2

    const-string v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    .line 82
    invoke-static {v0}, Lbqq;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lbqn;->D:Ljava/util/Collection;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "access_denied"

    aput-object v1, v0, v2

    const-string v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    .line 84
    invoke-static {v0}, Lbqq;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lbqn;->E:Ljava/util/Collection;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lbhv;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 114
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v3, "android_key_hash"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "app_id"

    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "version"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v3, "action_id"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 127
    :cond_2
    :try_start_0
    invoke-static {v2}, Lbna;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    invoke-static {p2}, Lbna;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 134
    const-string v4, "bridge_args"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "method_args"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 142
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    sget-object v2, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    const/4 v3, 0x6

    sget-object v4, Lbqn;->G:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating Url -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lbpu;->a(Lbjb;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "m.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lbhv;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string v0, "https://graph.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lbhv;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    const-string v0, "https://graph-video.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lbhv;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "v2.9"

    return-object v0
.end method

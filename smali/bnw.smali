.class public Lbnw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    invoke-static {p0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    const-string v2, "fb_dialog_outcome"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 272
    return-void
.end method

.method public static a(Lbmr;)V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lbhp;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {p0, v0}, Lbnw;->a(Lbmr;Lbhp;)V

    .line 46
    return-void
.end method

.method public static a(Lbmr;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lbmr;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lbmr;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    invoke-virtual {p0}, Lbmr;->e()Z

    .line 62
    return-void
.end method

.method public static a(Lbmr;Landroid/os/Bundle;Lbnv;)V
    .locals 5

    .prologue
    .line 130
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->f(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->a(Landroid/content/Context;)V

    .line 133
    invoke-interface {p2}, Lbnv;->name()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p2}, Lbnw;->d(Lbnv;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lbhp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    invoke-static {}, Lbqa;->a()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2, v0, p1}, Lbqn;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lbhp;

    const-string v1, "Unable to fetch the app\'s key-hash"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-static {}, Lbqn;->a()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v2, v1, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "is_fallback"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    invoke-virtual {p0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-interface {p2}, Lbnv;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {}, Lbqa;->a()I

    move-result v4

    .line 169
    invoke-static {v0, v2, v3, v4, v1}, Lbqa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 175
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    const-string v1, "FacebookDialogFragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lbmr;->a(Landroid/content/Intent;)V

    .line 179
    return-void

    .line 159
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v2, v1, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lbmr;Lbhp;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1}, Lbnw;->b(Lbmr;Lbhp;)V

    .line 51
    return-void
.end method

.method public static a(Lbmr;Lbnx;Lbnv;)V
    .locals 5

    .prologue
    .line 185
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 186
    invoke-interface {p2}, Lbnv;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {p2}, Lbnw;->c(Lbnv;)Lbqg;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lbqg;->c()I

    move-result v0

    .line 190
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 191
    new-instance v0, Lbhp;

    const-string v1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {v0}, Lbqa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-interface {p1}, Lbnx;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    :goto_0
    if-nez v0, :cond_1

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {v1, v4, v2, v3, v0}, Lbqa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbqg;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    if-nez v0, :cond_3

    .line 215
    new-instance v0, Lbhp;

    const-string v1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    invoke-interface {p1}, Lbnx;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p0, v0}, Lbmr;->a(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public static a(Lbmr;Lbpa;)V
    .locals 2

    .prologue
    .line 65
    .line 66
    invoke-virtual {p0}, Lbmr;->b()Landroid/content/Intent;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lbmr;->d()I

    move-result v1

    .line 65
    invoke-virtual {p1, v0, v1}, Lbpa;->a(Landroid/content/Intent;I)V

    .line 69
    invoke-virtual {p0}, Lbmr;->e()Z

    .line 70
    return-void
.end method

.method public static a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->f(Landroid/content/Context;)V

    .line 107
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->a(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    invoke-virtual {p0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {}, Lbqa;->a()I

    move-result v3

    .line 114
    invoke-static {v1, v2, p1, v3, v0}, Lbqa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    const-string v0, "FacebookDialogFragment"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v1}, Lbmr;->a(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public static a(Lbnv;)Z
    .locals 2

    .prologue
    .line 74
    invoke-static {p0}, Lbnw;->c(Lbnv;)Lbqg;

    move-result-object v0

    invoke-virtual {v0}, Lbqg;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lbnv;)[I
    .locals 3

    .prologue
    .line 255
    .line 256
    invoke-interface {p2}, Lbnv;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lboj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbok;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lbok;->d()[I

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p2}, Lbnv;->getMinVersion()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static b(Lbmr;Lbhp;)V
    .locals 5

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->f(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    sget-object v1, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lbqa;->a()I

    move-result v3

    .line 97
    invoke-static {p1}, Lbqa;->a(Lbhp;)Landroid/os/Bundle;

    move-result-object v4

    .line 92
    invoke-static {v0, v1, v2, v3, v4}, Lbqa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, v0}, Lbmr;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Lbnv;)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lbnw;->d(Lbnv;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lbnv;)Lbqg;
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p0}, Lbnv;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1, p0}, Lbnw;->a(Ljava/lang/String;Ljava/lang/String;Lbnv;)[I

    move-result-object v0

    .line 244
    invoke-static {v1, v0}, Lbqa;->a(Ljava/lang/String;[I)Lbqg;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lbnv;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 224
    invoke-interface {p0}, Lbnv;->name()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-interface {p0}, Lbnv;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v2, v1, v0}, Lboj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbok;

    move-result-object v1

    .line 230
    const/4 v0, 0x0

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Lbok;->c()Landroid/net/Uri;

    move-result-object v0

    .line 235
    :cond_0
    return-object v0
.end method

.class public Lbzz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v1, "to"

    .line 230
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->a()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "link"

    .line 235
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->b()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "picture"

    .line 240
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->f()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "source"

    .line 245
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->g()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "name"

    .line 250
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->c()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "caption"

    .line 255
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->d()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "description"

    .line 260
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent;->e()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v1, "name"

    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->a()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "description"

    .line 59
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->b()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent;->c()Lcac;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    const-string v2, "privacy"

    .line 67
    invoke-virtual {v1}, Lcac;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v2, v1}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "message"

    .line 79
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->a()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "to"

    .line 83
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->c()Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 84
    const-string v1, "title"

    .line 87
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->d()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "data"

    .line 91
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->e()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->f()Lcai;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "action_type"

    .line 96
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->f()Lcai;

    move-result-object v2

    invoke-virtual {v2}, Lcai;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    const-string v1, "object_id"

    .line 101
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->g()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->h()Lcak;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "filters"

    .line 106
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->h()Lcak;

    move-result-object v2

    invoke-virtual {v2}, Lcak;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v1, "suggestions"

    .line 111
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->i()Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 112
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->l()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    const-string v2, "hashtag"

    .line 180
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareHashtag;->a()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v2, v1}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lbzz;->a(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    const-string v1, "href"

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->h()Landroid/net/Uri;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const-string v1, "quote"

    .line 125
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->d()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 131
    invoke-static {p0}, Lbzz;->a(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    const-string v1, "action_type"

    .line 136
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction;->a()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-static {p0}, Lbze;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbze;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    const-string v2, "action_properties"

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v2, v1}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lbhp;

    const-string v2, "Unable to serialize the ShareOpenGraphContent to JSON"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 155
    invoke-static {p0}, Lbzz;->a(Lcom/facebook/share/model/ShareContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcaa;

    invoke-direct {v3}, Lcaa;-><init>()V

    .line 158
    invoke-static {v2, v3}, Lbqq;->a(Ljava/util/List;Lbqu;)Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 167
    const-string v2, "media"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method public static b(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v1, "name"

    .line 192
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->b()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "description"

    .line 197
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->a()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "link"

    .line 202
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lbqq;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "picture"

    .line 207
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lbqq;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "quote"

    .line 212
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->d()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->l()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    const-string v1, "hashtag"

    .line 219
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->l()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareHashtag;->a()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-object v0
.end method

.class public Lbok;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "\\|"

.field private static final b:Ljava/lang/String; = "name"

.field private static final c:Ljava/lang/String; = "versions"

.field private static final d:Ljava/lang/String; = "url"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lbok;->e:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lbok;->f:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lbok;->g:Landroid/net/Uri;

    .line 199
    iput-object p4, p0, Lbok;->h:[I

    .line 200
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lbok;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 121
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 135
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 136
    invoke-static {v2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 146
    :cond_2
    const-string v1, "versions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lbok;->a(Lorg/json/JSONArray;)[I

    move-result-object v4

    .line 150
    new-instance v1, Lbok;

    invoke-direct {v1, v2, v3, v0, v4}, Lbok;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)[I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 158
    const/4 v0, 0x0

    .line 159
    if-eqz p0, :cond_2

    .line 160
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 161
    new-array v2, v4, [I

    .line 162
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 164
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 165
    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :cond_0
    :goto_1
    aput v0, v2, v3

    .line 162
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v5, "FacebookSDK"

    invoke-static {v5, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 174
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 183
    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lbok;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lbok;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lbok;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public d()[I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lbok;->h:[I

    return-object v0
.end method

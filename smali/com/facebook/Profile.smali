.class public final Lcom/facebook/Profile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "id"

.field private static final b:Ljava/lang/String; = "first_name"

.field private static final c:Ljava/lang/String; = "middle_name"

.field private static final d:Ljava/lang/String; = "last_name"

.field private static final e:Ljava/lang/String; = "name"

.field private static final f:Ljava/lang/String; = "link_uri"


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lbje;

    invoke-direct {v0}, Lbje;-><init>()V

    sput-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    .line 283
    return-void

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lbjd;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "id"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    .line 267
    const-string v1, "first_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    .line 268
    const-string v1, "middle_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    .line 269
    const-string v1, "last_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    .line 270
    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    .line 271
    const-string v1, "link_uri"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    .line 273
    return-void

    .line 272
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/facebook/Profile;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lbjg;->a()Lbjg;

    move-result-object v0

    invoke-virtual {v0}, Lbjg;->b()Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/Profile;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lbjg;->a()Lbjg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbjg;->a(Lcom/facebook/Profile;)V

    .line 71
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 110
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbjd;

    invoke-direct {v1}, Lbjd;-><init>()V

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;Lbqt;)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lbpi;->a(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    if-ne p0, p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    instance-of v2, p1, Lcom/facebook/Profile;

    if-nez v2, :cond_2

    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :cond_2
    check-cast p1, Lcom/facebook/Profile;

    .line 216
    iget-object v2, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/facebook/Profile;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->h:Ljava/lang/String;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/facebook/Profile;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->i:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/facebook/Profile;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->j:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/facebook/Profile;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/Profile;->k:Ljava/lang/String;

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    iget-object v1, p1, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    .line 221
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    .line 228
    iget-object v0, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 229
    iget-object v1, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 236
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 239
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_4
    return v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v1, "first_name"

    iget-object v2, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "middle_name"

    iget-object v2, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "last_name"

    iget-object v2, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    iget-object v1, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "link_uri"

    iget-object v2, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/Profile;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/facebook/Profile;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/facebook/Profile;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/Profile;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/Profile;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/facebook/Profile;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

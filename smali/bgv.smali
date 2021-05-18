.class Lbgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbgx;

.field final synthetic b:Lbgs;


# direct methods
.method constructor <init>(Lbgs;Lbgx;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lbgv;->b:Lbgs;

    iput-object p2, p0, Lbgv;->a:Lbgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lbgv;->a:Lbgx;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbgx;->a:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lbgv;->a:Lbgx;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lbgx;->b:I

    goto :goto_0
.end method

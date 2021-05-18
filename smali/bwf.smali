.class Lbwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Lbhl;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lbwf;->b:Lbvy;

    iput-object p2, p0, Lbwf;->a:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lbwf;->a:Lbhl;

    invoke-static {v1, v0, p1}, Lbze;->a(Lbhl;Ljava/lang/String;Lbix;)V

    .line 401
    return-void

    .line 399
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

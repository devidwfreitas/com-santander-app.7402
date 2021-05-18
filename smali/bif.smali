.class public final Lbif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbin;


# direct methods
.method public constructor <init>(Lbin;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbif;->a:Lbin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lbif;->a:Lbin;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 354
    :goto_0
    iget-object v1, p0, Lbif;->a:Lbin;

    invoke-interface {v1, v0, p1}, Lbin;->a(Lorg/json/JSONArray;Lbix;)V

    .line 356
    :cond_0
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

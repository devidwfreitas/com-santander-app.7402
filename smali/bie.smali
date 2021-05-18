.class public final Lbie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbio;


# direct methods
.method public constructor <init>(Lbio;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lbie;->a:Lbio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lbie;->a:Lbio;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lbie;->a:Lbio;

    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lbio;->a(Lorg/json/JSONObject;Lbix;)V

    .line 306
    :cond_0
    return-void
.end method

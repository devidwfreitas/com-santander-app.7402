.class final Lbqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbqt;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbqt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lbqr;->a:Lbqt;

    iput-object p2, p0, Lbqr;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lbqr;->a:Lbqt;

    invoke-virtual {p1}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->n()Lbhp;

    move-result-object v1

    invoke-interface {v0, v1}, Lbqt;->a(Lbhp;)V

    .line 980
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Lbqr;->b:Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 975
    invoke-static {v0, v1}, Lbqm;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 978
    iget-object v0, p0, Lbqr;->a:Lbqt;

    invoke-virtual {p1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lbqt;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

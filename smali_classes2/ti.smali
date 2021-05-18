.class Lti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ltq;

.field final synthetic b:Lth;


# direct methods
.method constructor <init>(Lth;Ltq;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lti;->b:Lth;

    iput-object p2, p0, Lti;->a:Ltq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lti;->b:Lth;

    iget-object v0, v0, Lth;->b:Ltj;

    iget-object v1, p0, Lti;->a:Ltq;

    invoke-interface {v0, v1}, Ltj;->a(Labv;)V

    .line 148
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lti;->a:Ltq;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lsz;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsz;

    invoke-virtual {v1, v0}, Ltq;->a(Lsz;)V

    .line 141
    iget-object v0, p0, Lti;->b:Lth;

    iget-object v0, v0, Lth;->b:Ltj;

    iget-object v1, p0, Lti;->a:Ltq;

    invoke-interface {v0, v1}, Ltj;->a(Labv;)V

    .line 142
    return-void
.end method

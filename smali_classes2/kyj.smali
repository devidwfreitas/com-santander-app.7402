.class Lkyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxl;

.field final synthetic b:Lkxl;

.field final synthetic c:Lkyf;


# direct methods
.method constructor <init>(Lkyf;Lkxl;Lkxl;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lkyj;->c:Lkyf;

    iput-object p2, p0, Lkyj;->a:Lkxl;

    iput-object p3, p0, Lkyj;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lkyj;->a:Lkxl;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lkqj;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lkyj;->b:Lkxl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkyj;->a(Lis;)V

    return-void
.end method

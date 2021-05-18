.class Lipv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lipu;


# direct methods
.method constructor <init>(Lipu;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lipv;->a:Lipu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    check-cast p1, Lis;

    .line 111
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 113
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lige;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lige;

    .line 115
    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lipv;->a:Lipu;

    invoke-static {v1}, Lipu;->a(Lipu;)Lipt;

    move-result-object v1

    invoke-interface {v1, v0}, Lipt;->a(Lige;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lipv;->a:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0}, Lipt;->a()V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lipv;->a:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0}, Lipt;->a()V

    goto :goto_0
.end method

.class Ligp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ligo;


# direct methods
.method constructor <init>(Ligo;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ligp;->a:Ligo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 55
    check-cast p1, Lis;

    .line 56
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Ligp;->a:Ligo;

    invoke-static {v0}, Ligo;->a(Ligo;)Lign;

    move-result-object v0

    invoke-interface {v0}, Lign;->a()V

    .line 66
    :goto_0
    iget-object v0, p0, Ligp;->a:Ligo;

    invoke-static {v0}, Ligo;->b(Ligo;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ligh;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligh;

    .line 61
    iget-object v1, p0, Ligp;->a:Ligo;

    invoke-static {v1}, Ligo;->a(Ligo;)Lign;

    move-result-object v1

    invoke-virtual {v0}, Ligh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lign;->a(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Ligp;->a:Ligo;

    invoke-static {v0}, Ligo;->a(Ligo;)Lign;

    move-result-object v0

    invoke-interface {v0}, Lign;->a()V

    goto :goto_0
.end method

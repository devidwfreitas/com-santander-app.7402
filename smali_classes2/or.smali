.class Lor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lot;

.field final synthetic b:Loo;


# direct methods
.method constructor <init>(Loo;Lot;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lor;->b:Loo;

    iput-object p2, p0, Lor;->a:Lot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lor;->a:Lot;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lot;->a(Laby;)V

    .line 151
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 5

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lor;->a:Lot;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lov;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labv;

    invoke-interface {v1, v0}, Lot;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    iget-object v0, p0, Lor;->a:Lot;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lor;->b:Loo;

    invoke-static {v3}, Loo;->a(Loo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lot;->a(Laby;)V

    goto :goto_0
.end method

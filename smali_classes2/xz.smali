.class Lxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lya;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lxy;


# direct methods
.method constructor <init>(Lxy;Lya;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lxz;->c:Lxy;

    iput-object p2, p0, Lxz;->a:Lya;

    iput-object p3, p0, Lxz;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lxz;->a:Lya;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lya;->a(Laby;)V

    .line 66
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 5

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lxz;->a:Lya;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lxx;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labv;

    invoke-interface {v1, v0}, Lya;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    iget-object v0, p0, Lxz;->a:Lya;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lxz;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lya;->a(Laby;)V

    goto :goto_0
.end method

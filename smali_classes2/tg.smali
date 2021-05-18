.class Ltg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ltj;

.field final synthetic b:Lte;


# direct methods
.method constructor <init>(Lte;Ltj;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ltg;->b:Lte;

    iput-object p2, p0, Ltg;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Ltg;->a:Ltj;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ltj;->a(Laby;)V

    .line 110
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 6

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltm;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;

    .line 99
    invoke-virtual {v0}, Ltm;->g()V

    .line 100
    iget-object v1, p0, Ltg;->a:Ltj;

    invoke-interface {v1, v0}, Ltj;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Ltg;->a:Ltj;

    new-instance v2, Laby;

    const-string v3, "-1"

    iget-object v4, p0, Ltg;->b:Lte;

    invoke-static {v4}, Lte;->a(Lte;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Llg;->error_generic:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ltj;->a(Laby;)V

    goto :goto_0
.end method

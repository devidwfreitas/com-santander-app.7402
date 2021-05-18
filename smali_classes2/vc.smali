.class Lvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lvd;

.field final synthetic b:Lvb;


# direct methods
.method constructor <init>(Lvb;Lvd;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lvc;->b:Lvb;

    iput-object p2, p0, Lvc;->a:Lvd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lvc;->a:Lvd;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lvd;->a(Laby;)V

    .line 59
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 5

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lvc;->a:Lvd;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lva;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labv;

    invoke-interface {v1, v0}, Lvd;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v0, p0, Lvc;->a:Lvd;

    new-instance v1, Laby;

    const/4 v2, -0x1

    iget-object v3, p0, Lvc;->b:Lvb;

    invoke-static {v3}, Lvb;->a(Lvb;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lvd;->a(Laby;)V

    goto :goto_0
.end method

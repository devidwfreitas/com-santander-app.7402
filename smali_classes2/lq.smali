.class Llq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Llt;

.field final synthetic b:Llo;


# direct methods
.method constructor <init>(Llo;Llt;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Llq;->b:Llo;

    iput-object p2, p0, Llq;->a:Llt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Llq;->a:Llt;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Llt;->a(Laby;)V

    .line 134
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Llk;

    .line 118
    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llk;

    .line 121
    invoke-virtual {v0}, Llk;->g()V

    .line 122
    iget-object v1, p0, Llq;->a:Llt;

    invoke-interface {v1, v0}, Llt;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v0, p0, Llq;->a:Llt;

    new-instance v1, Laby;

    .line 126
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Llq;->b:Llo;

    .line 127
    invoke-static {v3}, Llo;->b(Llo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    .line 125
    invoke-interface {v0, v1}, Llt;->a(Laby;)V

    goto :goto_0
.end method

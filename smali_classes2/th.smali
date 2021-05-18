.class Lth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ltj;

.field final synthetic c:Lte;


# direct methods
.method constructor <init>(Lte;Ljava/lang/String;Ltj;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lth;->c:Lte;

    iput-object p2, p0, Lth;->a:Ljava/lang/String;

    iput-object p3, p0, Lth;->b:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lth;->b:Ltj;

    new-instance v1, Laby;

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ltj;->a(Laby;)V

    .line 164
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltq;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    new-instance v3, Ltd;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ltd;-><init>(I)V

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    iget-object v3, p0, Lth;->c:Lte;

    iget-object v4, p0, Lth;->a:Ljava/lang/String;

    iget-object v5, p0, Lth;->c:Lte;

    invoke-static {v5}, Lte;->b(Lte;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lte;->a(Lte;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v3, Lti;

    invoke-direct {v3, p0, v0}, Lti;-><init>(Lth;Ltq;)V

    invoke-virtual {v2, v1, v3}, Lje;->a(Liq;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 152
    :try_start_2
    iget-object v1, p0, Lth;->b:Ltj;

    invoke-interface {v1, v0}, Ltj;->a(Labv;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    iget-object v0, p0, Lth;->b:Ltj;

    new-instance v1, Laby;

    const/4 v2, -0x1

    iget-object v3, p0, Lth;->c:Lte;

    invoke-static {v3}, Lte;->a(Lte;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ltj;->a(Laby;)V

    goto :goto_0
.end method

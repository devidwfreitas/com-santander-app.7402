.class final Lafq;
.super Ljava/lang/Object;

# interfaces
.implements Laej;


# instance fields
.field final synthetic a:Lafh;

.field private synthetic b:Landroid/app/Dialog;

.field private synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lafh;Landroid/app/Dialog;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lafq;->a:Lafh;

    iput-object p2, p0, Lafq;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lafq;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lis;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "altairMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "altairError"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TYE0091"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-class v2, Ladh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lis;)V
    .locals 4

    iget-object v0, p0, Lafq;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lafq;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Lafq;->b(Lis;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "titleError"

    iget-object v2, p0, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->msg_sem_dda_1:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "subtitleError"

    iget-object v2, p0, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->msg_sem_dda_2:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->erro_retorno_service:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladh;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Ladh;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->erro_retorno_service:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladh;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lafq;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/ddav1/view/DDAErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "titleError"

    iget-object v2, p0, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->msg_sem_boleto:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lafq;->a:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->b(Lafh;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lafq;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0, p2}, Lafh;->a(Lafh;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->c(Lafh;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->f(Lafh;)Laer;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v0}, Laeb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TYA0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Laer;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v0}, Laeb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->d(Lafh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->e(Lafh;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v2, Lafr;

    invoke-direct {v2, p0}, Lafr;-><init>(Lafq;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

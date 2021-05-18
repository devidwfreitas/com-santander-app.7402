.class final Lahi;
.super Ljava/lang/Object;

# interfaces
.implements Laha;


# instance fields
.field private synthetic a:Lahe;


# direct methods
.method constructor <init>(Lahe;)V
    .locals 0

    iput-object p1, p0, Lahi;->a:Lahe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lis;)V
    .locals 4

    iget-object v0, p0, Lahi;->a:Lahe;

    invoke-static {v0}, Lahe;->c(Lahe;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lahi;->a:Lahe;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    const-string v3, "categories"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lajg;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg;

    invoke-static {v1, v0}, Lahe;->a(Lahe;Lajg;)Lajg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lahi;->a:Lahe;

    iget-object v1, p0, Lahi;->a:Lahe;

    invoke-static {v1}, Lahe;->a(Lahe;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-static {v0, v1}, Lahe;->a(Lahe;Landroid/support/v4/view/ViewPager;)V

    return-void

    :catch_0
    move-exception v0

    const-class v1, Lahe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Lis;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lahi;->a:Lahe;

    invoke-static {v0}, Lahe;->c(Lahe;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-class v0, Lahe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lahi;->a:Lahe;

    invoke-static {v0}, Lahe;->b(Lahe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lagg;->servico_indisponivel:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lahi;->a:Lahe;

    invoke-static {v1}, Lahe;->d(Lahe;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    iget-object v1, p0, Lahi;->a:Lahe;

    invoke-static {v1}, Lahe;->e(Lahe;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

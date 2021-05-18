.class final Laiu;
.super Ljava/lang/Object;

# interfaces
.implements Lain;


# instance fields
.field private synthetic a:Lait;


# direct methods
.method constructor <init>(Lait;)V
    .locals 0

    iput-object p1, p0, Laiu;->a:Lait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lis;)V
    .locals 4

    iget-object v0, p0, Laiu;->a:Lait;

    invoke-static {v0}, Lait;->a(Lait;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Laiu;->a:Lait;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lajv;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    invoke-static {v1, v0}, Lait;->a(Lait;Lajv;)Lajv;

    iget-object v0, p0, Laiu;->a:Lait;

    invoke-virtual {v0}, Lait;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lahe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Laiu;->a:Lait;

    invoke-virtual {v0}, Lait;->b()V

    goto :goto_0
.end method

.method public final b(Lis;)V
    .locals 3

    iget-object v0, p0, Laiu;->a:Lait;

    invoke-static {v0}, Lait;->a(Lait;)Landroid/app/Dialog;

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

    iget-object v0, p0, Laiu;->a:Lait;

    invoke-virtual {v0}, Lait;->b()V

    return-void
.end method

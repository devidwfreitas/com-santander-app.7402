.class public Lixu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lixu;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-object v0, p0, Lixu;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    sget-object v1, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v1}, Lnat;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    iget-object v0, p0, Lixu;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    iget-object v1, p0, Lixu;->a:Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)Z

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;ZZ)V

    .line 431
    return-void
.end method

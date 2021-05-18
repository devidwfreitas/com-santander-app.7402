.class public Liyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Liyn;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Liyn;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    sget-object v1, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v1}, Lnat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    sput-boolean v3, Lgyy;->a:Z

    .line 113
    iget-object v0, p0, Liyn;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method

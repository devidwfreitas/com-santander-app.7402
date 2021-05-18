.class Liwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liwm;


# direct methods
.method constructor <init>(Liwm;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Liwo;->a:Liwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "idsHab_MsgN1"

    .line 51
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmwy;->a(Z)V

    .line 53
    iget-object v0, p0, Liwo;->a:Liwm;

    invoke-static {v0}, Liwm;->a(Liwm;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    sget-object v1, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v1}, Lnat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    iget-object v0, p0, Liwo;->a:Liwm;

    invoke-static {v0}, Liwm;->a(Liwm;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liwo;->a:Liwm;

    invoke-static {v2}, Liwm;->a(Liwm;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

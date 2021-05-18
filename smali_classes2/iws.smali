.class Liws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liwq;


# direct methods
.method constructor <init>(Liwq;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Liws;->a:Liwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "idsHab_MsgN1"

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qrPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v1, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->g(Ljava/lang/Boolean;)V

    .line 71
    :cond_0
    iget-object v0, p0, Liws;->a:Liwq;

    invoke-static {v0}, Liwq;->b(Liwq;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liws;->a:Liwq;

    invoke-static {v2}, Liwq;->b(Liwq;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-class v3, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

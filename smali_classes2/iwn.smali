.class Liwn;
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
    .line 35
    iput-object p1, p0, Liwn;->a:Liwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    const-string v0, "idsHab_MsgS1"

    .line 41
    iget-object v0, p0, Liwn;->a:Liwm;

    invoke-static {v0}, Liwm;->a(Liwm;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liwn;->a:Liwm;

    invoke-static {v2}, Liwm;->a(Liwm;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-class v3, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

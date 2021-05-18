.class Liiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liix;


# direct methods
.method constructor <init>(Liix;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Liiz;->a:Liix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liiz;->a:Liix;

    invoke-virtual {v1}, Liix;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Liiz;->a:Liix;

    invoke-virtual {v1, v0}, Liix;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

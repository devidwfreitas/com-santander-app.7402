.class Lijw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijv;


# direct methods
.method constructor <init>(Lijv;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lijw;->a:Lijv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lijw;->a:Lijv;

    invoke-virtual {v1}, Lijv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    iget-object v1, p0, Lijw;->a:Lijv;

    invoke-virtual {v1}, Lijv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

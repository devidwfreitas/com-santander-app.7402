.class Liiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liis;


# direct methods
.method constructor <init>(Liis;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Liiu;->a:Liis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liiu;->a:Liis;

    invoke-virtual {v1}, Liis;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v1, p0, Liiu;->a:Liis;

    invoke-virtual {v1, v0}, Liis;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

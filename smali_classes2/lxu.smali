.class Llxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxr;


# direct methods
.method constructor <init>(Llxr;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Llxu;->a:Llxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llxu;->a:Llxr;

    invoke-static {v1}, Llxr;->b(Llxr;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    iget-object v1, p0, Llxu;->a:Llxr;

    invoke-static {v1}, Llxr;->b(Llxr;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Llxu;->a:Llxr;

    invoke-static {v0}, Llxr;->b(Llxr;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 176
    return-void
.end method

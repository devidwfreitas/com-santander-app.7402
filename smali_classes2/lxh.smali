.class Llxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxc;


# direct methods
.method constructor <init>(Llxc;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Llxh;->a:Llxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Llxh;->a:Llxc;

    invoke-static {v0}, Llxc;->c(Llxc;)V

    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llxh;->a:Llxc;

    invoke-static {v1}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    iget-object v1, p0, Llxh;->a:Llxc;

    const/16 v2, 0x1642

    invoke-virtual {v1, v0, v2}, Llxc;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    return-void
.end method

.class Lfov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfou;

.field private c:I


# direct methods
.method constructor <init>(Lfou;I)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lfov;->b:Lfou;

    iput p2, p0, Lfov;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget v0, p0, Lfov;->a:I

    iput v0, p0, Lfov;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "santander"

    const-string v1, "Onclick item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lfov;->b:Lfou;

    invoke-static {v0}, Lfou;->b(Lfou;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfov;->b:Lfou;

    invoke-static {v2}, Lfou;->a(Lfou;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.class Llxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkwd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llxc;


# direct methods
.method constructor <init>(Llxc;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Llxe;->a:Llxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 191
    check-cast p1, Lkwd;

    invoke-virtual {p0, p1}, Llxe;->a(Lkwd;)V

    return-void
.end method

.method public a(Lkwd;)V
    .locals 3

    .prologue
    const v2, 0x7f090362

    .line 194
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 195
    :cond_0
    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Lkwd;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 198
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-static {}, Llxm;->a()Llxm;

    move-result-object v1

    const-string v2, "success-contestation-frag-tag"

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v1

    invoke-virtual {p1}, Lkwd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lkwd;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-virtual {v0}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 203
    :cond_3
    iget-object v0, p0, Llxe;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    iget-object v1, p0, Llxe;->a:Llxc;

    invoke-virtual {v1}, Llxc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

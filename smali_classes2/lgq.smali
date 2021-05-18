.class public Llgq;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llgq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const v4, 0x7f10089f

    const v3, 0x7f090362

    .line 161
    iget-object v0, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 164
    :try_start_0
    iget-object v0, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    iget-object v0, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_1
    :try_start_1
    iget-object v1, p0, Llgq;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_1
.end method

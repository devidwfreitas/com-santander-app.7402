.class public Llgy;
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
        "Lktp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkud;

.field final synthetic c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;ILkud;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput p2, p0, Llgy;->a:I

    iput-object p3, p0, Llgy;->b:Lkud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 990
    check-cast p1, Lktp;

    invoke-virtual {p0, p1}, Llgy;->a(Lktp;)V

    return-void
.end method

.method public a(Lktp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 993
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)I

    move-result v0

    iget v1, p0, Llgy;->a:I

    if-ne v0, v1, :cond_0

    .line 995
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->h(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 996
    if-eqz p1, :cond_6

    .line 997
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->n(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iget-object v1, p0, Llgy;->b:Lkud;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lkud;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->o(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    .line 1000
    :cond_2
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lktp;)Lktp;

    .line 1001
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->p(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1003
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->q(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_3
    iget-object v0, p0, Llgy;->b:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1007
    iget-object v0, p0, Llgy;->b:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-static {v0}, Lmgt;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1009
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iget-object v1, p0, Llgy;->b:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1011
    :cond_4
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, v3}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Z)V

    goto/16 :goto_0

    .line 1014
    :cond_5
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, v3}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Z)V

    goto/16 :goto_0

    .line 1018
    :cond_6
    iget-object v0, p0, Llgy;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->r(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto/16 :goto_0
.end method
